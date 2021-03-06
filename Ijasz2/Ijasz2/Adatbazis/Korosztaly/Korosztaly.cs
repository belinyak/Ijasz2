﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.SQLite;
using System.Linq;
using System.Windows;
using Ijasz2.Model.Korosztaly;

namespace Ijasz2.Adatbazis.Korosztaly {
    public static class Korosztaly {
        public static List<VersenyKorosztaly> Load( ) {
            var value = new List<VersenyKorosztaly>();

            Database.Connection.Open( );
            var command = Database.Connection.CreateCommand();

            command.CommandText =
                "SELECT KOAZON, VEAZON, KOMEGN, KOEKMI, KOEKMA, KONOK, KOFERF, KOINSN, KOINSF, KOEGYB FROM Korosztályok order by veazon, koekmi";
            var reader = command.ExecuteReader();
            while( reader.Read( ) ) {
                var index = -1;

                var q = new Model.Korosztaly.Korosztaly {
                    Azonosito = reader.GetString(++index),
                    Verseny = reader.GetString(++index),
                    Megnevezes = reader.GetString(++index),
                    AlsoHatar = reader.GetInt32(++index),
                    FelsoHatar = reader.GetInt32(++index),
                    Nokre = reader.GetBoolean(++index),
                    Ferfiakra = reader.GetBoolean(++index),
                    InduloNok = reader.GetInt32(++index),
                    InduloFerfiak = reader.GetInt32(++index),
                    Egyben = reader.GetBoolean(++index)
                };
                var found = false;
                foreach( var versenykorosztaly in value.Where( versenykorosztaly => versenykorosztaly.VersenyAzonosito.Equals( q.Verseny ) ) ) {
                    versenykorosztaly.Korosztalyok.Add( q );
                    found = true;
                    break;
                }
                if( !found ) {
                    value.Add( new VersenyKorosztaly {
                        VersenyAzonosito = q.Verseny,
                        Korosztalyok = new ObservableCollection<Model.Korosztaly.Korosztaly> {
                            q
                        }
                    } );
                }
            }
            command.Dispose( );
            Database.Connection.Close( );
            return value;
        }

        public static void Add( Model.Korosztaly.Korosztaly korosztaly ) {
            Database.Connection.Open( );
            var command = Database.Connection.CreateCommand();

            command.CommandText =
                "INSERT INTO Korosztályok (VEAZON, KOAZON, KOMEGN, KOEKMI, KOEKMA, KONOK, KOFERF, KOINSF, KOINSN, KOEGYB) " +
                "VALUES(@VEAZON, @KOAZON, @KOMEGN, @KOEKMI, @KOEKMA, @KONOK, @KOFERF, @KOINSF, @KOINSN, @KOEGYB);";
            command.Parameters.AddWithValue( "@VEAZON", korosztaly.Verseny );
            command.Parameters.AddWithValue( "@KOAZON", korosztaly.Azonosito );
            command.Parameters.AddWithValue( "@KOMEGN", korosztaly.Megnevezes );
            command.Parameters.AddWithValue( "@KOEKMI", korosztaly.AlsoHatar );
            command.Parameters.AddWithValue( "@KOEKMA", korosztaly.FelsoHatar );
            command.Parameters.AddWithValue( "@KONOK", korosztaly.Nokre );
            command.Parameters.AddWithValue( "@KOFERF", korosztaly.Ferfiakra );
            command.Parameters.AddWithValue( "@KOINSF", korosztaly.InduloFerfiak );
            command.Parameters.AddWithValue( "@KOINSN", korosztaly.InduloNok );
            command.Parameters.AddWithValue( "@KOEGYB", korosztaly.Egyben );

            try {
                command.ExecuteNonQuery( );
            } catch( SQLiteException exception ) {
                MessageBox.Show( exception.Message );
            } finally {
                command.Dispose( );
                Database.Connection.Close( );
            }
        }

