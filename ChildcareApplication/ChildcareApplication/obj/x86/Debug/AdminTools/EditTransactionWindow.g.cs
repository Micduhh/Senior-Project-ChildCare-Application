﻿#pragma checksum "..\..\..\..\AdminTools\EditTransactionWindow.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "301433D677CC3EBC531BDA68B3629B56"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace AdminTools {
    
    
    /// <summary>
    /// EditTransactionWindow
    /// </summary>
    public partial class EditTransactionWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 11 "..\..\..\..\AdminTools\EditTransactionWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid TransactionDataGrid;
        
        #line default
        #line hidden
        
        
        #line 33 "..\..\..\..\AdminTools\EditTransactionWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_Close;
        
        #line default
        #line hidden
        
        
        #line 34 "..\..\..\..\AdminTools\EditTransactionWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_EditTransaction;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\..\..\AdminTools\EditTransactionWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txt_TransactionID;
        
        #line default
        #line hidden
        
        
        #line 36 "..\..\..\..\AdminTools\EditTransactionWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_DeleteTransaction;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\..\..\AdminTools\EditTransactionWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_NewTransaction;
        
        #line default
        #line hidden
        
        
        #line 38 "..\..\..\..\AdminTools\EditTransactionWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lbl_TransactionID;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/ChildcareApplication;component/admintools/edittransactionwindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\AdminTools\EditTransactionWindow.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.TransactionDataGrid = ((System.Windows.Controls.DataGrid)(target));
            
            #line 11 "..\..\..\..\AdminTools\EditTransactionWindow.xaml"
            this.TransactionDataGrid.MouseLeftButtonUp += new System.Windows.Input.MouseButtonEventHandler(this.TransactionDataGrid_MouseLeftButtonUp);
            
            #line default
            #line hidden
            return;
            case 2:
            this.btn_Close = ((System.Windows.Controls.Button)(target));
            
            #line 33 "..\..\..\..\AdminTools\EditTransactionWindow.xaml"
            this.btn_Close.Click += new System.Windows.RoutedEventHandler(this.btn_Exit_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.btn_EditTransaction = ((System.Windows.Controls.Button)(target));
            
            #line 34 "..\..\..\..\AdminTools\EditTransactionWindow.xaml"
            this.btn_EditTransaction.Click += new System.Windows.RoutedEventHandler(this.btn_EditTransaction_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.txt_TransactionID = ((System.Windows.Controls.TextBox)(target));
            
            #line 35 "..\..\..\..\AdminTools\EditTransactionWindow.xaml"
            this.txt_TransactionID.GotFocus += new System.Windows.RoutedEventHandler(this.txt_TransactionID_GotFocus);
            
            #line default
            #line hidden
            
            #line 35 "..\..\..\..\AdminTools\EditTransactionWindow.xaml"
            this.txt_TransactionID.KeyUp += new System.Windows.Input.KeyEventHandler(this.txt_TransactionID_KeyUp);
            
            #line default
            #line hidden
            return;
            case 5:
            this.btn_DeleteTransaction = ((System.Windows.Controls.Button)(target));
            
            #line 36 "..\..\..\..\AdminTools\EditTransactionWindow.xaml"
            this.btn_DeleteTransaction.Click += new System.Windows.RoutedEventHandler(this.btn_DeleteTransaction_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.btn_NewTransaction = ((System.Windows.Controls.Button)(target));
            
            #line 37 "..\..\..\..\AdminTools\EditTransactionWindow.xaml"
            this.btn_NewTransaction.Click += new System.Windows.RoutedEventHandler(this.btn_NewTransaction_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.lbl_TransactionID = ((System.Windows.Controls.Label)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

