   M S B A M L   `   `   `  ����   DoAnQLPM    DoAnQLPM.PhieuKhamBenh   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity    � Title$  Phiếu Khám Bệnh��$	��700��$	��600��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=� � WindowStartupLocation$ CenterScreen=�#��� ��  MaterialDesignFont#���   � 
ResizeMode$ NoResize=� 	 PKBVM � DataContext# [  � Icon$ Recource/PKB.ico��.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase	   Actions.	 6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 �� *LoadedCommand+.���  � RowDefinitions �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto �.+�� $��0��$��5 5 5 5q�.+��� $��10q� # MaterialDesignDisplay1TextBlock#��[ ���	#DD0F0E0E$��Center=�Phiếu Khám Bệnh� $��1��$��5 5 5 5q�.+��  � ColumnDefinitions �� �� .+�� $��0��.+���  �� 
IsReadOnly . $��5 5 5 5q�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Họ và Tên:�� % !MaterialDesignFloatingHintTextBox#��[ ���� *TenBenhNhan+� $��1��.+��� $��5 5 15 5q�$ Ngày khám��#��[ ���� *
NgayKham+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�� $��2��$��5 5 5 5q�.+��  �� �� .+�� $��0��.+��� $��5 5 15 5q�$ Triệu chứng��#��[ ���� *
TrieuChung+$ TwoWay=�$ PropertyChanged=�� $��1��.+��� $��5 5 15 5q�$ Dự đoán loại bệnh��#��[ ���� *
LoaiBenh+$ TwoWay=�$ PropertyChanged=�� $��3��$��5 5 0 5q�.+��  �� .+�� $��0��.+���   MaterialDesignRaisedButton#��[  � ToolTip$/ )Resource name: Thêm phiếu khám bệnh��$��Thêm��$��Center=�$��5,0,0,0q����� *AddPKBCommand+� $��4��$��	5 15 0 15q�.+�� .+��� -   $��comboBoxThuoc��$��5 5 15 5q�$ Thuốc�� �� 
IsEditable .   & "MaterialDesignFloatingHintComboBox#��[ ���� *
comboThuoc+ �� SelectedItem �� *	MaThuoc+$ TwoWay=�   $ SelectionChanged��.	   
 �� *SelectionChangedCommandThuoc+   CommandParameter ��  �� ElementName$ comboBoxThuoc���� $��5 5 15 5q�$ Số lượng��#��[ ���� *	SoLuong+�� $��5 5 15 5q�$ Cách Dùng��#��[ ���� *
CachDung+�� $��5 5 5 5q�#��[ $3 -Resource name: Thêm chi tiết phiếu khám��$��Thêm������ *AddThuocCommand+�� $��5 5 5 5q�#��[ $2 ,Resource name: Xóa chi tiết phiếu khám��$
��Xóa������ *DeleteThuocCommand+� $��5��$��10,0,10,-227q�.+�#  MaterialDesignThemes.Wpf.Card  $	��327��.���� $
��Auto=�.���� -    ��Name$ DanhSachChiTietPKB������  �� *allDataSDThuoc+ �� View �� .P��� $��Thuốc�� �� DisplayMemberBinding �� *
TenThuoc+�� $��Số lượng�� �� *	SLThuoc+�� $��Cách dùng�� �� *
CachDung+