﻿#pragma checksum "..\..\..\Windows\AddVictimWindow.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "6A196F9ADAD4C576C59E1F55A154EECC3788DA8D95A5A4ACDBC09EC337E0F09B"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using Kursovaya.Windows;
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


namespace Kursovaya.Windows {
    
    
    /// <summary>
    /// AddVictimWindow
    /// </summary>
    public partial class AddVictimWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 16 "..\..\..\Windows\AddVictimWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TxtSurname;
        
        #line default
        #line hidden
        
        
        #line 18 "..\..\..\Windows\AddVictimWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Txtname;
        
        #line default
        #line hidden
        
        
        #line 20 "..\..\..\Windows\AddVictimWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TxtPatronomyc;
        
        #line default
        #line hidden
        
        
        #line 24 "..\..\..\Windows\AddVictimWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox CmbGender;
        
        #line default
        #line hidden
        
        
        #line 26 "..\..\..\Windows\AddVictimWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TxtCity;
        
        #line default
        #line hidden
        
        
        #line 28 "..\..\..\Windows\AddVictimWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnSaveData;
        
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
            System.Uri resourceLocater = new System.Uri("/Kursovaya;component/windows/addvictimwindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Windows\AddVictimWindow.xaml"
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
            this.TxtSurname = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.Txtname = ((System.Windows.Controls.TextBox)(target));
            return;
            case 3:
            this.TxtPatronomyc = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.CmbGender = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 5:
            this.TxtCity = ((System.Windows.Controls.TextBox)(target));
            return;
            case 6:
            this.BtnSaveData = ((System.Windows.Controls.Button)(target));
            
            #line 28 "..\..\..\Windows\AddVictimWindow.xaml"
            this.BtnSaveData.Click += new System.Windows.RoutedEventHandler(this.BtnSaveData_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

