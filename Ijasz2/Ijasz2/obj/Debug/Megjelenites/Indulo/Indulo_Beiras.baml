   M S B A M L   `   `   `  ����A  =Ijasz2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Ijasz2.Megjelenites.InduloIjasz2.Megjelenites.Indulo  5   	   .    (Ijasz2.Megjelenites.Indulo.Indulo_Beiras   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:Ijasz2.Megjelenites.Indulo     5   	     � Title$  Induló beírás��5   	   $	��310��6   $	��270��6,    � 
ResizeMode$ NoResize=�68    � WindowStartupLocation$ CenterScreen=�6N   .��5	      �  � RowDefinitions 5
   
   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*   �� 5      $��32 �6   6*    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   6.   �� 5      $
��Auto �6   6.   .+�5   
   �� -   5         ��Name$ lblNev��5      $��Név:��6    $��0��6/   $��0��6<   $��Stretch=�6L   $��Center=�6j   �� 5   
   -   5        $ 
lblVerseny��5      $��Verseny:��6$   $��1��67   $��0��6D   $��Stretch=�6T   $��Center=�6r   �� 5   
   -   5        $ 
lblIjtipus��5      $��
Íjtípus:��6$   $��2��67   $��0��6D   $��Stretch=�6T   $��Center=�6r   �� 5   
   -   5        $ 	lblCsapat��5      $��Csapat:��6#   $��3��65   $��0��6B   $��Stretch=�6R   $��Center=�6p   �� 5   
   -   5        $ lblMegjelent��5      $��
Megjelent:��6&   $��4��6;   $��0��6H   $��Stretch=�6X   $��Center=�6v   �� 5   
   -   5        $ lblKorosztalyFelulir��5      $ ��Korosztály felülírása:��6.   $��5��6O   $��0��6\   $��Stretch=�6l   $��Center=�6�   �� 5   
   -   5        $ lblUjKorosztaly��5      $��Új Korosztály:��6)   $��6��6B   $��0��6O   $��Stretch=�6_   $��Center=�6}   �� 5   
   -   5         ��Name$ txtNev��5      $��0��6"   $��1��6/   $
��Left=�6?   $��Center=�6Z   $	��120��6u   $��23��6�    �� TextWrapping$
 Wrap=�6�   �� 5    
   -	   5         ��Name$ 	cbVerseny��5       	 �� DisplayMemberPath$	 	Azonosito��6&   $��1��6E   $��1��6R   $
��Left=�6b   $��Center=�6}   $	��120��6�   6�   �� 5!   
   -
   5        $ 	cbIjtipus��5!      $	 	Azonosito��6&   $��2��6E   $��1��6R   $
��Left=�6b   $��Center=�6}   $	��120��6�   �� 5"   
   -   5        $ cbCsapat��5"      $��3��6%   $��1��62   $
��Left=�6B   $��Center=�6]   $	��120��6x   �� 5#   
   -   5        
 ��Name$
 chMegjelent��5#      $��4��6(   $��1��65   $
��Left=�6E   $��Center=�6`   �� 5$   
   -   5        $
 chKorosztalyFelulir��5$      $��5��60   $��1��6=   $
��Left=�6M   $��Center=�6h   6�   �� 5%   
   -   5        $ cbUjKorosztaly��5%      $	 	Azonosito��6+   $��6��6J   $��1��6W   $
��Left=�6g   $��Center=�6�   $	��120��6�   �� 5&   
   -   5         ��Name$ 
btnRendben��5&      $��Rendben��6%   $��7��67   $��1��6D   $��Right=�6T   $��Bottom=�6p   $��86��6�   $��28��6�   6�   �� 5'   
   -   5        $ btnCsapatok��5'      $��Csapatok��6&   $��7��69   $��0��6F   $��Right=�6V   $��Bottom=�6r   $��86��6�   $��28��6�   6�   5(      5)      