﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Ijasz2.Megjelenites.Verseny {
    /// <summary>
    /// Interaction logic for Verseny_Hozzaadas_Modositas.xaml
    /// </summary>
    public partial class Verseny_Hozzaadas_Modositas : Window {
        private Model.Verseny.Verseny _verseny;

        #region Hozzaadas
        public Verseny_Hozzaadas_Modositas( ) {
            InitializeComponent( );
            InitializeContent( );
        }

        private void InitializeContent( ) {
            Title += " hozzáadás";
            dtDatum.SelectedDate = DateTime.Now;
            cbVersenysorozat.ItemsSource = Model.Data.Data.Versenysorozatok._versenysorozatok;
        }
        #endregion

        #region Modositas
        public Verseny_Hozzaadas_Modositas( Model.Verseny.Verseny verseny ) {
            _verseny = verseny;
            InitializeComponent( );
            InitializeContent( _verseny );
        }

        private void InitializeContent( Model.Verseny.Verseny verseny ) {
            Title += " módosítás";


            txtAzonosito.Text = _verseny.Azonosito;
            txtAzonosito.IsEnabled = false;
            txtMegnevezes.Text = _verseny.Megnevezes;
            cbVersenysorozat.ItemsSource = Model.Data.Data.Versenysorozatok._versenysorozatok;
            try {
                dtDatum.SelectedDate = DateTime.Parse( _verseny.Datum );
            } catch( Exception ) {
            }
            cbVersenysorozat.Text = _verseny.Versenysorozat;
            txtLovesek.Text = _verseny.Osszes.ToString( );
            txtAllomasok.Text = _verseny.Allomasok.ToString( );
            chDupla.IsChecked = _verseny.DuplaBeirolap;
        }
        #endregion

        private bool IsValid( ) {
            bool valid = true;

            txtAzonosito.ClearValue(Border.BorderBrushProperty);
            dtDatum.ClearValue(Border.BorderBrushProperty);
            txtLovesek.ClearValue(Border.BorderBrushProperty);
            txtAllomasok.ClearValue( Border.BorderBrushProperty);

            if( txtAzonosito.Text.Length == 0 ) {
                txtAzonosito.BorderBrush = new SolidColorBrush( Colors.Red );
                valid = false;
            }
            try {
                dtDatum.SelectedDate.ToString( );
            } catch( Exception ) {
                dtDatum.BorderBrush = new SolidColorBrush( Colors.Red );
                valid = false;
            }
            try {
                Convert.ToInt32( txtLovesek.Text );
            } catch( Exception ) {
                txtLovesek.BorderBrush = new SolidColorBrush( Colors.Red );
                valid = false;
            }
            try {
                Convert.ToInt32( txtAllomasok.Text );
            } catch( Exception ) {
                txtAllomasok.BorderBrush = new SolidColorBrush( Colors.Red );
                valid = false;
            }
            return valid;
        }

        private void BtnRendben_OnClick( object sender, RoutedEventArgs e ) {
            if( IsValid( ) == false ) {
                return;
            }

            var Verseny = new Model.Verseny.Verseny {
                Azonosito = txtAzonosito.Text,
                Megnevezes = txtMegnevezes.Text,
                Datum = dtDatum.SelectedDate.ToString(),
                Versenysorozat = cbVersenysorozat.Text,
                Osszes = Convert.ToInt32(txtLovesek.Text),
                Allomasok = Convert.ToInt32(txtAllomasok.Text),
                DuplaBeirolap = chDupla.IsChecked != null && chDupla.IsChecked.Value
            };

            // hozzaadas
            if( _verseny == null ) {
                Model.Data.Data.Versenyek.Add( Verseny );
            }
            // modositas
            else {
                Model.Data.Data.Versenyek.Modify( Verseny );
            }
            Close();
        }
    }
}