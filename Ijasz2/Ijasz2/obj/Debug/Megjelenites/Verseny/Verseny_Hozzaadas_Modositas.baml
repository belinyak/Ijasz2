   M S B A M L   `   `   `  ����A  =Ijasz2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:Ijasz2.Megjelenites.VersenyIjasz2.Megjelenites.Verseny  5   	   =    7Ijasz2.Megjelenites.Verseny.Verseny_Hozzaadas_Modositas   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ;local)clr-namespace:Ijasz2.Megjelenites.Verseny     5   	     � Title$  Verseny��5   	   $	��300��6   $	��245��6&    � 
ResizeMode$ NoResize=�62    � WindowStartupLocation$ CenterScreen=�6H   .��5      �  � RowDefinitions 5   
   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   6.   �� 5      $
��Auto �6   6.   .+�5   
   �� -   5         ��Name$ lblAzonosito��5      $��Azonosító:��6&   $��0��6;   $��0��6H   $��Stretch=�6X   $��Center=�6v   �� 5   
   -   5        $ lblMegnevezes��5      $��Megnevezés:��6'   $��1��6=   $��0��6J   $��Stretch=�6Z   $��Center=�6x   �� 5   
   -   5        $ lblDatum��5      $��Dátum:��6"   $��2��63   $��0��6@   $��Stretch=�6P   $��Center=�6n   �� 5   
   -   5        $ lblVersenysorozat��5      $��Versenysorozat:��6+   $��3��6E   $��0��6R   $��Stretch=�6b   $��Center=�6�   �� 5   
   -   5        $ 
lblLovesek��5      $��
Lövések:��6$   $��4��67   $��0��6D   $��Stretch=�6T   $��Center=�6r   �� 5    
   -   5        $ lblAllomasok��5       $��Állomások:��6&   $��5��6;   $��0��6H   $��Stretch=�6X   $��Center=�6v   �� 5!   
   -   5        $ lblDupla��5!      $��Dupla beírólap:��6"   $��6��6<   $��0��6I   $��Stretch=�6Y   $��Center=�6w   �� 5#   
   -   5         ��Name$ txtAzonosito��5#      $��0��6(   $��1��65   $
��Left=�6E   $��Center=�6`   $	��120��6{   $��23��6�    �� TextWrapping$
 Wrap=�6�   �� 5$   
   -	   5        $ txtMegnevezes��5$      $��1��6)   $��1��66   $
��Left=�6F   $��Center=�6a   $	��120��6|   $��23��6�   $
 Wrap=�6�   (  "System.Windows.Controls.DatePicker  5%   
   -
   5          Name$ dtDatum��5%      $��2��6&   $��1��63   $
��Left=�6C   $��Center=�6^   �� 5&   
   -   5        	 ��Name$	 cbVersenysorozat��5&      
 �� DisplayMemberPath$
 	Azonosito��6-   $��3��6K   $��1��6X   $
��Left=�6h   $��Center=�6�   $	��120��6�   �� 5'   
   -   5        $ 
txtLovesek��5'      $��4��6&   $��1��63   $
��Left=�6C   $��Center=�6^   $	��120��6y   $��23��6�   $
 Wrap=�6�   �� 5(   
   -   5        $ txtAllomasok��5(      $��5��6(   $��1��65   $
��Left=�6E   $��Center=�6`   $	��120��6{   $��23��6�   $
 Wrap=�6�   �� 5)   
   -   5         ��Name$ chDupla��5)      $��6��6$   $��1��61   $
��Left=�6A   $��Center=�6\   �� 5*   
   -   5         ��Name$ 
btnRendben��5*      $��Rendben��6%   $��7��67   $��1��6D   $��Right=�6T   $��Bottom=�6p   $��86��6�   $��28��6�   6�   5+      5,      