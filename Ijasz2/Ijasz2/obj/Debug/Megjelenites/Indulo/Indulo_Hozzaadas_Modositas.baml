   M S B A M L   `   `   `  ����A  =Ijasz2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Ijasz2.Megjelenites.InduloIjasz2.Megjelenites.Indulo  5   	   ;    5Ijasz2.Megjelenites.Indulo.Indulo_Hozzaadas_Modositas   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:Ijasz2.Megjelenites.Indulo     5   	     � Title$  Induló��5   	   $	��280��6   $	��245��6%    � 
ResizeMode$ NoResize=�61    � WindowStartupLocation$ CenterScreen=�6G   .��5
      �  � RowDefinitions 5   
   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   6.   �� 5      $
��Auto �6   6.   .+�5   
   �� -   5         ��Name$ lblNev��5      $��Név:��6    $��0��6/   $��0��6<   $��Stretch=�6L   $��Center=�6j   �� 5   
   -   5        $ lblNem��5      $
��Nem:��6    $��1��6/   $��0��6<   $��Stretch=�6L   $��Center=�6j   �� 5   
   -   5        $ lblSzuletes��5      $��Születési dátum:��6%   $��2��6@   $��0��6M   $��Stretch=�6]   $��Center=�6{   �� 5   
   -   5        $ lblEngedely��5      $��
Engedély:��6%   $��3��69   $��0��6F   $��Stretch=�6V   $��Center=�6t   �� 5   
   -   5        $ lblEgyesulet��5      $��Egyesület:��6&   $��4��6;   $��0��6H   $��Stretch=�6X   $��Center=�6v   �� 5   
   -   5        $ lblEredmenyek��5      $��Eredmények:��6'   $��5��6=   $��0��6J   $��Stretch=�6Z   $��Center=�6x   �� 5   
   -   5         ��Name$ txtNev��5      $��0��6"   $��1��6/   $
��Left=�6?   $��Center=�6Z   $	��120��6u   $��23��6�    �� TextWrapping$
 Wrap=�6�   �� 5    
   -   5        $ txtNem��5       $��1��6"   $��1��6/   $
��Left=�6?   $��Center=�6Z   $	��120��6u   $��23��6�   $
 Wrap=�6�   (  "System.Windows.Controls.DatePicker  5!   
   -	   5          Name$ 
dtSzuletes��5!      $��2��6)   $��1��66   $
��Left=�6F   $��Center=�6a   �� 5"   
   -
   5        $ txtEngedely��5"      $��3��6'   $��1��64   $
��Left=�6D   $��Center=�6_   $	��120��6z   $��23��6�   $
 Wrap=�6�   �� 5#   
   -   5        	 ��Name$	 cbEgyesulet��5#      
 �� DisplayMemberPath$
 	Azonosito��6(   $��4��6F   $��1��6S   $
��Left=�6c   $��Center=�6~   $	��120��6�   �� 5$   
   -   5        $ txtEredmenyek��5$      $��5��6)   $��1��66   $
��Left=�6F   $��Center=�6a   $	��120��6|   $��23��6�   $
 Wrap=�6�   �� 5&   
   -   5         ��Name$ 
btnRendben��5&      $��Rendben��6%   $��6��67   $��1��6D   $��Right=�6T   $��Bottom=�6p   $��86��6�   $��28��6�   6�   �� 5'   
   -   5        $ btnUjEgyesulet��5'      $��Új Egyesület��6)   $��7��6@   $��0��6M   $��Right=�6]   $��Bottom=�6y   $��86��6�   $��28��6�   6�   5(      5)      