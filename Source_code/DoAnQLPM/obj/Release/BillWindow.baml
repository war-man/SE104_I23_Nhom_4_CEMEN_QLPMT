   M S B A M L   `   `   `  ����   DoAnQLPM    DoAnQLPM.BillWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -     � Title$  
Hóa Đơn��$	��650��$	��750��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���   � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� 
 BillVM � DataContext# [  � Icon$ Recource/Bill.ico��.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase	   Actions.	 6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 �� *LoadedCommand+  $ Closed��.	   
 �� *ClosedCommand+.���  � RowDefinitions �� $
��auto ��� $
��auto �.+�� .+��� $��10q� # MaterialDesignDisplay1TextBlock#��[ ���	#DD0F0E0E$��Center=�HÓA ĐƠN THANH TOÁN� .+�#  MaterialDesignThemes.Wpf.Card  -   $	��200��$
��Left=�$	��540��$��	10,28,0,0q�.���  �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto �.+�� $��0��$��
20 10 20 5q�.+��� $��Center=�#��[ ���	#DD0F0E0E$��Center=�Tạm Tính� $��1��.+�  $��5 5 5 5q�.���� -   $��comboboxNgayKham��$��Center=�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Ngày Khám Bệnh��$��12�� & "MaterialDesignFloatingHintComboBox#��[ ���� *ComboBoxNgayKham+   $ SelectionChanged��.	   
 �� *!SelectionChangedCommandNgayKham+   CommandParameter ��  �� ElementName$ comboboxNgayKham��� $��2��.+�  $��5 5 5 5q�.����  �� 
IsReadOnly . $��5 5 5 5q�$ Họ và Tên:�� % !MaterialDesignFloatingHintTextBox#��[ ���� *HoVaTenTamTinh+� $��3��.+�  $��5 5 5 5q�.���� -   $��TienKham�� . $��5 5 5 5q�$ Tiền Khám: ��#��[ ���� *TienKhamTamTinh+� $��4��.+�  $��5 5 5 5q�.���� -   $��	TienThuoc�� . $��5 5 5 5q�$ Tiền Thuốc: ��#��[ ���� *TienThuocTamTinh+� $��5��.+�  $��5 5 5 5q�.���� -   $��PhuThu��$��5 5 5 5q�$ Phụ Thu: ��#��[ ���� *PhuThuTamTinh+.��   $ TextChanged��.	   
 �� *TextChangedCommandPhuThu+ �� $ PhuThu��.��� $��6��.+�  $��5 5 5 5q�.���� -   $��TongTien�� . $��5 5 5 5q�$ Tổng Tiền: ��#��[ ���� *TongTienTamTinh+� $��7��$��5 5 5 5q�.+��� -   $��buttonThanhToan��$��Center=�  MaterialDesignRaisedButton#��[  � ToolTip$/ )Resource name: MaterialDesignRaisedButton��$��Thanh toán��$��5,0,0,0q�   $ Click��.	   $ comboboxNgayKham��
 �� *ThanhToanCommand+� $��222,54,10,512q�.+��� $��10q�#��[ ���	#DD0F0E0E$��Center=�Thống Kê Thuốc� $��222,123,0,294q�.+�  .���� $
��Auto=�.���� -	   $��ListViewThuoc������  �� *allThongKeThuoc+ �� View �� .P��� $	��STT�� �� DisplayMemberBinding �� *STT+�� $��Tên Thuốc�� �� *
TenThuoc+�� $��
Đơn Giá�� �� *DonGia+�� $��Số Lượng Thuốc�� �� *	SLThuoc+�� $��Thành Tiền�� �� *Tien+� $��222,268,0,318q�.+��� $��122,92,113,-72q�#��[ ���	#DD0F0E0E$��Center=�Thống Kê Hóa Đơn� $��222,417,0,36q�.+�  .���� $
��Auto=�.���� -
   $��ListViewHoaDon������  �� *allThongKeHoaDon+ �� .P��� $	��STT�� �� *STT+�� $��Ngày Khám�� �� *
NgayKham+�� $��Tiền Khám�� �� *
TienKham+�� $��Tiền Thuốc�� �� *	TienThuoc+�� $��Tổng Tiền�� �� *
TongTien+