        public static void Update( Model.Korosztaly.Korosztaly korosztaly ) {
            Database.Connection.Open( );
            var command = Database.Connection.CreateCommand();
            command.CommandText = "UPDATE Korosztályok SET " +
                                  "VEAZON=@VEAZON," +
                                  "KOAZON=@KOAZON," +
                                  "KOMEGN=@KOMEGN," +
                                  "KOEKMI=@KOEKMI," +
                                  "KOEKMA=@KOEKMA," +
                                  "KONOK=@KONOK," +
                                  "KOFERF=@KOFERF," +
                                  "KOINSF=@KOINSF," +
                                  "KOINSN=@KOINSN," +
                                  "KOEGYB=@KOEGYB" +
                                  " WHERE VEAZON=@VEAZON AND KOAZON=@KOAZON;";

            command.Parameters.AddWithValue( "@VEAZON", korosztaly.Verseny );
            command.Parameters.AddWithValue( "@KOAZON", korosztaly.Azonosito );
            command.Parameters.AddWithValue( "@KOMEGN", korosztaly.Megnevezes );
            command.Parameters.AddWithValue( "@KOEKMI", korosztaly.AlsoHatar );
            command.Parameters.AddWithValue( "@KOEKMA", korosztaly.FelsoHatar );
            command.Parameters.AddWithValue( "@KONOK", korosztaly.Nokre );
            command.Parameters.AddWithValue( "@KOFERF", korosztaly.Ferfiakra );
            command.Parameters.AddWithValue( "@KOINSF", korosztaly.InduloFerfiak );
            command.Parameters.AddWithValue( "@KOINSN", korosztaly.InduloNok );
            command.Parameters.AddWithValue( "@KOEGYB", korosztaly.Egyben );
            try {
                command.ExecuteNonQuery( );
            } catch( SQLiteException exception ) {
                MessageBox.Show( exception.Message );
            } finally {
                command.Dispose( );
                Database.Connection.Close( );
            }
        }

        public static void Remove( Model.Korosztaly.Korosztaly korosztaly ) {
            Database.Connection.Open( );
            var command = Database.Connection.CreateCommand();
            command.CommandText = "DELETE FROM Korosztályok WHERE VEAZON=@VEAZON AND KOAZON=@KOAZON;";

            command.Parameters.AddWithValue( "@VEAZON", korosztaly.Verseny );
            command.Parameters.AddWithValue( "@KOAZON", korosztaly.Azonosito );

            try {
                command.ExecuteNonQuery( );
            } catch( Exception e ) {
                Console.WriteLine( e );
            }

            command.Dispose( );
            Database.Connection.Close( );
        }

        public static void FerfiakNoveles( Model.Korosztaly.Korosztaly korosztaly ) {
            Database.Connection.Open( );

            var command = Database.Connection.CreateCommand();
            command.CommandText = "UPDATE Korosztályok SET KOINSF = KOINSF + 1 WHERE VEAZON=@VEAZON AND KOAZON=@KOAZON;";

            command.Parameters.AddWithValue( "@VEAZON", korosztaly.Verseny );
            command.Parameters.AddWithValue( "@KOAZON", korosztaly.Azonosito );

            command.ExecuteNonQuery( );

            command.Dispose( );
            Database.Connection.Close( );
        }

        public static void NokNoveles( Model.Korosztaly.Korosztaly korosztaly ) {
            Database.Connection.Open( );

            var command = Database.Connection.CreateCommand();
            command.CommandText = "UPDATE Korosztályok SET KOINSN = KOINSN + 1 WHERE VEAZON=@VEAZON AND KOAZON=@KOAZON;";

            command.Parameters.AddWithValue( "@VEAZON", korosztaly.Verseny );
            command.Parameters.AddWithValue( "@KOAZON", korosztaly.Azonosito );

            command.ExecuteNonQuery( );

            command.Dispose( );
            Database.Connection.Close( );
        }

        public static void FerfiakCsokkentes( Model.Korosztaly.Korosztaly korosztaly ) {
            Database.Connection.Open( );

            var command = Database.Connection.CreateCommand();
            command.CommandText = "UPDATE Korosztályok SET KOINSF = KOINSF - 1 WHERE VEAZON=@VEAZON AND KOAZON=@KOAZON;";

            command.Parameters.AddWithValue( "@VEAZON", korosztaly.Verseny );
            command.Parameters.AddWithValue( "@KOAZON", korosztaly.Azonosito );

            command.ExecuteNonQuery( );

            command.Dispose( );
            Database.Connection.Close( );
        }

