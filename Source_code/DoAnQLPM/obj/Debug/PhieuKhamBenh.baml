   M S B A M L   `   `   `  ����  DoAnQLPM    DoAnQLPM.PhieuKhamBenh   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	     � Title$  Phiếu Khám Bệnh��5   	   $	��700��6!   $	��600��6.      MaterialDesignBody#���   5      $��Regular"�5      $��13(�5	      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5
         TextRenderingMode$
 Auto=�5       � WindowStartupLocation$ CenterScreen=�5      #��� ��5        MaterialDesignFont#���  5       � 
ResizeMode$ NoResize=�5   	    	 PKBVM � DataContext# [ 5       � Icon$ Recource/PKB.ico��63   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase	   Actions.	 5      6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 6$   �� *LoadedCommand+5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   .+�5    
   � $��0��6   $��5 5 5 5q�6   .+�5!      �� $��10q�6    # MaterialDesignDisplay1TextBlock#��[ 6%   ���	#DD0F0E0E$��Center=�6u   Phiếu Khám Bệnh6�   5"      � 5#   
   $��1��6   $��5 5 5 5q�6   .+�5$      �  � ColumnDefinitions 5%      �� 5&      6+   �� 5'      6*   .+�5)      � $��0��6   .+�5*      ��  �� 
IsReadOnly . $��5 5 5 5q�6M   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Họ và Tên:��6^    % !MaterialDesignFloatingHintTextBox#��[ 6�   ��60   �� *TenBenhNhan+6�   5+      � 5,      $��1��6   .+�5-      �� $��5 5 15 5q�6j   $ Ngày khám��6|   #��[ 6�   ��6   �� *
NgayKham+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   5.      5/      50      � 52   
   $��2��6   $��5 5 5 5q�6   .+�53      �  54      �� 55      6*   �� 56      6*   .+�58      � $��0��6   .+�5:      �� $��5 5 15 5q�6l   $ Triệu chứng��6~   #��[ 6�   ��6   �� *
TrieuChung+$ TwoWay=�$ PropertyChanged=�6�   5=      � 5>      $��1��6   .+�5?      �� $��5 5 15 5q�6j   $ Dự đoán loại bệnh��6|   #��[ 6�   ��6   �� *
LoaiBenh+$ TwoWay=�$ PropertyChanged=�6�   5A      5B      5C      � 5D   
   $��3��6   $��5 5 0 5q�6   .+�5E      �  5F      �� 5H      6*   .+�5J      � $��0��6   .+�5K      ��   MaterialDesignRaisedButton#��[ 6A    � ToolTip$/ )Resource name: Thêm phiếu khám bệnh��6v   $��Thêm��6�   $��Center=�6�   $��5,0,0,0q�6�   ��6   �� *AddPKBCommand+5L      5N      5P      5Q      � 5R   
   $��4��6   $��	5 15 0 15q�6   .+�5S      � .+�5U      �� -   5        $��comboBoxThuoc��5U      $��5 5 15 5q�60   $ Thuốc��6�    �� 
IsEditable .   & "MaterialDesignFloatingHintComboBox#��[ 6�   ��6B   �� *
comboThuoc+ �� SelectedItem 6e   �� *	MaThuoc+$ TwoWay=� 5V        5W      $ SelectionChanged��6)   .	 5X        
 64   �� *SelectionChangedCommandThuoc+   CommandParameter 5Y   2   ��  �� ElementName$ comboBoxThuoc��5[      5]      �� 5^      $��5 5 15 5q�63   $ Số lượng��6E   #��[ 6p   ��6   �� *	SoLuong+6p   �� 5_      $��5 5 15 5q�64   $ Cách Dùng��6F   #��[ 6r   ��6   �� *
CachDung+6r   �� 5`      $��5 5 5 5q�6=   #��[ 6N   $3 -Resource name: Thêm chi tiết phiếu khám��6�   $��Thêm��6�   ��6   �� *AddThuocCommand+6�   �� 5a      $��5 5 5 5q�6@   #��[ 6Q   $2 ,Resource name: Xóa chi tiết phiếu khám��6�   $
��Xóa��6�   ��6   �� *DeleteThuocCommand+6�   5b      5c      � 5d   
   $��5��6   $��10,0,10,-227q�6   .+�5e      #  MaterialDesignThemes.Wpf.Card  $	��327��6"   .��5f      �� $
��Auto=�6   .��5g      �� -   5         ��Name$ DanhSachChiTietPKB��5g      ��6;   ��  6S   �� *allDataSDThuoc+ �� View 5h      �� 5i      .P�5j   "   �� $��Thuốc��61    �� DisplayMemberBinding 6@   �� *
TenThuoc+6l   �� 5k   "   $��Số lượng��61    6C   �� *	SLThuoc+6n   �� 5l   "   $��Cách dùng��61    6D   �� *
CachDung+6p   5m      5o      5p      5q      5r      5s      5t      