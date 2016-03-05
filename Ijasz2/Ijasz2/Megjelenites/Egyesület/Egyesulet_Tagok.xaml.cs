﻿using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using Ijasz2.Model.Egyesulet;

namespace Ijasz2.Megjelenites.Egyesület {
    /// <summary>
    /// Interaction logic for Egyesulet_Tagok.xaml
    /// </summary>
    public partial class Egyesulet_Tagok  {
        private readonly Egyesulet _egyesulet;
        public Egyesulet_Tagok( Egyesulet egyesulet ) {
            _egyesulet = egyesulet;
            InitializeComponent( );
            InitializeContent( egyesulet );
        }

        private void InitializeContent( Egyesulet egyesulet ) {

            cboEgyesuletTagokVerseny.ItemsSource = Model.Data.Data.Versenyek._versenyek;

        }
        private void cboEgyesuletTagokVerseny_SelectionChanged( object sender, SelectionChangedEventArgs e ) {
            EgyesuletTagokGrid.ItemsSource = null;
            List<Model.Egyesulet.Egyesulet_Tagok> egyesuletIndulok = new List<Model.Egyesulet.Egyesulet_Tagok>();
            foreach( var indulo in Model.Data.Data.Indulok._indulok.Where( indulo => indulo.Egyesulet.Equals( _egyesulet.Azonosito ) ) ) {
                foreach( var eredmenyek in Model.Data.Data.Eredmenyek._versenyEredmenyek.Where( eredmeny => eredmeny.VersenyAzonosito.Equals( cboEgyesuletTagokVerseny.Text ) ) ) {
                    foreach( var eredmeny in eredmenyek.Eredmenyek._eredmenyek ) {
                        if( eredmeny.Indulo.Equals( indulo.Nev ) ) {
                            egyesuletIndulok.Add( new Model.Egyesulet.Egyesulet_Tagok {
                                Indulo = eredmeny.Indulo,
                                Nem = indulo.Nem,
                                Megjelent = eredmeny.Megjelent,
                            } );
                        }
                    }
                }
            }

            EgyesuletTagokGrid.ItemsSource = egyesuletIndulok;

        }

        private void BtnEgysuletTagokClear_OnClick( object sender, RoutedEventArgs e ) {
            cboEgyesuletTagokVerseny.SelectedIndex = -1;
        }
    }
}
