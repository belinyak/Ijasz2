﻿using System;
using System.Collections.ObjectModel;
using System.Linq;

namespace Ijasz2.Model.Eredmeny {
    public class Eredmenyek {
        public ObservableCollection<Eredmeny> _eredmenyek;

        /// <summary>
        ///     |
        ///     adatbazis hozzaadas |
        ///     model add |
        ///     indulok novelese |
        /// </summary>
        /// <param name="eredmeny"></param>
        /// <param name="induloNeme"></param>
        public void Add( Eredmeny eredmeny, string induloNeme ) {
            Adatbazis.Eredmeny.Eredmeny.Add( eredmeny );
            eredmeny.Sorszam = Adatbazis.Eredmeny.Eredmeny.InduloSorszam( eredmeny );
            _eredmenyek.Add( eredmeny );
            if( induloNeme.ToLower( ).Equals( "f" ) ) {
                Model.Data.Data.Korosztalyok.FerfiakNoveles( eredmeny.Verseny, eredmeny.KorosztalyAzonosito );
            }
            else {
                Model.Data.Data.Korosztalyok.NokNoveles( eredmeny.Verseny, eredmeny.KorosztalyAzonosito );
            }

            Data.Data.Indulok.EredmenyNoveles( eredmeny.Indulo );
            Data.Data.Ijtipusok.EredmenyekNoveles( eredmeny.Ijtipus );
            Data.Data.Versenyek.IndulokNoveles( eredmeny.Verseny );
        }

        /// <summary>
        ///     |
        ///     model update |
        ///     adatbazis update |
        ///     indulok eredmenyek ijtipusok count update-el nem kell foglakozni |
        /// </summary>
        /// <param name="eredmeny"></param>
        public void Update( Eredmeny eredmeny ) {
            foreach( var eredmeny1 in _eredmenyek.Where( eredmeny1 => eredmeny1.Indulo.Equals( eredmeny.Indulo ) ) ) {
                eredmeny1.Sorszam = eredmeny.Sorszam;
                eredmeny1.Ijtipus = eredmeny.Ijtipus;
                eredmeny1.Csapat = eredmeny.Csapat;
                eredmeny1.Talalat10 = eredmeny.Talalat10;
                eredmeny1.Talalat8 = eredmeny.Talalat8;
                eredmeny1.Talalat5 = eredmeny.Talalat5;
                eredmeny1.Melle = eredmeny.Melle;
                eredmeny1.OsszPont = eredmeny.OsszPont;
                eredmeny1.Szazalek = eredmeny.Szazalek;
                eredmeny1.Megjelent = eredmeny.Megjelent;
                eredmeny1.Kor = eredmeny.Kor;
                eredmeny1.KorosztalyModositott = eredmeny.KorosztalyModositott;
                eredmeny1.KorosztalyAzonosito = eredmeny.KorosztalyAzonosito;

                Adatbazis.Eredmeny.Eredmeny.Update( eredmeny1 );
                return;
            }
        }

        /// <summary>
        ///     |
        ///     model remove |
        ///     adatbazis remove |
        ///     indulok csokkentes |
        /// </summary>
        /// <param name="eredmeny"></param>
        public void Remove( Eredmeny eredmeny ) {
            foreach( var eredmeny1 in _eredmenyek.Where( eredmeny1 => eredmeny1.Indulo.Equals( eredmeny.Indulo ) ) ) {
                _eredmenyek.Remove( eredmeny1 );
                Adatbazis.Eredmeny.Eredmeny.Remove( eredmeny );
                Data.Data.Versenyek.IndulokCsokkentes( eredmeny1.Verseny );
                Data.Data.Indulok.EredmenyCsokkentes( eredmeny.Indulo );
                Data.Data.Ijtipusok.EredmenyekCsokkentes( eredmeny.Ijtipus );
                Data.Data.Korosztalyok.TagokCsokkentes( eredmeny );
                return;
            }
        }

        /// <summary> | 
        /// indulo beirasakor |
        /// TODO | 
        /// </summary>
        /// <param name="eredmeny"></param>
        /// <returns></returns>

    }
}