        public static void NokCsokkentes( Model.Korosztaly.Korosztaly korosztaly ) {
            Database.Connection.Open( );

            var command = Database.Connection.CreateCommand();
            command.CommandText = "UPDATE Korosztályok SET KOINSN = KOINSN - 1 WHERE VEAZON=@VEAZON AND KOAZON=@KOAZON;";

            command.Parameters.AddWithValue( "@VEAZON", korosztaly.Verseny );
            command.Parameters.AddWithValue( "@KOAZON", korosztaly.Azonosito );

            command.ExecuteNonQuery( );

            command.Dispose( );
            Database.Connection.Close( );
        }

        #region Korosztaly Szamolashoz helperek

        /// <summary> |
        /// FONTOS: parameter egyedi kell hogy legyen 
        /// korosztaly szamolaskor az eredmenyek tabla koazon mezőjét updateli |
        /// egy verseny-re egyben lefut | 
        /// </summary>
        /// <param name="versenyEredmeny"></param>
        public static void KorosztalySzamolas_EredmenyUpdate( Model.Eredmeny.VersenyEredmeny versenyEredmeny ) {
            Database.Connection.Open( );
            var command = Database.Connection.CreateCommand();
            command.CommandText = "";
            var i = 0;
            foreach( var eredmeny in versenyEredmeny.Eredmenyek._eredmenyek ) {
                command.CommandText +=
                "UPDATE Eredmények SET " +
                "KOAZON=@KOAZON" + i +
                " WHERE VEAZON=@VEAZON" + i + " AND INNEVE=@INNEVE" + i + "; ";

                command.Parameters.AddWithValue( "@VEAZON" + i, eredmeny.Verseny );
                command.Parameters.AddWithValue( "@INNEVE" + i, eredmeny.Indulo );
                command.Parameters.AddWithValue( "@KOAZON" + i, eredmeny.KorosztalyAzonosito );
                ++i;
            }
            try {
                command.ExecuteNonQuery( );
            } catch( SQLiteException exception ) {
                MessageBox.Show( exception.Message );
            } finally {
                command.Dispose( );
                Database.Connection.Close( );
            }
        }

        /// <summary> |
        /// FONTOS: parameter egyedi kell hogy legyen 
        /// korosztaly szamolaskor updateli a koinsf, koinsn mezoket | 
        /// egyben updatel -> csak 1x fut le
        /// </summary>
        /// <param name="versenyKorosztaly"></param>
        public static void KorosztalySzamolas_IndulokSzamaUpdate( ObservableCollection<Model.Korosztaly.Korosztaly> versenyKorosztaly ) {
            Database.Connection.Open( );
            var command = Database.Connection.CreateCommand();
            command.CommandText = "";
            var i = 0;
            foreach( var korosztaly in versenyKorosztaly ) {
                command.CommandText += "UPDATE Korosztályok SET " +
                                "KOINSF=@KOINSF" + i + ", " +
                                "KOINSN=@KOINSN" + i +
                                " WHERE VEAZON=@VEAZON" + i + " AND KOAZON=@KOAZON" + i + "; ";

                command.Parameters.AddWithValue( "@VEAZON" + i, korosztaly.Verseny );
                command.Parameters.AddWithValue( "@KOAZON" + i, korosztaly.Azonosito );
                command.Parameters.AddWithValue( "@KOINSF" + i, korosztaly.InduloFerfiak );
                command.Parameters.AddWithValue( "@KOINSN" + i, korosztaly.InduloNok );
                i++;
            }
            try {
                command.ExecuteNonQuery( );
            } catch( SQLiteException exception ) {
                MessageBox.Show( exception.Message );
            } finally {
                command.Dispose( );
                Database.Connection.Close( );
            }
        }
        #endregion
    }
}