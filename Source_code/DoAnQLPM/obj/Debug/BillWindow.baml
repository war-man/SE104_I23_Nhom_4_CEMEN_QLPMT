   M S B A M L   `   `   `  ����  DoAnQLPM    DoAnQLPM.BillWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      -   5          � Title$  
Hóa Đơn��5   	   $	��650��6   $	��750��6&      MaterialDesignBody#���   5      $��Regular"�5      $��13(�5	      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5
         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5       � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    
 BillVM � DataContext# [ 5   	    � Icon$ Recource/Bill.ico��6F   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase	   Actions.	 5      6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 6$   �� *LoadedCommand+5        5   
   $ Closed��6   .	 5        
 6$   �� *ClosedCommand+5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   .+�5   
   � .+�5       �� $��10q�6    # MaterialDesignDisplay1TextBlock#��[ 6%   ���	#DD0F0E0E$��Center=�6u   HÓA ĐƠN THANH TOÁN6�   5!      � 5"   
   .+�5#      #  MaterialDesignThemes.Wpf.Card  -   5        $	��200��5#   "   $
��Left=�6.   $	��540��6I   $��	10,28,0,0q�6V   .��5$      �  5%      �� 5&      $
��auto �6(   68   �� 5'      $
��auto �6(   68   �� 5(      $
��auto �6(   68   �� 5)      $
��auto �6(   68   �� 5*      $
��auto �6(   68   �� 5+      $
��auto �6(   69   �� 5,      $
��auto �6(   69   �� 5-      $
��auto �6(   69   .+�5/      � $��0��6   $��
20 10 20 5q�6(   .+�50      �� $��Center=�6$   #��[ 6@   ���	#DD0F0E0E$��Center=�6�   Tạm Tính6�   51      � 52      $��1��6   .+�53        $��5 5 5 5q�6.   .��54      �� -   5        $��comboboxNgayKham��54   '   $��Center=�6h   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Ngày Khám Bệnh��6�   $��12��6�    & "MaterialDesignFloatingHintComboBox#��[ 6�   ��6?   �� *ComboBoxNgayKham+ 55   "     56   &   $ SelectionChanged��65   .	 57   *     
 6@   �� *!SelectionChangedCommandNgayKham+   CommandParameter 58   6   ��  �� ElementName$ comboboxNgayKham��5:   '   5<      5=      5>      � 5?      $��2��6   .+�5@        $��5 5 5 5q�6.   .��5A      ��  �� 
IsReadOnly . $��5 5 5 5q�6X   $ Họ và Tên:��6i    % !MaterialDesignFloatingHintTextBox#��[ 6�   ��68   �� *HoVaTenTamTinh+6�   5B      5C      � 5D      $��3��6   .+�5E        $��5 5 5 5q�6.   .��5F      �� -   5        $��TienKham��5F   &    . $��5 5 5 5q�6i   $ Tiền Khám: ��6z   #��[ 6�   ��6H   �� *TienKhamTamTinh+6�   5G      5H      � 5I      $��4��6   .+�5J        $��5 5 5 5q�6.   .��5K      �� -   5        $��	TienThuoc��5K   &    . $��5 5 5 5q�6k   $ Tiền Thuốc: ��6|   #��[ 6�   ��6I   �� *TienThuocTamTinh+6�   5L      5M      � 5N      $��5��6   .+�5O        $��5 5 5 5q�6.   .��5P      �� -   5        $��PhuThu��5P   &   $��5 5 5 5q�6S   $ Phụ Thu: ��6d   #��[ 6�   ��64   �� *PhuThuTamTinh+.��6�    5Q   "     5R   &   $ TextChanged��65   .	 5S   *     
 6@   �� *TextChangedCommandPhuThu+ 5T   -   �� $ PhuThu��5V   '   .��5W   :   5X      5Y      5Z      � 5[      $��6��6   .+�5\        $��5 5 5 5q�6.   .��5]      �� -   5        $��TongTien��5]   &    . $��5 5 5 5q�6i   $ Tổng Tiền: ��6z   #��[ 6�   ��6H   �� *TongTienTamTinh+6�   5^      5_      � 5`      $��7��6   $��5 5 5 5q�6(   .+�5a      �� -   5        $��buttonThanhToan��5a   "   $��Center=�6:     MaterialDesignRaisedButton#��[ 6Y    � ToolTip$/ )Resource name: MaterialDesignRaisedButton��6�   $��Thanh toán��6�   $��5,0,0,0q�6�    5b        5c      $ Click��6-   .	 5d   "     $ comboboxNgayKham��5e   8   
 5d   8   �� *ThanhToanCommand+5e   8   5f      5h      5i      5l      5m      5n      � 5o   
   $��222,54,10,512q�6   .+�5p      �� $��10q�6   #��[ 6%   ���	#DD0F0E0E$��Center=�6u   Thống Kê Thuốc6�   5q      � 5r   
   $��222,123,0,294q�6   .+�5s        .��5t      �� $
��Auto=�6   .��5u      �� -	   5        $��ListViewThuoc��5u      ��64   ��  6L   �� *allThongKeThuoc+ �� View 5v      �� 5w      .P�5x   "   �� $	��STT��61    �� DisplayMemberBinding 6>   �� *STT+6e   �� 5y   "   $��Tên Thuốc��61    6D   �� *
TenThuoc+6p   �� 5z   "   $��
Đơn Giá��61    6B   �� *DonGia+6m   �� 5{   "   $��Số Lượng Thuốc��61    6I   �� *	SLThuoc+6t   �� 5|   "   $��Thành Tiền��61    6E   �� *Tien+6m   5}      5      5�      5�      5�      � 5�   
   $��222,268,0,318q�6   .+�5�      �� $��122,92,113,-72q�6   #��[ 61   ���	#DD0F0E0E$��Center=�6�   Thống Kê Hóa Đơn6�   5�      � 5�   
   $��222,417,0,36q�6   .+�5�        .��5�      �� $
��Auto=�6   .��5�      �� -
   5        $��ListViewHoaDon��5�      ��66   ��  6N   �� *allThongKeHoaDon+ 5�      �� 5�      .P�5�   "   �� $	��STT��61    6>   �� *STT+6e   �� 5�   "   $��Ngày Khám��61    6D   �� *
NgayKham+6p   �� 5�   "   $��Tiền Khám��61    6D   �� *
TienKham+6p   �� 5�   "   $��Tiền Thuốc��61    6E   �� *	TienThuoc+6s   �� 5�   "   $��Tổng Tiền��61    6D   �� *
TongTien+6p   5�      5�      5�      5�      5�      5�      5�      