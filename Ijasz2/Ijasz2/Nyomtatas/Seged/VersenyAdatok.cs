﻿using System.Linq;

namespace Ijasz2.Nyomtatas.Seged {
    public class VersenyAdatok {
        public string Azonosito { get; set; }
        public string Megnevezes { get; set; }
        public string Datum { get; set; }
        public int OsszesPont { get; set; }
        public int IndulokSzama { get; set; }
        public string VersenysorozatAzonosito { get; set; }
        public string VersenysorozatMegnevezes { get; set; }

        public VersenyAdatok( string versenyAzonosito, bool nemMegjelentNyomtat = false ) {
            foreach( var verseny in Model.Data.Data.Versenyek._versenyek.Where( verseny => verseny.Azonosito.Equals( versenyAzonosito ) ) ) {
                Azonosito = verseny.Azonosito;
                Megnevezes = verseny.Megnevezes;
                Datum = verseny.Datum;
                OsszesPont = verseny.Osszes;

                if( nemMegjelentNyomtat ) {
                    foreach( var versenyeredmenyek in Model.Data.Data.Eredmenyek._versenyEredmenyek.Where( eredmeny => eredmeny.VersenyAzonosito.Equals( versenyAzonosito ) ) ) {
                        IndulokSzama =
                            ( from eredmeny in versenyeredmenyek.Eredmenyek._eredmenyek where eredmeny.Megjelent.Equals( false ) select eredmeny.Indulo ).Count( );
                    }
                }
                else {
                    IndulokSzama = verseny.Indulok;

                }

                if( !string.IsNullOrEmpty( verseny.Versenysorozat ) ) {
                    foreach( var versenysorozat in Model.Data.Data.Versenysorozatok._versenysorozatok.Where( versenysorozat => versenysorozat.Azonosito.Equals( verseny.Versenysorozat ) ) ) {
                        VersenysorozatAzonosito = versenysorozat.Azonosito;
                        Megnevezes = versenysorozat.Megnevezes;
                    }
                }
            }
        }
    }
}