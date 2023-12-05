create database computer;
use computer;
create table tinh_trang_chi_tiet(
	ma_tinh_trang_chi_tiet int primary key auto_increment,
    mo_ta_tinh_trang varchar(250)
);
create table tinh_trang(
	ma_tinh_trang int primary key auto_increment,
    ma_tinh_trang_chi_tiet int,
    ten_tinh_trang varchar(50),
    foreign key (ma_tinh_trang_chi_tiet) references tinh_trang_chi_tiet(ma_tinh_trang_chi_tiet)
);
create table may_tinh(
	ma_may_tinh int primary key auto_increment,
    ten_may_tinh varchar(50),
    ram varchar(50),
    chip varchar(50),
    hang varchar(50),
    ma_tinh_trang int ,
    is_delete bit default 0,
	foreign key (ma_tinh_trang) references tinh_trang(ma_tinh_trang)
);
create table loai_dich_vu(
	id_loai_dich_vu int primary key auto_increment,
    ten_loai_dich_vu varchar(50)
);
create table dich_vu_di_kem(
	id_dich_vu_di_kem int primary key auto_increment,
    ten_dich_vu_di_kem varchar(50),
    gia_dich_vu_di_kem double,
    id_loai_dich_vu int,
    foreign key (id_loai_dich_vu) references loai_dich_vu(id_loai_dich_vu)
);
create table bang_su_dung(
	id_bang_su_dung int primary key auto_increment,
    thoi_gian_bat_dau datetime,
    thoi_gian_ket_thuc datetime,
    ma_may_tinh int,
    foreign key (ma_may_tinh) references may_tinh(ma_may_tinh)
);
create table dich_vu_chi_tiet(
	id_dich_vu_chi_tiet int primary key auto_increment,
    id_dich_vu_di_kem int,
    id_bang_su_dung int,
    so_luong int,
    foreign key (id_dich_vu_di_kem) references dich_vu_di_kem(id_dich_vu_di_kem),
    foreign key (id_bang_su_dung) references bang_su_dung(id_bang_su_dung)
);

