   M S B A M L   `   `   `  ���� C  ?DoAnQLPM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:DoAnQLPM.ControlBarDoAnQLPM.ControlBar  9!clr-namespace:DoAnQLPM.ControlBarDoAnQLPM.ControlBar      DoAnQLPM.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  2
ControlBar!clr-namespace:DoAnQLPM.ControlBar  *uc!clr-namespace:DoAnQLPM.ControlBar  -     �Name$  
mainWindow�� � Title$# Quản Lý Phòng Mạch CEEM��$	��600��$	��750�� � WindowStartupLocation$ CenterScreen=�   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=�#��� ��  MaterialDesignFont#���   � 
ResizeMode$ NoResize=� � Icon$ Recource/Window.ico�� � 	Resources    BooleanToVisibilityConverter��%   &	       ��  � DataContext �� 	 �� ResourceKey$	 MainVM��.  (System.Windows.Interactivity.Interaction
   Triggers
 /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *LoadedViewConmand+   CommandParameter ��  �� ElementName$ 
mainWindow��.��� .+��� .@��� ����  �� Orientation$ Vertical=�$	��170��$��50��
�������.+��� $��5 5 5 0q�$��Bệnh Nhân��$��Center=�'  !MaterialDesignThemes.Wpf.PackIcon  $��Center=�$��30��$��30���  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ AccountMultiplePlus=�.���  � RowDefinitions �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� .+�� $��0��$��	5 5 15 15q�.+��� $��10q� # MaterialDesignDisplay1TextBlock#��[ ���	#DD0F0E0E$��Center=��� $�QUẢN LÝ BỆNH NHÂN��� $��1��$��5 5 5 5q�.+��  � ColumnDefinitions �� $	��200 ��� .+�]� $��2��$��	0,0,264,0q�.+��� $ 
Horizontal=�+  %MaterialDesignThemes.Wpf.RippleAssist   
IsCentered . .+�(	  "MaterialDesignThemes.Wpf.ColorZone	   	  Mode$ Standard=�$��8 4 8 4q� 	  CornerRadius$ 2�� K� ZIndex$ 1��$��16 0 0 0q�+
  %MaterialDesignThemes.Wpf.ShadowAssist 
  ShadowDepth$ Depth1=�$	��344��.���  �� $
��Auto ��� $��* ��� $
��Auto �.+���   MaterialDesignToolButton#���  .��  $ Magnify=� J� Opacity$	 .56Q��� -    ��Name$ textBoxFind��$��1��$��8 0 0 0q�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$" Nhập họ tên tìm kiếm��.  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�$��0q�$	��200��$��Center=����� *
TimHoVaTen+.��
   $ TextChanged��.    �� *TextChangedCommandBenhNhan+ �� $ textBoxFind��.����  & "MaterialDesignToolForegroundButton#���  $��2������ *IsOnCommandBenhNhan+
   $ Click��.    �� *closeCommandBenhNhan+ �� $ textBoxFind��.��  $ CloseCircle=�$	 .56Q�$��8 0 0 0q�� $��3��$��	5 15 0 15q�.+�� .+��� $��5 5 15 5q�$ 	Họ tên�� % !MaterialDesignFloatingHintTextBox#��[ ���� *	HoVaTen+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� $��5 5 15 5q�$ Giới tính�� �� 
IsEditable .   & "MaterialDesignFloatingHintComboBox#��[ ���� *comboGioiTinh+  �� SelectedItem  �� *
GioiTinh+$ TwoWay=��� $��5 5 15 5q�$ 	Năm sinh��#��[ ���� *	NamSinh+�� $��5 5 15 5q�$ Địa chỉ��#��[ ���� *DiaChi+�� $��5 5 5 5q�  MaterialDesignRaisedButton#��[ ! � ToolTip$'! !Resource name: Thêm bệnh nhân��$��Thêm������ *AddCommandBenhNhan+�� $��5 5 5 5q�#��[ $&!  Resource name: Xóa bệnh nhân��$
��Xóa������ *DeleteCommandBenhNhan+�� $��5 5 5 5q�#��[ $'! !Resource name: Sửa bệnh nhân��$��Sửa������ *EditCommandBenhNhan+�� $��5 5 5 5q�#��[ $.! (Resource name: Đặt lại các Textbox��$��Đặt Lại������ *ResetCommandBenhNhan+� $��4��.+�#  MaterialDesignThemes.Wpf.Card  .���� $
��Auto=�.���� -   " ��Name$" DanhSachBenhNhan������ *ListBenhNhan+$ TwoWay=�$ PropertyChanged=�  �� *SelectedItemBenhNhan+$ TwoWay=�# �� View# �� .P��� $��	Họ Tên��$ �� DisplayMemberBinding$ �� *	HoVaTen+�� $��Giới Tính��$ �� *
GioiTinh+�� $��	Năm Sinh��$ �� *	NamSinh+�� $��Địa Chỉ��$ �� *DiaChi+�� % �� CellTemplate% �� .R��� & ��Name$& 	btnLapPKB��#��[ $��	Lập PKB��$y�Hidden=����� *%#DataContext.LapPhieuKhamBenhCommand+$ DanhSachBenhNhan������ *DataContext+$ DanhSachBenhNhan��' �� Triggers' �� ( �� Value$
( True��) �� Binding) �� *
IsSelected+* �� RelativeSource* �� + �� AncestorType"+ ��.a��� , �� 
TargetName$, 	btnLapPKB��- �� Property- � y�. �� Value$. Visible=��� % �� .R��� $& btnThanhToan��#��[ $��Thanh Toán��$y�Hidden=����� *DataContext.ThanhToanCommand+$ DanhSachBenhNhan������ *
DataContex+$ DanhSachBenhNhan��' �� $
( True��) �� *
IsSelected+* �� "+ ��.a��� $, btnThanhToan��- � y�$. Visible=��� -   / ��Name$/ KhoThuoc������ $ Vertical=�$	��172��
�������.+��� $��Kho Thuốc��$��Center=�  $��Center=�$��30��$��30��$ HomeAssistant=�.���  �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� .+�� $��0��$��	5 5 15 15q�.+��� $��10q�#��[ ���	#DD0F0E0E$��Center=��� $�QUẢN LÝ KHO THUỐC��� $��1��$��5 5 5 5q�.+��  �� $	��200 ��� .+�]� $��2��$��	0,0,264,0q�.+��� $ 
Horizontal=� . .+�	  $ Standard=�$��8 4 8 4q�$ 2��$ 1��$��16 0 0 0q�$ Depth1=�$	��344��.���  �� $
��Auto ��� $��* ��� $
��Auto �.+��� #���  .��  $ Magnify=�$	 .56Q��� -   $ textBoxFindThuoc��$��1��$��8 0 0 0q�$% Nhập tên thuốc tìm kiếm��$ Hidden=�$��0q�$	��200��$��Center=����� *TimTenThuoc+.��
   $ TextChanged��.    �� *TextChangedCommandThuoc+ �� $ textBoxFindThuoc��.���� #���  $��2������ *IsOnCommandThuoc+
   $ Click��.    �� *closeCommandThuoc+ �� $ textBoxFindThuoc��.��  $ CloseCircle=�$	 .56Q�$��8 0 0 0q�� $��3��$��	5 15 0 15q�.+�� .+��� $��5 5 15 5q�$ Tên Thuốc��#��[ ���� *
TenThuoc+$ TwoWay=�$ PropertyChanged=��� $��5 5 15 5q�$ 
Đơn Vị�� .  #��[ ���� *
comboDonVi+  �� *DonVi+$ TwoWay=��� $��5 5 15 5q�$ 
Đơn Giá��#��[ ���� *DonGia+�� $��5 5 5 5q�#��[ $"! Resource name: Thêm thuốc��$��Thêm������ *AddCommandThuoc+�� $��5 5 5 5q�#��[ $!! Resource name: Xóa thuốc��$
��Xóa������ *DeleteCommandThuoc+�� $��5 5 5 5q�#��[ $"! Resource name: Sửa thuốc��$��Sửa������ *EditCommandThuoc+�� $��5 5 5 5q�#��[ $.! (Resource name: Đặt lại các Textbox��$��Đặt Lại������ *ResetCommandThuoc+� $��4��.+�  .���� $
��Auto=�.���� -   $" DanhSachThuoc������ *	ListThuoc+$ TwoWay=�$ PropertyChanged=�  �� *SelectedItemThuoc+$ TwoWay=�# �� .P��� $��Tên Thuốc��$ �� *
TenThuoc+�� $��
Đơn Vị��$ �� *DonVi+�� $��
Đơn Giá��$ �� *DonGia+�� ���� $ Vertical=�$	��170��
�������.+��� $��	Báo Cáo��$��Center=�  $��Center=�$��30��$��30��$ ChartAreaspline=�.���  �� $
��auto �$	��595���� $
��auto ��� $
��auto �.+��� 0 �� TabStripPlacement$
0 Left=�$��0,0,-2,0q�$
��Left=�$	��740��$	��511��$	��Top=� 1 �� 
TargetType2 � LayoutTransform3 �� Angle��%d   '��       �� "1 ��.��� - � ��. �� .R��� #��z��2 �� $	3 270Q��� - � ��$. 4q�z�V� .~��� �� 4 �� AngleX$4 0.001Q��� $3 -0.065Q�T� 5 T� X$5 0.005Q�.@��� ���� $ Vertical=�$	��245��
�������.+��� $��Doanh Thu Theo Ngày��$��Center=�  $��Center=�$��30��$��20��$ Cash100=�.��� .+�� $��	0,0,0,450q�.+��� $��10q�#��[ ���	#DD0F0E0E$��Center=��� $$�BÁO CÁO DOANH THU THEO NGÀY��� $��10,55,-10,387q�.+��  �� �� .+�� $��0��$��Right=�$	��110��.+�  $��5 5 0 5q�.���� -   6 ��Name$6 comboboxDoanhThu��$��Center=�$ Tháng��$��12��#��[ ���� *ThangDoanhThu+
   $ SelectionChanged��.    �� *'%SelectionChangedCommandBaoCaoDoanhThu+ �� $ comboboxDoanhThu��.@��� $��Một���� $	��Hai���� $��Ba���� $��Bốn���� $
��Năm���� $
��Sáu���� $��Bảy���� $
��Tám���� $��Chín���� $��Mười���� $��Mười Một���� $��Mười Hai��� $��1��.+��� $��5 5 5 5q�#��[ $��40��$6! 0Resource name: Thống kê doanh thu theo tháng��$��Thống kê��$
��Left=����� *IsOnClickDoanhThu+
   $ Click��.    �� * ClickFindCommandBaoCaoDoanhThu+� $��10,118,10,10q�.+�  $��10 10 10 10q�.���� $
��Auto=�.���� ����  �� *	allData+# �� .P��� $	��STT��$ �� *STT+�� $��Ngày��$ �� *Ngay+�� $��Số bệnh nhân��$ �� *
SoBenhNhan+�� $��	Doanh thu��$ �� *
DoanhThu+�� $��	Tỉ lệ��$ �� *TiLe+�� ���� $ Vertical=�$	��245��
�������.+��� $��Sử Dụng Thuốc��$��Center=�  $��Center=�$��30��$��20��$ 
MedicalBag=�.��� .+�� $��	0,0,0,450q�.+��� $��10q�#��[ ���	#DD0F0E0E$��Center=��� $#�BÁO CÁO SỬ DỤNG THUỐC��� $��10,55,-10,387q�.+��  �� �� .+�� $��0��$��Right=�$	��110��.+�  $��5 5 0 5q�.���� -   $6 comboboxSDThuoc��$��Center=�$ Tháng��$��12��#��[ ���� *ThangSDThuoc+
   $ SelectionChanged��.    �� *&$SelectionChangedCommandBaoCaoSDThuoc+ �� $ comboboxSDThuoc��.@��� $��Một���� $	��Hai���� $��Ba���� $��Bốn���� $
��Năm���� $
��Sáu���� $��Bảy���� $
��Tám���� $��Chín���� $��Mười���� $��Mười Một���� $��Mười Hai��� $��1��.+��� $��5 5 5 5q�#��[ $��40��$@! :Resource name: Thống kê thuốc sử dụng theo tháng��$��Thống kê��$
��Left=����� *IsOnClickSDThuoc+
   $ Click��.    �� *ClickFindCommandBaoCaoSDThuoc+� $��10,118,10,10q�.+�  $��10 10 10 10q�.���� $
��Auto=�.���� ����  �� *allDataSDThuoc+# �� .P��� $	��STT��$ �� *STT+�� $��Tên Thuốc��$ �� *
TenThuoc+�� $��
Đơn Vị��$ �� *DonVi+�� $��Số Lượng��$ �� *	SoLuong+�� $��Số Lượng Dùng��$ �� *SLDung+�� ���� $ Vertical=�$	��170��
�������.+��� $��Cài Đặt��$��Center=�  $��Center=�$��30��$��30��$	 Fan=�.���� -	   7 ��Name$7 tabControlSetting��$
0 Left=�$��0,0,-2,0q�$
��Left=�$	��740��$	��511��$	��Top=� ��%d   '��       �� "1 ��.��� - � ��. �� .R��� #��z��2 �� $	3 270Q��� - � ��$. 4q�z�V� .~��� �� $4 0.001Q��� $3 -0.065Q�T� $5 0.005Q�.@��� ���� $ Vertical=�$	��163��
�������.+��� $��Giới Thiệu��$��Center=�  $��Center=�$��30��$��20��$ Information=�.��� .+�� $��	0,0,0,450q�.+��� $��10q�#��[ ���	#DD0F0E0E$��Center=��� $�THÔNG TIN TÀI KHOẢN��� $��10,60,10,10q�.+�� $��215,10,216,138q�.+�&   MaterialDesignThemes.Wpf.Flipper  $��10,3,0,0q�8   FrontContent8 � $	��256��$	��200�� �� $	��160 ��� $��* �.+�	  $ PrimaryLight=�$��Stretch=�.��  $ AccountCircle=�$	��128��$	��128��$��Center=�$��Center=��� $��1��$��Center=�$��Center=�.+��� -
   9 ��Name$9 labelLoaiTK��$��Center=��� -   $9 labelTenHienThi��$��Center=���  	 MaterialDesignFlatButton#��[	 :   FlipCommand#��Z: $��0 4 0 0q�$��Thay đổi thông tin��;   BackContent; � $	��256��$	��200�� �� $
��Auto ��� $��* �.+�	  $ Accent=�$��6q�.���� $ 
Horizontal=�.+��� #��[ #��Z: $
��Left=�.��  $ 	ArrowLeft=�$��Right=��� $��8 0 0 0q�$��Center=��� $�Thay Đổi Thông Tin��� $��1��$��0 6 0 0q�$��Center=�$	��Top=�$	��172�� �� �� �� �� .+��� $ Nhập Tên Hiển Thị������ *
TenThayDoi+�� $��1��$ Nhập mật khẩu������ *MatKhauThayDoi+�� $��2��$��5 5 5 5q�#��[ $��Thay Đổi������ *ThayDoiThongTin+� $��200,405,-200,-255q�.+�� $��	156,0,0,0q�.+��� $&�� Liên hệ nhóm phát triển: ��� $��	392,0,0,0q�.+��� �� -   < ��Name$< hyper��$=��7https://github.com/NamBang/SE104_I23_Nhom_4_CEMEN_QLPMT?�.��� $�
Click here���� -   $/ TaiKhoan������ $ Vertical=�$	��163��
�������.+��� $��Tài Khoản��$��Center=�  $��Center=�$��30��$��20��$ AccountEdit=�.��� .+�� $��	0,0,0,450q�.+��� $��10q�#��[ ���	#DD0F0E0E$��Center=��� $�QUẢN LÝ TÀI KHOẢN��� $��10,91,10,368q�.+��  �� $	��200 ��� .+�]� $��2��$��	0,0,264,0q�.+��� $ 
Horizontal=� . .+�	  $ Standard=�$��8 4 8 4q�$ 2��$ 1��$��16 0 0 0q�$ Depth1=�$	��344��.���  �� $
��Auto ��� $��* ��� $
��Auto �.+��� #���  .��  $ Magnify=�$	 .56Q��� -   $ textBoxFindTaiKhoan��$��1��$��8 0 0 0q�$* $Nhập tên tài khoản tìm kiếm��$ Hidden=�$��0q�$	��200��$��Center=����� *TimTenTaiKhoan+.��
   $ TextChanged��.    �� *TextChangedCommandTaiKhoan+ �� $ textBoxFindTaiKhoan��.���� #���  $��2������ *IsOnCommandTaiKhoan+
   $ Click��.    �� *closeCommandTaiKhoan+ �� $ textBoxFindTaiKhoan��.��  $ CloseCircle=�$	 .56Q�$��8 0 0 0q�� $��10,172,10,286q�.+�� .+��� $��5 5 15 5q�$ Tài khoản��#��[ ���� *
username+�� $��5 5 15 5q�$ Tên hiển thị��#��[ ���� *
tenhienthi+�� $��5 5 15 5q�$ Mật khẩu��#��[ ���� *
password+�� $��5 5 5 5q�#��[ $%! Resource name: Tìm tài khoàn��$��Thêm������ *AddCommandTaiKhoan+�� $��5 5 5 5q�#��[ $&!  Resource name: Xóa tài khoản��$
��Xóa������ *DeleteCommandTaiKhoan+�� $��5 5 5 5q�#��[ $'! !Resource name: Sửa tài khoản��$��Sửa������ *EditCommandTaiKhoan+�� $��5 5 5 5q�#��[ $.! (Resource name: Đặt lại các Textbox��$��Đặt Lại������ *ResetCommandTaiKhoan+� $��10,224,10,10q�.+�  .���� $
��Auto=�.���� -   $" DanhSachTaiKhoan��$��Stretch=����� *ListTaiKhoan+$ TwoWay=�$ PropertyChanged=�  �� *SelectedItemTaiKhoan+$ TwoWay=�# �� .P��� $��Tài khoản��$ �� *
username+�� $��Tên Hiển Thị��$ �� *
tenhienthi+�� $��Mật Khẩu��$ �� *
password+�� -   $/ 	QuyetDinh������ $ Vertical=�$	��163��
�������.+��� $��Quyết Định��$��Center=�  $��Center=�$��30��$��20��$ Delete=�.��� .+�� $��0��.+��� $��10q�#��[ ���	#DD0F0E0E$��Center=��� $!�THAY ĐỔI QUYẾT ĐỊNH��� $��0,69,0,0q�.+��� -   = ��Name$= label��$/��)Số Bệnh Nhân Tối Đa Trong Ngày: ��$
��Left=�$��
100,50,0,0q�$	��Top=�$	��214���� -   $= label1��$��Tiền Khám��$
��Left=�$��100,100,0,0q�$	��Top=��� -   $ 
soBenhNhan��$
��Left=�$��35��$��
458,45,0,0q�> �� TextWrapping$
> Wrap=�$	��Top=�$	��129������ *BenhNhanToiDa+�� -   $ tienKham��$
��Left=�$��34��$��
458,96,0,0q�$
> Wrap=�$	��Top=�$	��129������ *
TienKham+�� -   $& button��$��Thay Đổi��$
��Left=�$��307,191,0,0q�$	��Top=�$��90��