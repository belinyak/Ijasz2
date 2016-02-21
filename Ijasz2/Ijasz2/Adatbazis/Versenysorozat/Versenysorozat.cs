﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.SQLite;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media.Media3D;
using Ijasz2.Model.Verseny;

namespace Ijasz2.Adatbazis.Versenysorozat {
    public class Versenysorozat {

        public static ObservableCollection<Model.Versenysorozat.Versenysorozat> Load( ) {
            var value = new ObservableCollection<Model.Versenysorozat.Versenysorozat>();

            Adatbazis.Database.Connection.Open( );

            SQLiteCommand command = Adatbazis.Database.Connection.CreateCommand( );
            command.CommandText = "SELECT VSAZON, VSMEGN, VSVESZ FROM Versenysorozat;";
            SQLiteDataReader reader = command.ExecuteReader( );
            while( reader.Read( ) ) {
                int index = -1;
                value.Add( new Model.Versenysorozat.Versenysorozat {
                    Azonosito = reader.GetString( ++index ),
                    Megnevezes = reader.GetString( ++index ),
                    VersenyekSzama = reader.GetInt32( ++index )
                } );
            }
            command.Dispose( );
            Adatbazis.Database.Connection.Close( );
            return value;
        }

        public static void Add( Model.Versenysorozat.Versenysorozat versenysorozat ) {
            Adatbazis.Database.Connection.Open( );
            var command = Adatbazis.Database.Connection.CreateCommand();

            command.CommandText = "INSERT INTO Versenysorozat (VSAZON, VSMEGN, VSVESZ) VALUES(@VSAZON, @VSMEGN, @VSVESZ);";
            command.Parameters.AddWithValue( "@VSAZON", versenysorozat.Azonosito );
            command.Parameters.AddWithValue( "@VSMEGN", versenysorozat.Megnevezes );
            command.Parameters.AddWithValue( "@VSVESZ", "0" );

            try {
                command.ExecuteNonQuery( );
            } catch( SQLiteException exception ) {
                MessageBox.Show( exception.Message );
            } finally {
                command.Dispose( );
                Adatbazis.Database.Connection.Close( );
            }
        }

        public static void Update( Model.Versenysorozat.Versenysorozat versenysorozat ) {
            Adatbazis.Database.Connection.Open( );
            SQLiteCommand command = Adatbazis.Database.Connection.CreateCommand();
            command.CommandText = "UPDATE Versenysorozat SET VSAZON=@VSAZON, VSMEGN=@VSMEGN WHERE VSAZON=@VSAZON;";
            command.Parameters.AddWithValue( "@VSMEGN", versenysorozat.Megnevezes );
            command.Parameters.AddWithValue( "@VSAZON", versenysorozat.Azonosito );

            try {
                command.ExecuteNonQuery( );
            } catch( SQLiteException exception ) {
                MessageBox.Show( exception.Message );
            } finally {
                command.Dispose( );
                Adatbazis.Database.Connection.Close( );
            }
        }

        public static void Remove( string azonosito ) {
            Adatbazis.Database.Connection.Open( );
            SQLiteCommand command = Adatbazis.Database.Connection.CreateCommand();
            command.CommandText = "DELETE FROM Versenysorozat WHERE VSAZON=@VSAZON;";
            command.Parameters.AddWithValue( "@VSAZON", azonosito );
            command.ExecuteNonQuery( );

            command.Dispose( );
            Adatbazis.Database.Connection.Close( );
        }

        /// <summary>
        /// todo
        /// </summary>
        /// <param name="azonosito"></param>
        /// <returns></returns>
        public bool VersenyekNovel( string azonosito ) {
            Adatbazis.Database.Connection.Open( );

            SQLiteCommand command =  Adatbazis.Database.Connection.CreateCommand();
            command.CommandText = "UPDATE Versenysorozat SET VSVESZ = VSVESZ + 1 WHERE VSAZON=@VSAZON;";
            command.Parameters.AddWithValue( "@VSAZON", azonosito );

            command.ExecuteNonQuery( );
            command.Dispose( );
            Adatbazis.Database.Connection.Close( );
            return true;
        }

        /// <summary>
        /// todo
        /// </summary>
        /// <param name="azonosito"></param>
        /// <returns></returns>
        public bool VersenyekCsokkent( string azonosito ) {
            Adatbazis.Database.Connection.Open( );

            SQLiteCommand command =  Adatbazis.Database.Connection.CreateCommand();
            command.CommandText = "UPDATE Versenysorozat SET VSVESZ = VSVESZ - 1 WHERE VSAZON=@VSAZON;";
            command.Parameters.AddWithValue( "@VSAZON", azonosito );

            command.ExecuteNonQuery( );
            command.Dispose( );
            Adatbazis.Database.Connection.Close( );
            return true;
        }

    }
}