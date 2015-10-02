<%@ page import="mahasiswa.Informasi" %>



<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'nim', 'error')} ">
	<label for="nim">
		<g:message code="informasi.nim.label" default="Nim" />
		
	</label>
	<g:textField name="nim" value="${informasiInstance?.nim}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'nama', 'error')} ">
	<label for="nama">
		<g:message code="informasi.nama.label" default="Nama" />
		
	</label>
	<g:textField name="nama" value="${informasiInstance?.nama}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'tanggalMasuk', 'error')} ">
	<label for="tanggalMasuk">
		<g:message code="informasi.tanggalMasuk.label" default="Tanggal Masuk" />
		
	</label>
	<g:datePicker name="tanggalMasuk" precision="day"  value="${informasiInstance?.tanggalMasuk}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'tanggalLulus', 'error')} ">
	<label for="tanggalLulus">
		<g:message code="informasi.tanggalLulus.label" default="Tanggal Lulus" />
		
	</label>
	<g:datePicker name="tanggalLulus" precision="day"  value="${informasiInstance?.tanggalLulus}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'cuti', 'error')} ">
	<label for="cuti">
		<g:message code="informasi.cuti.label" default="Cuti" />
		
	</label>
	<g:field type="number" name="cuti" value="${informasiInstance?.cuti}"/> Semester

</div>


<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'ipk', 'error')} ">
	<label for="ipk">
		<g:message code="informasi.ipk.label" default="IPK" />
		
	</label>
	<g:field type="number" max="4" min="0" step="0.01" name="ipk" value="${informasiInstance?.ipk}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'pembimbing1', 'error')} ">
	<label for="pembimbing1">
		<g:message code="informasi.pembimbing1.label" default="Pembimbing1" />
		
	</label>
	<g:textField name="pembimbing1" value="${informasiInstance?.pembimbing1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'pembimbing2', 'error')} ">
	<label for="pembimbing2">
		<g:message code="informasi.pembimbing2.label" default="Pembimbing2" />
		
	</label>
	<g:textField name="pembimbing2" value="${informasiInstance?.pembimbing2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'judulSkripsi', 'error')} ">
	<label for="judulSkripsi">
		<g:message code="informasi.judulSkripsi.label" default="Judul Skripsi" />
		
	</label>
	<g:textArea rows="5" cols="5" name="judulSkripsi" value="${informasiInstance?.judulSkripsi}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'lamaSkripsi', 'error')} ">
	<label for="lamaSkripsi">
		<g:message code="informasi.lamaSkripsi.label" default="Lama Skripsi" />
		
	</label>
	<g:field type="number" name="lamaSkripsi" value="${informasiInstance?.lamaSkripsi}"/> Bulan

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'asalSMA', 'error')} ">
	<label for="asalSMA">
		<g:message code="informasi.asalSMA.label" default="Asal SMA" />
		
	</label>
	<g:textField name="asalSMA" value="${informasiInstance?.asalSMA}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'tahunLulusSMA', 'error')} ">
	<label for="tahunLulusSMA">
		<g:message code="informasi.tahunLulusSMA.label" default="Tahun Lulus SMA" />
		
	</label>
	<g:field type="number" name="tahunLulusSMA" value="${informasiInstance?.tahunLulusSMA}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'propinsiSMA', 'error')} ">
	<label for="propinsiSMA">
		<g:message code="informasi.propinsiSMA.label" default="Propinsi SMA" />
		
	</label>
	<g:textField name="propinsiSMA" value="${informasiInstance?.propinsiSMA}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'jenisKelamin', 'error')} ">
	<label for="jenisKelamin">
		<g:message code="informasi.jenisKelamin.label" default="Jenis Kelamin" />
		
	</label>
	<g:select name="jenisKelamin" from="${informasiInstance.constraints.jenisKelamin.inList}" value="${informasiInstance?.jenisKelamin}" valueMessagePrefix="informasi.jenisKelamin"/>

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'wargaNegara', 'error')} ">
	<label for="wargaNegara">
		<g:message code="informasi.wargaNegara.label" default="Warga Negara" />
		
	</label>
	<g:select name="wargaNegara" from="${informasiInstance.constraints.wargaNegara.inList}" value="${informasiInstance?.wargaNegara}" valueMessagePrefix="informasi.wargaNegara"/>

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'tempatTanggalLahir', 'error')} ">
	<label for="tempatTanggalLahir">
		<g:message code="informasi.tempatTanggalLahir.label" default="Tempat Tanggal Lahir" />
		
	</label>
	<g:textField name="tempatTanggalLahir" value="${informasiInstance?.tempatTanggalLahir}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="informasi.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${informasiInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'alamatTempatTinggal', 'error')} ">
	<label for="alamatTempatTinggal">
		<g:message code="informasi.alamatTempatTinggal.label" default="Alamat Tempat Tinggal" />
		
	</label>
	<g:textField name="alamatTempatTinggal" value="${informasiInstance?.alamatTempatTinggal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'telepon', 'error')} ">
	<label for="telepon">
		<g:message code="informasi.telepon.label" default="Telepon" />
		
	</label>
	<g:textField name="telepon" value="${informasiInstance?.telepon}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'sumberBiaya', 'error')} ">
	<label for="sumberBiaya">
		<g:message code="informasi.sumberBiaya.label" default="Sumber Biaya" />
		
	</label>
	<g:textField name="sumberBiaya" value="${informasiInstance?.sumberBiaya}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'keteranganSumberBiaya', 'error')} ">
	<label for="keteranganSumberBiaya">
		<g:message code="informasi.keteranganSumberBiaya.label" default="Keterangan Sumber Biaya" />
		
	</label>
	<g:textField name="keteranganSumberBiaya" value="${informasiInstance?.keteranganSumberBiaya}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'namaOrangTua', 'error')} ">
	<label for="namaOrangTua">
		<g:message code="informasi.namaOrangTua.label" default="Nama Orang Tua" />
		
	</label>
	<g:textField name="namaOrangTua" value="${informasiInstance?.namaOrangTua}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'pekerjaanOrangTua', 'error')} ">
	<label for="pekerjaanOrangTua">
		<g:message code="informasi.pekerjaanOrangTua.label" default="Pekerjaan Orang Tua" />
		
	</label>
	<g:textField name="pekerjaanOrangTua" value="${informasiInstance?.pekerjaanOrangTua}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: informasiInstance, field: 'alamatOrangTua', 'error')} ">
	<label for="alamatOrangTua">
		<g:message code="informasi.alamatOrangTua.label" default="Alamat Orang Tua" />
		
	</label>
	<g:textField name="alamatOrangTua" value="${informasiInstance?.alamatOrangTua}"/>

</div>

