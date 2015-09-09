package mahasiswa

class Informasi {
	String nim
	String nama
	Date tanggalMasuk
	Date tanggalLulus
	String cuti
	String lamaStudi
	String ipk
	String predikatLulus
	String pembimbing1
	String pembimbing2
	String judulSkripsi
	String lamaSkripsi
	String asalSMA
	String tahunLulusSMA
	String propinsiSMA
	String jenisKelamin
	String wargaNegara
	String tempatTanggalLahir
	String email
	String alamatTempatTinggal
	String telepon
	String sumberBiaya
	String keteranganSumberBiaya
	String namaOrangTua
	String pekerjaanOrangTua
	String alamatOrangTua
    static constraints = {
    	nim(nullable: true)
		nama(nullable: true)
		tanggalMasuk(nullable: true)
		tanggalLulus(nullable: true)
		cuti(nullable: true)
		lamaStudi(nullable: true)
		ipk(nullable: true)
		predikatLulus(nullable: true)
		pembimbing1(nullable: true)
		pembimbing2(nullable: true)
		judulSkripsi(nullable: true)
		lamaSkripsi(nullable: true)
		asalSMA(nullable: true)
		tahunLulusSMA(nullable: true)
		propinsiSMA(nullable: true)
		jenisKelamin(nullable: true)
		wargaNegara(nullable: true)
		tempatTanggalLahir(nullable: true)
		email(nullable: true)
		alamatTempatTinggal(nullable: true)
		telepon(nullable: true)
		sumberBiaya(nullable: true)
		keteranganSumberBiaya(nullable: true)
		namaOrangTua(nullable: true)
		pekerjaanOrangTua(nullable: true)
		alamatOrangTua(nullable: true)
    }
}
