   M S B A M L   `   `   `  ���� A  =Ijasz2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:Ijasz2.Megjelenites.VersenyIjasz2.Megjelenites.Verseny  =    7Ijasz2.Megjelenites.Verseny.Verseny_Hozzaadas_Modositas   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ;local)clr-namespace:Ijasz2.Megjelenites.Verseny       � Title$  Verseny��$	��300��$	��245�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.���  � RowDefinitions �� $��32 ��� $��32 ��� $��32 ��� $��32 ��� $��32 ��� $��32 ��� $��32 ��� $��32 � � ColumnDefinitions �� $
��Auto ��� $
��Auto �.+��� -    ��Name$ lblAzonosito��$��Azonosító:��$��0��$��0��$��Stretch=�$��Center=��� -   $ lblMegnevezes��$��Megnevezés:��$��1��$��0��$��Stretch=�$��Center=��� -   $ lblDatum��$��Dátum:��$��2��$��0��$��Stretch=�$��Center=��� -   $ lblVersenysorozat��$��Versenysorozat:��$��3��$��0��$��Stretch=�$��Center=��� -   $ 
lblLovesek��$��
Lövések:��$��4��$��0��$��Stretch=�$��Center=��� -   $ lblAllomasok��$��Állomások:��$��5��$��0��$��Stretch=�$��Center=��� -   $ lblDupla��$��Dupla beírólap:��$��6��$��0��$��Stretch=�$��Center=��� -    ��Name$ txtAzonosito��$��0��$��1��$
��Left=�$��Center=�$	��120��$��23�� �� TextWrapping$
 Wrap=��� -	   $ txtMegnevezes��$��1��$��1��$
��Left=�$��Center=�$	��120��$��23��$
 Wrap=�(  "System.Windows.Controls.DatePicker  -
     Name$ dtDatum��$��2��$��1��$
��Left=�$��Center=��� -   	 ��Name$	 cbVersenysorozat��
 �� DisplayMemberPath$
 	Azonosito��$��3��$��1��$
��Left=�$��Center=�$	��120���� -   $ 
txtLovesek��$��4��$��1��$
��Left=�$��Center=�$	��120��$��23��$
 Wrap=��� -   $ txtAllomasok��$��5��$��1��$
��Left=�$��Center=�$	��120��$��23��$
 Wrap=��� -    ��Name$ chDupla��$��6��$��1��$
��Left=�$��Center=��� -    ��Name$ 
btnRendben��$��Rendben��$��7��$��1��$��Right=�$��Bottom=�$��86��$��28��