giaoVien(buiTienLoc, heThongThongTin_bm).
giaoVien(dangBinhPhuong, heThongThongTin_bm).
giaoVien(dangHoangHai,khoaHocMayTinh_bm).
giaoVien(buiVanThach,khoaHocMayTinh_bm).
giaoVien(caoXuanNam,congNghePhanMem_bm).
giaoVien(chauThanhDuc,thiGiacMayTinh).
giaoVien(buiDacThinh,mangMayTinhVaVienThong).
giaoVien(hoBaoQuoc, congNghePhanMem_bm).
giaoVien(phanHongDuy, congNgheTriThuc).
giaoVien(dongThiBichThuy, khoaHocMayTinh_bm).
giaoVien(hoLeThiKimNhung, thiGiacMayTinh).

chuyenNganh(congNghePhanMem).
chuyenNganh(heThongThongTin).
chuyenNganh(khoaHocMayTinh).
chuyenNganh(congNgheThongTin).

boMon(thiGiacMayTinh).
boMon(congNgheTriThuc).
boMon(khoaHocMayTinh_bm).
boMon(congNghePhanMem_bm).
boMon(heThongThongTin_bm).
boMon(mangMayTinhVaVienThong).

giaoSu(dongThiBichThuy).
phoGiaoSu(hoBaoQuoc).
phoGiaoSu(chauThanhDuc).
tienSi(buiTienLoc).
tienSi(dangBinhPhuong).
thacSi(dangHoangHai).
thacSi(caoXuanNam).
thacSi(buiDacThinh).
thacSi(hoLeThiKimNhung).

lop(cct1).
lop(cct2).
lop(cct3).
lop(cct4).
lop(cct5).
lop(cct6).

giaoVienChuNhiem(hoBaoQuoc,cct1).
giaoVienChuNhiem(dangHoangHai,cct2).
giaoVienChuNhiem(buiDacThinh,cct3)
giaoVienChuNhiem(hoLeThiKimNhung,cct4).
giaoVienChuNhiem(dangBinhPhuong,cct5).
giaoVienChuNhiem(phanHongDuy, cct6).


sinhVienLop(nguyenVanA,cct1).
sinhVienLop(nguyenHongHuy,cct5).
sinhVienLop(tranVanB,cct5).
sinhVienLop(nguyenHaiThien, cct6).
sinhVienLop(nguyenDucHuy,cct2).
sinhVienLop(nguyenAnhThi,cct2).
sinhVienLop(nguyenKhacHuy, cct4).
sinhVienLop(nguyenHoangTuAnh,cct3).

boMonCuaNganh(thiGiacMayTinh,khoaHocMayTinh).
boMonCuaNganh(congNgheTriThuc, khoaHocMayTinh).
boMonCuaNganh(khoaHocMayTinh_bm, khoaHocMayTinh).
boMonCuaNganh(heThongThongTin_bm, heThongThongTin).
boMonCuaNganh(congNghePhanMem_bm, congNghePhanMem).


truongKhoa(dongThiBichThuy).
phoKhoa(hoBaoQuoc).
phoKhoa(chauThanhDuc).

sinhVienTheoChuyenNganh(SV,CN):-sinhVienLop(SV,CL),giaoVienChuNhiem(GV,CL),giaoVien(GV,BM), boMonCuaNganh(BM,CN).
giaoVienThuocChuyenNganh(GV, CN):-giaoVien(GV,BM), boMonCuaNganh(BM,CN).
chuNhiemCuaSinhVien(GV,SV):-giaoVienChuNhiem(GV,CL), sinhVienLop(SV,CL).
boMonTheoHoc(SV,BM):-sinhVienLop(SV,CL),giaoVienChuNhiem(GV,CL),giaoVien(GV,BM).
truongBoMon(GV, BM):-giaoVienChuNhiem(GV,_),giaoVien(GV,BM),tienSi(GV).
coTheLamPhoKhoa(GV):-truongBoMon(GV,_),phoGiaoSu(GV).
coTheLamTruongKhoa(GV):-truongBoMon(Gv,_),giaoSu(GV).
tienSiCuaNganh(GV,CN):-giaoVienThuocChuyenNganh(GV,CN),tienSi(GV).
thacSiCuaNganh(GV,CN):-giaoVienThuocChuyenNganh(GV,CN),thacSi(GV).
phoGiaoSuCuaNganh(GV,CN):-giaoVienThuocChuyenNganh(GV,CN), phoGiaoSu(GV).
giaoSuCuaNganh(GV,CN):-giaoVienThuocChuyenNganh(GV,CN), giaoSu(GV).
lopTheoChuyenNganh(CL,CN):-giaoVienChuNhiem(GV,CL), giaoVien(GV,BM), boMonCuaNganh(BM,CN).
lopTheoBoMon(CL,BM):-giaoVienChuNhiem(GV,CL), giaoVien(GV,BM).




