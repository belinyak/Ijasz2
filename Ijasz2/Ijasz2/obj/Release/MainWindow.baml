   M S B A M L   `   `   `  ���� A  =Ijasz2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:Ijasz2Ijasz2  +clr-namespace:Ijasz2.ModelIjasz2.Model      Ijasz2.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     &localclr-namespace:Ijasz2     ,modelclr-namespace:Ijasz2.Model     -     � Title$  Íjász program��$	��768��$
��1024�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.���  � RowDefinitions �� $	��710 ��� $
��Auto �.+��� -    ��Name$ label��$#��Turul Koppány Íjászai Kft.��$��Stretch=�$��1���� -    ��Name$ MainControl��$��0��.@��� $��Versenysorozatok��.��� ���	#FFE5E5E5 � ColumnDefinitions �� $	��300 ��� $	��462 ��� $	��131 ��� $	��131 �.+�&   System.Windows.Controls.DataGrid  -     Name$ VersenysorozatGrid��   
IsReadOnly . 	   SelectionMode$	 Single=�
   SelectionUnit$
 FullRow=�   CanUserResizeRows .     RowHeaderWidth$ 0Q�$   HorizontalScrollBarVisibility$ Disabled=�   AutoGenerateColumns .  $��Stretch=� � 	Resources *  $System.Windows.Controls.DataGridCell �� 
TargetType �� Property �� Value)  #System.Windows.Controls.DataGridRow��%o   '        '  I     �� "  .���  � ��$ 0q���  �@�FocusVisualStyle Z� �� "  .�-      Columns 0  *System.Windows.Controls.DataGridTextColumn  -   VeAzonositoColumn��,  &System.Windows.Controls.DataGridColumn   CanUserSort .     CanUserReorder .     CanUserResize .     Width5  /System.Windows.Controls.DataGridLengthConverter$	 100    Header$ Azonosító��1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *	Azonosito+  -   VeMegnevezesColumn�� .   .   .  $	 100 $ Megnevezés�� �� *
Megnevezes+  -   VeVersenyekSzamaColumn�� .   .   .  $	 100 $ Versenyek száma�� �� *VersenyekSzama+�� -	    ��Name$ BtnVersenysorozatTorles��$��Törlés��$��2��$��Center=�$��Bottom=�$��96��$��32��$��
18,0,17,16q��� -
   $  BtnVersenysorozatHozzaadas��$��Hozzáadás��$��3��$
��Left=�$��Bottom=�$��96��$��32��$��0,0,0,16q��� $��	Versenyek��.��� ���	#FFE5E5E5 �� $	��705 ��� $��57 ��� $	��131 ��� $	��131 �.+�  -   $ VersenyGrid�� . $	 Single=�$
 FullRow=� .  $ 0Q�$ Disabled=� .  $��Stretch=� ��%o   '        '  I     �� "  .���  � ��$ 0q���  �@�FocusVisualStyle Z� �� "  .�-      -   AzonositoColumn�� .   .   .  $	 100 $ Azonosító�� �� *	Azonosito+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�  -   MegnevezesColumn�� .   .   .  $	 105 $ Megnevezés�� �� *
Megnevezes+$ TwoWay=�$ PropertyChanged=�  -   DatumColumn�� .   .   .  $ 70 $ Dátum�� �� *Datum+$ TwoWay=�$ PropertyChanged=�  -   VersenysorozatColumn�� .   .   .  $	 100 $ Versenysorozat�� �� *Versenysorozat+$ TwoWay=�$ PropertyChanged=�  -   LoveselColumn�� .   .   .  $ 60 $ 	Lövések�� �� *Osszes+$ TwoWay=�$ PropertyChanged=�  -   AllomasokColumn�� .   .   .  $ 70 $ Állomások�� �� *	Allomasok+$ TwoWay=�$ PropertyChanged=�  -   IndulokColumn�� .   .   .  $ 50 $ Indulók�� �� *	Indulok+$ TwoWay=�$ PropertyChanged=�4  .System.Windows.Controls.DataGridCheckBoxColumn  -   LezarvaColumn�� .   .   .  $ Lezárva��$ 50  �� *	Lezarva+$ TwoWay=�$ PropertyChanged=�   ClipboardContentBinding Z�   -   DuplaBirolapColumn�� .   .   .  $ Dupbla Beírólap��$	 100  �� *DuplaBeirolap+$ TwoWay=�$ PropertyChanged=� Z� �� -   $ btnVersenyTorles��$��Törlés��$��2��$��Center=�$��Bottom=�$��96��$��32��$��
18,0,17,16q��� -   $ btnVersenyHozzaadas��$��Hozzáadás��$��3��$
��Left=�$��Bottom=�$��96��$��32��$��0,0,0,16q��� -    ��Name$ Korosztalyok��$��Korosztályok��.��� ���	#FFE5E5E5 �� $	��565 ��� $	��197 ��� $	��131 ��� $	��131 � �� $	��630 ��� .+�  -   $ KorosztalyGrid��$��Stretch=�$��2�� . $	 Single=�$
 FullRow=� .   .  $ 0Q�$ Disabled=� ��%o   '        '  I     �� "  .���  � ��$ 0q���  �@�FocusVisualStyle Z� �� "  .�-       .   .   .  $ 70 $ Verseny��   
Visibility$ Hidden=� �� *	Verseny+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ 70 $ Azonosító�� �� *	Azonosito+$ TwoWay=�$ PropertyChanged=�   .   .   .  $	 100 $ Megnevezés�� �� *
Megnevezes+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ 70 $ Alsó határ�� �� *	AlsoHatar+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ 70 $ Felső határ�� �� *
FelsoHatar+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ 55 $ Nőkre�� �� *Nokre+$ TwoWay=�$ PropertyChanged=� Z�    .   .   .  $ 55 $ 
Férfiakra�� �� *	Ferfiakra+$ TwoWay=�$ PropertyChanged=� Z�    .   .   .  $ 45 $
 Nők�� �� *	InduloNok+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ 45 $ Férfiak�� �� *InduloFerfiak+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ 55 $ Egyben�� �� *Egyben+$ TwoWay=�$ PropertyChanged=� Z� �� -   $ 
lblVerseny��$��Verseny azonosító:��$��0��$��2��$��Center=�$	��Top=�$��	12,5,11,0q��� -     ��Name$  
cboVerseny��! �� DisplayMemberPath$! 	Azonosito��$��0��$��3��$
��Left=�$	��100��$	��Top=�$��0,10,0,0q��� -   $ btnKorosztalySzamolas��$��
Számolás��$��2��$��0��$��Center=�$��Bottom=�$��96��$��32��$��
18,0,17,16q��� -   $ btnKorosztalyIndulok��$��Indulók��$��3��$��0��$
��Left=�$��Bottom=�$��96��$��32��$��0,0,0,16q��� -   $ btnKorosztalyTorles��$��Törlés��$��2��$��1��$��Center=�$��Bottom=�$��96��$��32��$��
18,0,17,16q��� -    $ btnKorosztalyHozzaadas��$��Hozzáadás��$��3��$��1��$
��Left=�$��Bottom=�$��96��$��32��$��0,0,0,16q��� $��Íjtípusok��.��� ���	#FFE5E5E5 �� $	��300 ��� $	��462 ��� $	��131 ��� $	��131 �.+�  -!   $ IjtipusGrid��$��Stretch=� . $	 Single=�$
 FullRow=� .   .  $ 0Q�$ Disabled=� ��%o   '        '  I     �� "  .���  � ��$ 0q���  �@�FocusVisualStyle Z� �� "  .�-"       .   .   .  $	 100 $ Azonosító�� �� *	Azonosito+$ TwoWay=�$ PropertyChanged=�   .   .   .  $	 100 $ Megnevezés�� �� *
Megnevezes+$ TwoWay=�$ PropertyChanged=�   .   .   .  $	 100 $ Listázási sorszám�� �� *	Sorszam+$ TwoWay=�$ PropertyChanged=�   .   .   .  $	 100 $ 
Eredmenyek��$ Hidden=� �� *
Eredmenyek+$ TwoWay=�$ PropertyChanged=��� -#   $ btnIjtipusTorles��$��Törlés��$��2��$��Center=�$��Bottom=�$��96��$��32��$��
18,0,17,16q��� -$   $ btnIjtipusHozzaadas��$��Hozzáadás��$��3��$
��Left=�$��Bottom=�$��96��$��32��$��0,0,0,16q��� $��Egyesületek��.��� ���	#FFE5E5E5 �� $	��420 ��� $	��342 ��� $	��131 ��� $	��131 �.+�  -%   $ EgyesuletGrid��$��Stretch=� . $	 Single=�$
 FullRow=� .   .  $ 0Q�$ Disabled=� ��%o   '        '  I     �� "  .���  � ��$ 0q���  �@�FocusVisualStyle Z� �� "  .�-&       .   .   .  $	 100 $
 Név�� �� *	Azonosito+$ TwoWay=�$ PropertyChanged=�   .   .   .  $	 100 $
 Cím�� �� *Cim+$ TwoWay=�$ PropertyChanged=�   .   .   .  $	 100 $ Vezető�� �� *Vezeto+$ TwoWay=�$ PropertyChanged=�   .   .   .  $	 100 $ Telefon��$ Hidden=� �� *
Telefon1+$ TwoWay=�$ PropertyChanged=�   .   .   .  $	 100 $ Telefon2��$ Hidden=� �� *
Telefon2+$ TwoWay=�$ PropertyChanged=�   .   .   .  $	 100 $ E-mail��$ Hidden=� �� *Email1+$ TwoWay=�$ PropertyChanged=�   .   .   .  $	 100 $ E-mail2��$ Hidden=� �� *Email2+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ Listázandó��$ 70  �� *
Listazando+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ 50 $ Tagok�� �� *
TagokSzama+$ TwoWay=�$ PropertyChanged=��� -'   $ btnEgyesuletTorles��$��Törlés��$��2��$��Center=�$��Bottom=�$��96��$��32��$��
18,0,17,16q��� -(   $ btnEgyesuletHozzaadas��$��Hozzáadás��$��3��$
��Left=�$��Bottom=�$��96��$��32��$��0,0,0,16q��� $��Indulók��.��� ���	#FFE5E5E5 �� $	��630 ���  �� $	��570 ��� $	��192 ��� $	��131 ��� $	��131 �.+�  -)   $ 
InduloGrid��$��2��$��Stretch=� . $	 Single=�$
 FullRow=� .   .  $ 0Q�$ Disabled=� ��%o   '        '  I     �� "  .���  � ��$ 0q���  �@�FocusVisualStyle Z� �� "  .�-*       .   .   .  $	 150 $
 Név�� �� *Nev+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ 40 $	 Nem�� �� *Nem+$ TwoWay=�$ PropertyChanged=�   .   .   .  $	 100 $ Születési dátum�� �� *SzuletesiDatum+$ TwoWay=�$ PropertyChanged=�   .   .   .  $	 100 $ 	Engedély�� �� *
Engedely+$ TwoWay=�$ PropertyChanged=�   .   .   .  $	 100 $ 
Egyesület�� �� *	Egyesulet+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ 80 $ Eredmények�� �� *
Eredmenyek+$ TwoWay=�$ PropertyChanged=��� -+   $ btnInduloTorles��$��Törlés��$��2��$��1��$��Center=�$��Bottom=�$��96��$��32��$��
18,0,17,16q��� -,   $ btnInduloHozzaadas��$��Hozzáadás��$��3��$��1��$
��Left=�$��Bottom=�$��96��$��32��$��0,0,0,16q��� --   $ btnInduloBeiras��$��Beírás��$��3��$��0��$
��Left=�$��Bottom=�$��96��$��32��$��0,0,0,16q��� $��Eredmények��.��� ���	#FFE5E5E5 �� $��40 ��� $��40 ��� $	��550 ���  �� $	��570 ��� $	��192 ��� $	��131 ��� $	��131 �.+�  -.   $ EredmenyGrid��$��4��$��Stretch=� . $	 Single=�$
 FullRow=� .   .  $ 0Q�$ Disabled=� ��%o   '        '  I     �� "  .���  � ��$ 0q���  �@�FocusVisualStyle Z� �� "  .�-/       .   .   .  $	 100 $ Verseny��$ Hidden=� �� *	Verseny+$ TwoWay=�$ PropertyChanged=�   .   .   .  $	 100 $ Induló�� �� *Indulo+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ 60 $ Sorszám�� �� *	Sorszam+$ TwoWay=�$ PropertyChanged=�   .   .   .  $	 100 $ 	Íjtípus�� �� *	Ijtipus+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ 50 $ Csapat�� �� *Csapat+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ 25 $ 10�� �� *	Talalat10+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ 25 $ 8�� �� *
Talalat8+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ 25 $ 5�� �� *
Talalat5+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ 40 $ Mellé�� �� *Melle+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ 50 $ Összes�� �� *
OsszPont+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ 25 $ %�� �� *
Szazalek+$ TwoWay=�$ PropertyChanged=�   .   .   .  $ 	Megjelent��$ 70  �� *	Megjelent+$ TwoWay=�$ PropertyChanged=� Z�    .   .   .  $ Korosztaly módosított��$ 70 $ Hidden=� �� *KorosztalyModositott+$ TwoWay=�$ PropertyChanged=� Z�    .   .   .  $ 25 $ Korosztály azonosító��$ Hidden=� �� *KorosztalyAzonosito+$ TwoWay=�$ PropertyChanged=��� -0   $ lblEredmenyVerseny��$��Verseny azonosító:��$��0��$��2��$��Center=�$	��Top=�$��	12,5,11,0q��� -1   $  cboEredmenyVerseny��$! 	Azonosito��$��0��$��3��$
��Left=�$	��100��$	��Top=�$��0,10,0,0q��� -2   $ lblEredmenySorszam��$��	Sorszám:��$��1��$��2��$��Center=�$	��Top=�$��	12,5,11,0q��� -3   " ��Name$" txtEredmenySorszam��$��1��$��3��$
��Left=�$��23��# �� TextWrapping$
# Wrap=�$��Center=�$	��100���� -4   $ btnEredmenyMegnyitas��$��
Megnyitás��$��2��$��2��$��Center=�$��Bottom=�$��96��$��32��$��
18,0,17,16q��� -5   $ btnEredmenyLezaras��$��	Lezárás��$��3��$��2��$
��Left=�$��Bottom=�$��96��$��32��$��0,0,0,16q��� -6   $ btnEredmenyTorles��$��Törlés��$��2��$��3��$��Center=�$��Bottom=�$��96��$��32��$��
18,0,17,16q��� $��Startlisták��.��� -7   $ �Name$$ St�����	#FFE5E5E5 �� $��20 ��� $��25 ��� $��25 ��� $��25 ��� $��25 ��� $��25 ���  �� $��50 ��� $	��150 ��� $	��693 ��� $	��131 �.+��� -8   $  startListaVersenyAzonosito��$��1��$��1��$��Verseny azonosító:��$��Stretch=�$��Center=��� -9   $! startListaVersenyMegnevezes��$��2��$��1��$��Verseny megnevezés:��$��Stretch=�$��Center=��� -:   $ startListaTípus��$��3��$��1��$��Startlista típusa:��$��Stretch=�$��Bottom=��� -;   $"  cbstartListaVersenyAzonosito��$! 	Azonosito��$��1��$��2��$
��Left=�$��Center=�$	��120���� -<   $$" txtstartListaVersenyMegnevezes��$��2��$��2��$
��Left=�$��23��$
# Wrap=�$��Center=�$	��120��{�.  �� -=   % ��Name$% chstartListaNevezesi��$��3��$��2��$��	Nevezési��$
��Left=�$��Center=��� ->   $% chstartListaCsapatlista��$��4��$��2��$��Csapatlista��$
��Left=�$��Center=��� -?   $% chstartListaNemMegjelent��$��5��$��2��$��	Megjelent��$
��Left=�$��Center=��� -@   $ btnstartListaNyomtat��$��
Nyomtatás��$��6��$��4��$
��Left=�$��Bottom=�$��96��$��32��$��0,0,0,16q��� $��Eredménylapok��.��� ���	#FFE5E5E5 �� $��20 ��� $��25 ��� $��25 ��� $��25 ��� $��25 ��� $��25 ��� $��25 ��� $��25 ��� $��25 ��� $��25 ��� $��25 ��� $
��Auto ���  �� $��50 ��� $	��165 ��� $	��678 ��� $	��131 �.+��� -A   $ eredmenylapTipus��$��1��$��1��$��Eredménylap típus:��$��Stretch=�$��Center=��� -B   $( "eredmenylapVersenysorozatAzonosito��$��3��$��1��$!��Versenysorozat azonosító:��$��Stretch=�$��Center=��� -C   $) #eredmenylapVersenysorozatMegnevezes��$��4��$��1��$!��Versenysorozat megnevezés:��$��Stretch=�$��Center=��� -D   $! eredmenylapVersenyAzonosito��$��5��$��1��$��Verseny azonosító:��$��Stretch=�$��Center=��� -E   $" eredmenylapVersenyMegnevezes��$��6��$��1��$��Verseny megnevezés:��$��Stretch=�$��Center=��� -F   $ eredmenylapTípus��$��7��$��1��$��Startlista típusa:��$��Stretch=�$��Bottom=��� -G   $% cheredmenylapVerseny��$��1��$��2��$��Verseny��$
��Left=�$��Center=��� -H   $!% cheredmenylapVersenysorozat��$��2��$��2��$��Versenysorozat��$
��Left=�$��Center=��� -I   $#  cberedmenylapVersenyAzonosito��$! 	Azonosito��$��3��$��2��$
��Left=�$��Center=�$	��120���� -J   $%" txteredmenylapVersenyMegnevezes��$��4��$��2��$
��Left=�$��23��$
# Wrap=�$��Center=�$	��120��{�.  �� -K   $*  $cberedmenylapVersenysorozatAzonosito��$! 	Azonosito��$��5��$��2��$
��Left=�$��Center=�$	��120���� -L   $," &txteredmenylapVersenysorozatMegnevezes��$��6��$��2��$
��Left=�$��23��$
# Wrap=�$��Center=�$	��120��{�.  �� -M   $% cheredmenylapTeljes��$��7��$��2��$��Teljes��$
��Left=�$��Center=��� -N   $% cheredmenylapMisz��$��8��$��2��$
��MISZ��$
��Left=�$��Center=��� -O   $% cheredmenylapEgyesulet��$��9��$��2��$��
Egyesület��$
��Left=�$��Center=��� -P   $% cheredmenylapReszletes��$��10��$��2��$��
Részletes��$
��Left=�$��Center=��� -Q   $ btneredmenylapNyomtat��$��
Nyomtatás��$��12��$��4��$
��Left=�$��Bottom=�$��96��$��32��$��0,0,0,16q��� $��	Oklevelek��.��� ���	#FFE5E5E5 �� $��30 ��� $��30 ��� $��30 ��� $��30 ��� $��30 ��� $��30 ��� $��30 ��� $��30 ��� $	��390 ���  �� $	��300 ��� $��15 ��� $	��165 ��� $	��282 ��� $	��131 ��� $	��131 �.+�  -R   $ 
SablonGrid��$��Stretch=�$��10�� . $	 Single=�$
 FullRow=� .   .  $ 0Q�$ Disabled=� ��%o   '        '  I     �� "  .���  � ��$ 0q���  �@�FocusVisualStyle Z� �� "  .�-S       .   .   .  $	 150 $ Azonosító�� �� *	Azonosito+$ TwoWay=�$ PropertyChanged=�   .   .   .  $	 150 $ Típus�� �� *Tipus+$ TwoWay=�$ PropertyChanged=��� -T   $ lblOklevelTipus��$��Oklevél típus:��$��1��$��0��$��2��$
��Left=�$��Center=��� -U   $ lblOklevelLegjobb��$��Emberek száma:��$��1��$��2��$��2��$
��Left=�$��Bottom=��� -V   $ lblOklevelVeAzonosito��$��Verseny azonosító:��$��1��$��3��$��2��$
��Left=�$��Bottom=��� -W   $ lblOklevelVeMegnevezes��$��Verseny megnevezés:��$��1��$��4��$��2��$
��Left=�$��Bottom=��� -X   $ lblOklevelVsAzonosito��$!��Versenysorozat azonosító:��$��1��$��5��$��2��$
��Left=�$��Bottom=��� -Y   $ lblOklevelVsMegnevezes��$!��Versenysorozat megnevezés:��$��1��$��6��$��2��$
��Left=�$��Bottom=��� -Z   $% chOklevelTipusVe��$��0��$��3��$��Verseny��$
��Left=�$��Center=��� -[   $% chOklevelTipusVs��$��1��$��3��$��Versenysorozat��$
��Left=�$��Center=��� -\   $  cboOklevelLegjobb��$��2��$��3��$
��Left=�$	��100��$��Center=�$��0,10,0,0q��� -]   $  cboOklevelVeAzonosito��$! 	Azonosito��$��3��$��3��$
��Left=�$	��100��$��Center=�$��0,10,0,0q��� -^   $" txtOklevelVeMegnevezes��$��4��$��3��$
��Left=�$��23��$
# Wrap=�$��Center=�$	��100��{�.  �� -_   $  cboOklevelVsAzonosito��$! 	Azonosito��$��5��$��3��$
��Left=�$	��100��$��Center=�$��0,10,0,0q��� -`   $" txtOklevelVsMegnevezes��$��6��$��3��$
��Left=�$��23��$
# Wrap=�$��Center=�$	��100��{�.  �� -a   $ btnOklevelNyomtatas��$��
Nyomtatás��$��8��$��5��$
��Left=�$��Bottom=�$��96��$��32��$��0,0,0,16q��� -b   $ btnSablonTorles��$��Törlés��$��9��$��4��$��Center=�$��Bottom=�$��96��$��32��$��
18,0,17,16q��� -c   $ btnOSablonHozzaadas��$��Hozzáadás��$��9��$��6��$
��Left=�$��Bottom=�$��96��$��32��$��0,0,0,16q