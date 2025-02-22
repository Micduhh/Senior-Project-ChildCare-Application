﻿using ChildcareApplication.DatabaseController;
using DatabaseController;
using MessageBoxUtils;
using Microsoft.Win32;
using PdfSharp.Pdf;
using System;
using System.Data;
using System.Globalization;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace AdminTools {
    public partial class BusinessReport : Window {
        private DataTable table;
        private bool reportLoaded;
        private ChildcareApplication.Properties.Settings settings;

        public BusinessReport() {
            InitializeComponent();
            InitializeCMB_Year();
            reportLoaded = false;
            settings = new ChildcareApplication.Properties.Settings();
            this.MouseDown += WindowMouseDown;
            this.btn_CurrentMonthReport.ToolTip = GetCurMonthToolTip(DateTime.Now);
        }

        private void InitializeCMB_Year() {
            GregorianCalendar cal = new GregorianCalendar();

            int curYear = cal.GetYear(DateTime.Now);

            ComboBoxItem cmbPrev = new ComboBoxItem();
            ComboBoxItem cmbCur = new ComboBoxItem();

            cmbPrev.Content = curYear - 1;
            cmbCur.Content = curYear;

            cmb_Year.Items.Add(cmbPrev);
            cmb_Year.Items.Add(cmbCur);
        }

        private string GetCurMonthToolTip(DateTime now) {
            int fromMonth, fromYear, fromDay, toMonth, toYear, toDay;

            fromDay = Convert.ToInt32(settings.BillingStartDate);
            toDay = fromDay - 1;

            if (DateTime.Now.Day < fromDay) { //previous month and this month
                if (DateTime.Now.Month != 1) {
                    fromYear = DateTime.Now.Year;
                    fromMonth = DateTime.Now.Month - 1;
                } else {
                    fromYear = DateTime.Now.Year - 1;
                    fromMonth = 12;
                }
                toYear = DateTime.Now.Year;
                toMonth = DateTime.Now.Month;
            } else { //this month and next month
                fromYear = DateTime.Now.Year;
                fromMonth = DateTime.Now.Month;
                if (DateTime.Now.Month != 12) {
                    toYear = DateTime.Now.Year;
                    toMonth = DateTime.Now.Month + 1;
                } else {
                    toYear = DateTime.Now.Year + 1;
                    toMonth = 1;
                }
            }

            return "From " + fromMonth + "/" + fromDay + "/" + fromYear + " to " + toMonth + "/" + toDay + "/" + toYear;
        }

        private void btn_CurrentMonthReport_Click(object sender, RoutedEventArgs e) {
            string fromDate, toDate;
            int fromMonth, fromYear, fromDay, toMonth, toYear, toDay;

            fromDay = Convert.ToInt32(settings.BillingStartDate);
            toDay = fromDay - 1;

            if (DateTime.Now.Day < fromDay) { //previous month and this month
                if (DateTime.Now.Month != 1) {
                    fromYear = DateTime.Now.Year;
                    fromMonth = DateTime.Now.Month - 1;
                } else {
                    fromYear = DateTime.Now.Year - 1;
                    fromMonth = 12;
                }
                toYear = DateTime.Now.Year;
                toMonth = DateTime.Now.Month;
            } else { //this month and next month
                fromYear = DateTime.Now.Year;
                fromMonth = DateTime.Now.Month;
                if (DateTime.Now.Month != 12) {
                    toYear = DateTime.Now.Year;
                    toMonth = DateTime.Now.Month + 1;
                } else {
                    toYear = DateTime.Now.Year + 1;
                    toMonth = 1;
                }
            }

            fromDate = BuildDateString(fromYear, fromMonth, fromDay);
            toDate = BuildDateString(toYear, toMonth, toDay);

            LoadReport(fromDate, toDate);
        }

        private string BuildDateString(int year, int month, int day) {
            String date;

            date = year + "-";

            if (month < 10) {
                date += "0" + month + "-";
            } else {
                date += month + "-";
            }
            if (day < 10) {
                date += "0" + day;
            } else {
                date += day;
            }
            return date;
        }

        private void btn_SpecificMonth_Click(object sender, RoutedEventArgs e) {
            if (cmb_Month.SelectedIndex != -1 && cmb_Year.SelectedIndex != -1) {
                String fromDate, toDate;

                String month = ((ComboBoxItem)cmb_Month.SelectedItem).Content.ToString();
                int year = Convert.ToInt32(((ComboBoxItem)cmb_Year.SelectedItem).Content);

                int monthNum = GetMonthNum(month);
                int fromDay = Convert.ToInt32(settings.BillingStartDate);
                int toDay = fromDay - 1;

                fromDate = BuildDateString(year, monthNum, fromDay);

                if (monthNum != 12) {
                    toDate = BuildDateString(year, monthNum + 1, toDay);
                } else {
                    toDate = BuildDateString(year + 1, 1, toDay);
                }

                LoadReport(fromDate, toDate);
            } else {
                WPFMessageBox.Show("You must select a month and year from the drop down menus.");
            }
        }

        private int GetMonthNum(String month) {
            if (month == "January")
                return 1;
            if (month == "February")
                return 2;
            if (month == "March")
                return 3;
            if (month == "April")
                return 4;
            if (month == "May")
                return 5;
            if (month == "June")
                return 6;
            if (month == "July")
                return 7;
            if (month == "August")
                return 8;
            if (month == "September")
                return 9;
            if (month == "October")
                return 10;
            if (month == "November")
                return 11;
            return 12;
        }

        private void LoadReport(string startDate, string endDate) {
            ReportsDB reportsDB = new ReportsDB();
            DataTable table = reportsDB.GetBusinessReportTable(startDate, endDate);
            DataTable formattedTable = FormatTable(table);
            
            AddTotalsColumn(formattedTable);
            this.table = formattedTable;

            businessDataGrid.ItemsSource = formattedTable.DefaultView;

            this.reportLoaded = true;
        }

        private DataTable FormatTable(DataTable table) {
            bool regReported = false;
            bool campReported = false;
            string oldFamily = "";

            DataTable formattedTable = new DataTable();
            formattedTable.Columns.Add("ID", typeof(string));
            formattedTable.Columns.Add("First Name", typeof(string));
            formattedTable.Columns.Add("Last Name", typeof(string));
            formattedTable.Columns.Add("Event Name", typeof(string));
            formattedTable.Columns.Add("Charges", typeof(string));

            for (int i = 0; i < table.Rows.Count; i++) {
                if(table.Rows[i][0].ToString().Remove(5) != oldFamily) {
                    campReported = false;
                    regReported = false;
                    oldFamily = table.Rows[i][0].ToString().Remove(5);
                }
                if(IsRegular(table.Rows[i][3].ToString()) && !regReported) {
                    regReported = true;
                    formattedTable.Rows.Add(table.Rows[i][0].ToString(),
                                            table.Rows[i][1].ToString(),
                                            table.Rows[i][2].ToString(),
                                            "Regular Childcare",
                                            SumRegularCare(table, oldFamily));
                } else if (table.Rows[i][3].ToString().ToLower().Contains("camp") && !campReported) {
                    campReported = true;
                    formattedTable.Rows.Add(table.Rows[i][0].ToString(),
                                            table.Rows[i][1].ToString(),
                                            table.Rows[i][2].ToString(),
                                            "Camp",
                                            SumCamp(table, oldFamily));
                } else if(IsMisc(table.Rows[i][3].ToString())) {
                    formattedTable.Rows.Add(table.Rows[i][0].ToString(),
                                            table.Rows[i][1].ToString(),
                                            table.Rows[i][2].ToString(),
                                            table.Rows[i][3].ToString(),
                                            table.Rows[i][4].ToString());
                }
            }

            return formattedTable;
        }

        private string SumRegularCare(DataTable table, string familyID) {
            string total = "$";
            double totalNum = 0;

            for (int i = 0; i < table.Rows.Count; i++) {
                if (table.Rows[i][0].ToString().Remove(5) == familyID && IsRegular(table.Rows[i][3].ToString())) {
                    totalNum += Convert.ToDouble(table.Rows[i][4].ToString().Substring(1));
                }
            }
            total += totalNum;
            return total;
        }

        private string SumCamp(DataTable table, string familyID) {
            string total = "$";
            double totalNum = 0;

            for (int i = 0; i < table.Rows.Count; i++) {
                if (table.Rows[i][0].ToString().Remove(5) == familyID && table.Rows[i][3].ToString().ToLower().Contains("camp")) {
                    totalNum += Convert.ToDouble(table.Rows[i][4].ToString().Substring(1));
                }
            }
            total += totalNum;
            return total;
        }

        private void AddTotalsColumn(DataTable table) {
            GuardianInfoDB gDB = new GuardianInfoDB();
            table.Columns.Add("Current Due", typeof(string));
            if (table.Rows.Count > 1) {
                string id = "";
                bool campTotalDisplayed = false;
                bool regTotalDisplayed = false;

                for (int i = 0; i < table.Rows.Count; i++) {
                    if (id != table.Rows[i][0].ToString().Remove(5)) {
                        campTotalDisplayed = false;
                        regTotalDisplayed = false;
                        id = table.Rows[i][0].ToString().Remove(5);
                    }
                    if (IsRegular(table.Rows[i][3].ToString())) {
                        if (!regTotalDisplayed) {
                            table.Rows[i][5] = String.Format("{0:0.00}", gDB.GetCurrentDue(table.Rows[i][0].ToString(), "Regular"));
                            regTotalDisplayed = true;
                        }
                    } else if (table.Rows[i][3].ToString().Contains("Camp") || table.Rows[i][3].ToString().Contains("camp")) {
                        if (!campTotalDisplayed) {
                            campTotalDisplayed = true;
                            table.Rows[i][5] = String.Format("{0:0.00}", gDB.GetCurrentDue(table.Rows[i][0].ToString(), "Camp"));
                        }
                    }
                    if (table.Rows[i][5] == "$0.00") {
                        table.Rows[i][5] = "";
                    }

                }
            }
        }

        private bool IsRegular(string eventName) {
            return (eventName == "Regular Childcare" || eventName == "Infant Childcare" || eventName == "Adolescent Childcare");
        }

        private bool IsMisc(string eventName) {
            return !(IsRegular(eventName) || eventName.ToLower().Contains("camp"));
        }

        private void btn_Exit_Click(object sender, RoutedEventArgs e) {
            this.Close();
        }

        private void btn_Print_Click(object sender, RoutedEventArgs e) { //height = 1056, width = 816
            if (this.reportLoaded && this.table.Rows.Count > 0) {
                PrintDialog printDialog = new PrintDialog();
                printDialog.UserPageRangeEnabled = true;

                if (printDialog.ShowDialog() == true) {
                    var paginator = new ReportsPaginator(this.table.Rows.Count, this.table,
                      new Size(printDialog.PrintableAreaWidth, printDialog.PrintableAreaHeight));

                    printDialog.PrintDocument(paginator, "Business Report Data Table");
                }
            } else {
                WPFMessageBox.Show("You must load a report before you can print one!");
            }
        }

        private void WindowMouseDown(object sender, MouseButtonEventArgs e) {
            if (e.ChangedButton == MouseButton.Left)
                DragMove();
        }

        private void btn_Save_Click(object sender, RoutedEventArgs e) {
            if (this.reportLoaded && this.table.Rows.Count > 0)
            {
                SaveFile();
            }
            else
            {
                WPFMessageBox.Show("You must load a report before you can save one!");
            }
        }

        private void SaveFile()
        {
            string path = Directory.GetCurrentDirectory();

            SaveFileDialog dialog = new SaveFileDialog()
            {
                FileName = "Business Report",
                DefaultExt = ".doc",
            };
            if (dialog.ShowDialog() == true)
            {
                FileStream fs = null;
                string fileName = dialog.FileName;
                try
                {
                    using (StreamWriter writer = new StreamWriter(new FileStream(fileName, FileMode.OpenOrCreate)))
                    {
                        for (int i = 0; i < this.table.Rows.Count; i++)
                        {
                            string resultBuilder = "";
                            DataRow row = this.table.Rows[i];
                            resultBuilder += " First Name: " + row["First Name"]
                            + " Last Name: " + row["Last Name"]
                            + " Event Type: " + row["Event Name"]
                            + " Charges: " + row["Charges"]
                            + " Current Due: " + row["Current Due"];
                            writer.WriteLine("\n" + resultBuilder + "\n");
                        }
                    }
                }
                catch (UnauthorizedAccessException e)
                {
                    var attr = new FileInfo(path).Attributes;

                    if ((attr & FileAttributes.ReadOnly) > 0)
                    {
                        MessageBox.Show("This is read-only");
                    }

                    MessageBox.Show(e.Message);
                }
                finally
                {
                    if (fs != null)
                        fs.Dispose();
                }
            }
            else
            {
                WPFMessageBox.Show("dialog.ShowDialog() == false");
            }
        }

        private void btn_GetCurrentDay_Click(object sender, RoutedEventArgs e) {
            var month = int.Parse(DateTime.Now.Month.ToString());
            var day = int.Parse(DateTime.Now.Day.ToString());
            var year = int.Parse(DateTime.Now.Year.ToString());
            var date = BuildDateString(year, month, day);
            LoadReport(date, date);
        }

        private void btn_GetSpecificDay_Click(object sender, RoutedEventArgs e) {
            //Do something
        }
    }
}
