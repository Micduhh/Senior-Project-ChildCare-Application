﻿#pragma checksum "..\..\..\..\AdminTools\LinkExistingChild.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "A467C52C29FC7374163EE6BD37B9D42F"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using AdminTools;
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


namespace ChildcareApplication.AdminTools {
    
    
    /// <summary>
    /// LinkExistingChild
    /// </summary>
    public partial class LinkExistingChild : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 12 "..\..\..\..\AdminTools\LinkExistingChild.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_LinkChild;
        
        #line default
        #line hidden
        
        
        #line 13 "..\..\..\..\AdminTools\LinkExistingChild.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListBox lst_ChildBox;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\..\..\AdminTools\LinkExistingChild.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_Cancel;
        
        #line default
        #line hidden
        
        
        #line 30 "..\..\..\..\AdminTools\LinkExistingChild.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lbl_LinkExistingCHild;
        
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
            System.Uri resourceLocater = new System.Uri("/ChildcareApplication;component/admintools/linkexistingchild.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\AdminTools\LinkExistingChild.xaml"
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
            this.btn_LinkChild = ((System.Windows.Controls.Button)(target));
            
            #line 12 "..\..\..\..\AdminTools\LinkExistingChild.xaml"
            this.btn_LinkChild.Click += new System.Windows.RoutedEventHandler(this.btn_LinkChild_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.lst_ChildBox = ((System.Windows.Controls.ListBox)(target));
            return;
            case 3:
            this.btn_Cancel = ((System.Windows.Controls.Button)(target));
            
            #line 29 "..\..\..\..\AdminTools\LinkExistingChild.xaml"
            this.btn_Cancel.Click += new System.Windows.RoutedEventHandler(this.btn_Cancel_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.lbl_LinkExistingCHild = ((System.Windows.Controls.Label)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

