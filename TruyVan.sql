use NHOM_10_Final

-- truy xuất thông tin của các ghế đã được đặt của một suất chiếu cụ thể
select ID_Ghe, ID_Phong, Vitri, Loai 
from Ghe
where ID_Ghe in (
	select Ghe.ID_Ghe 
	from Ghe, SuatChieu, Ve
	where Ghe.ID_Ghe = Ve.ID_ghe
	and Ve.ID_suat_chieu = SuatChieu.ID_suat_chieu
	and SuatChieu.ID_suat_chieu = 'SC000000014'
)

-- liệt kê các nhân viên có quản lý lớn hơn 20 tuổi và có tên bắt đầu bằng chữ H
SELECT nv.ID_nhan_vien, nv.Ten_nhan_vien, nv.ID_quan_ly, nv.Ngay_sinh
FROM NhanVien as nv
where nv.Ten_nhan_vien like 'H%' and nv.ID_quan_ly in (
	select nv1.ID_nhan_vien
	from NhanVien as nv1
	where year(getdate()) - year(nv1.Ngay_sinh) > 20
)
select * from NhanVien

--Liệt kê tên các phim chiếu vào ngày 31/10/2023, 
--tổng số ghế ở tất cả các phòng > 10, sắp xếp theo thứ tự giảm dần số lượng ghế
select Phim.Ten_phim, 
count(Ghe.ID_Ghe) as SoGhe
from Phim, Phong, Ghe, SuatChieu
where SuatChieu.ID_phim = phim.ID_phim
and SuatChieu.ID_phong = phong.ID_Phong
and Ghe.ID_Phong = Phong.ID_Phong
and convert(date, SuatChieu.Thoi_gian_chieu, 23) = '2023-10-31'
group by Phim.Ten_phim
having count(Ghe.ID_Ghe) > 10
order by SoGhe desc

--Liệt kê các nhân viên có doanh số bán hàng >500000 vào tháng 10/2023
select NhanVien.ID_nhan_vien, NhanVien.Ten_nhan_vien, 
sum(ThongTinDatVe.Thanh_tien) as Doanhso
from NhanVien, ThongTinDatVe
where NhanVien.ID_nhan_vien = ThongTinDatVe.ID_nhan_vien
and MONTH(ThongTinDatVe.Thoi_gian_dat) = 10 
and YEAR(ThongTinDatVe.Thoi_gian_dat) = 2023
group by NhanVien.ID_nhan_vien, NhanVien.Ten_nhan_vien
having sum(ThongTinDatVe.Thanh_tien) > 500000
order by Doanhso desc

--Liệt kê 3 khách hàng tạo thẻ sớm nhất
select top 3 kh.ID_khach_hang, kh.Ten_KH,The.ID_the, The.Ngay_tao
from KhachHang as kh, KhachHangCoThe, The
where kh.ID_khach_hang = KhachHangCoThe.ID_khach_hang
and KhachHangCoThe.C_ID_khach_hang = The.C_ID_khach_hang
and The.Ngay_het_han > getdate()
order by The.Ngay_tao 

--Liệt kê số tiền mà các khách hàng đã chi tiêu ở rạp
select Khachhang.ID_khach_hang, Ten_KH, 
(sum(HoaDon.Thanh_tien) + sum(ThongTinDatVe.Thanh_tien)) as tong
from KhachHang, HoaDon, ThongTinDatVe
where KhachHang.ID_khach_hang = HoaDon.ID_khach_hang
and KhachHang.ID_khach_hang = ThongTinDatVe.ID_khach_hang
group by KhachHang.ID_khach_hang, Ten_KH
order by tong desc

--Liệt kê những khách hàng xem phim Glass nhưng không xem phim Kungfu Panda 3
with tmp as (
select kh.ID_Khach_hang, Phim.Ten_phim
from KhachHang as kh, ThongTinDatVe, Ve, SuatChieu, Phim
where kh.ID_khach_hang = ThongTinDatVe.ID_khach_hang
and ThongTinDatVe.ID_dat = ve.ID_dat
and Ve.ID_suat_chieu = SuatChieu.ID_suat_chieu
and SuatChieu.ID_phim = Phim.ID_phim
)

select distinct tmp.ID_khach_hang, KhachHang.Ten_KH
from tmp, KhachHang
where tmp.ID_khach_hang in (
	select tmp.ID_khach_hang from tmp
	where tmp.Ten_phim = 'Glass'
	)
and tmp.ID_khach_hang not in (
	select tmp.ID_khach_hang from tmp
	where tmp.Ten_phim = 'Kungfu Panda 3'
)
and tmp.ID_khach_hang = KhachHang.ID_khach_hang

--Liệt kê các phim chỉ chiếu duy nhất vào ngày 30/10/2023
select p.ID_phim, p.Ten_phim
from Phim p, SuatChieu
where p.ID_phim = SuatChieu.ID_phim
group by p.ID_phim, p.Ten_phim
having max(convert(date, SuatChieu.Thoi_gian_chieu)) = '2023-10-30'
and min(convert(date, SuatChieu.Thoi_gian_chieu)) = '2023-10-30'



