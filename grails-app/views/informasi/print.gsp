<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<title>Laporan</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style  type="text/css">
    @page {
        size: A4 portrait;
        @top-center {
            content: element(header);
        }
    }
    table {
        border-collapse:collapse;
        border:1px solid #FF0000;
        font-size: 14px;
    }
    .title{
    	font-weight: bold;
    }
    table td {
        border-bottom:1px solid #FF0000;
        border-bottom-style: dashed;
        padding: 2px;
    }
    td.center {
        text-align: center;
    }

</style>
</head>
<body>
<table width="100%" align="center">
			
				<g:if test="${informasiInstance?.nim}">
				<tr>
					<td width="30%" class="title"><span id="nim-label" class="property-label"><g:message code="informasi.nim.label" default="Nim" /></span></td>
					
						<td><span class="property-value" aria-labelledby="nim-label"><g:fieldValue bean="${informasiInstance}" field="nim"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.nama}">
				<tr>
					<td width="30%" class="title"><span id="nama-label" class="property-label"><g:message code="informasi.nama.label" default="Nama" /></span></td>
					
						<td><span class="property-value" aria-labelledby="nama-label"><g:fieldValue bean="${informasiInstance}" field="nama"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.tanggalMasuk}">
				<tr>
					<td width="30%" class="title"><span id="tanggalMasuk-label" class="property-label"><g:message code="informasi.tanggalMasuk.label" default="Tanggal Masuk" /></span></td>
					
						<td><span class="property-value" aria-labelledby="tanggalMasuk-label"><g:formatDate format="dd-MM-yyyy" date="${informasiInstance?.tanggalMasuk}" /></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.tanggalLulus}">
				<tr>
					<td width="30%" class="title"><span id="tanggalLulus-label" class="property-label"><g:message code="informasi.tanggalLulus.label" default="Tanggal Lulus" /></span></td>
					
						<td><span class="property-value" aria-labelledby="tanggalLulus-label"><g:formatDate format="dd-MM-yyyy" date="${informasiInstance?.tanggalLulus}" /></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.cuti}">
				<tr>
					<td width="30%" class="title"><span id="cuti-label" class="property-label"><g:message code="informasi.cuti.label" default="Cuti" /></span></td>
					
						<td><span class="property-value" aria-labelledby="cuti-label"><g:fieldValue bean="${informasiInstance}" field="cuti"/> Semester</span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.lamaStudi}">
				<tr>
					<td width="30%" class="title"><span id="lamaStudi-label" class="property-label"><g:message code="informasi.lamaStudi.label" default="Lama Studi" /></span></td>
					
						<td><span class="property-value" aria-labelledby="lamaStudi-label"><g:fieldValue bean="${informasiInstance}" field="lamaStudi"/> Semester</span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.ipk}">
				<tr>
					<td width="30%" class="title"><span id="ipk-label" class="property-label"><g:message code="informasi.ipk.label" default="Ipk" /></span></td>
					
						<td><span class="property-value" aria-labelledby="ipk-label"><g:fieldValue bean="${informasiInstance}" field="ipk"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.predikatLulus}">
				<tr>
					<td width="30%" class="title"><span id="predikatLulus-label" class="property-label"><g:message code="informasi.predikatLulus.label" default="Predikat Lulus" /></span></td>
					
						<td><span class="property-value" aria-labelledby="predikatLulus-label"><g:fieldValue bean="${informasiInstance}" field="predikatLulus"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.pembimbing1}">
				<tr>
					<td width="30%" class="title"><span id="pembimbing1-label" class="property-label"><g:message code="informasi.pembimbing1.label" default="Pembimbing1" /></span></td>
					
						<td><span class="property-value" aria-labelledby="pembimbing1-label"><g:fieldValue bean="${informasiInstance}" field="pembimbing1"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.pembimbing2}">
				<tr>
					<td width="30%" class="title"><span id="pembimbing2-label" class="property-label"><g:message code="informasi.pembimbing2.label" default="Pembimbing2" /></span></td>
					
						<td><span class="property-value" aria-labelledby="pembimbing2-label"><g:fieldValue bean="${informasiInstance}" field="pembimbing2"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.judulSkripsi}">
				<tr>
					<td width="30%" class="title"><span id="judulSkripsi-label" class="property-label"><g:message code="informasi.judulSkripsi.label" default="Judul Skripsi" /></span></td>
					
						<td><span class="property-value" aria-labelledby="judulSkripsi-label"><g:fieldValue bean="${informasiInstance}" field="judulSkripsi"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.lamaSkripsi}">
				<tr>
					<td width="30%" class="title"><span id="lamaSkripsi-label" class="property-label"><g:message code="informasi.lamaSkripsi.label" default="Lama Skripsi" /></span></td>
					
						<td><span class="property-value" aria-labelledby="lamaSkripsi-label"><g:fieldValue bean="${informasiInstance}" field="lamaSkripsi"/> Bulan</span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.asalSMA}">
				<tr>
					<td width="30%" class="title"><span id="asalSMA-label" class="property-label"><g:message code="informasi.asalSMA.label" default="Asal SMA" /></span></td>
					
						<td><span class="property-value" aria-labelledby="asalSMA-label"><g:fieldValue bean="${informasiInstance}" field="asalSMA"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.tahunLulusSMA}">
				<tr>
					<td width="30%" class="title"><span id="tahunLulusSMA-label" class="property-label"><g:message code="informasi.tahunLulusSMA.label" default="Tahun Lulus SMA" /></span></td>
					
						<td><span class="property-value" aria-labelledby="tahunLulusSMA-label"><g:fieldValue bean="${informasiInstance}" field="tahunLulusSMA"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.propinsiSMA}">
				<tr>
					<td width="30%" class="title"><span id="propinsiSMA-label" class="property-label"><g:message code="informasi.propinsiSMA.label" default="Propinsi SMA" /></span></td>
					
						<td><span class="property-value" aria-labelledby="propinsiSMA-label"><g:fieldValue bean="${informasiInstance}" field="propinsiSMA"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.jenisKelamin}">
				<tr>
					<td width="30%" class="title"><span id="jenisKelamin-label" class="property-label"><g:message code="informasi.jenisKelamin.label" default="Jenis Kelamin" /></span></td>
					
						<td><span class="property-value" aria-labelledby="jenisKelamin-label"><g:fieldValue bean="${informasiInstance}" field="jenisKelamin"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.wargaNegara}">
				<tr>
					<td width="30%" class="title"><span id="wargaNegara-label" class="property-label"><g:message code="informasi.wargaNegara.label" default="Warga Negara" /></span></td>
					
						<td><span class="property-value" aria-labelledby="wargaNegara-label"><g:fieldValue bean="${informasiInstance}" field="wargaNegara"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.tempatTanggalLahir}">
				<tr>
					<td width="30%" class="title"><span id="tempatTanggalLahir-label" class="property-label"><g:message code="informasi.tempatTanggalLahir.label" default="Tempat Tanggal Lahir" /></span></td>
					
						<td><span class="property-value" aria-labelledby="tempatTanggalLahir-label"><g:fieldValue bean="${informasiInstance}" field="tempatTanggalLahir"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.email}">
				<tr>
					<td width="30%" class="title"><span id="email-label" class="property-label"><g:message code="informasi.email.label" default="Email" /></span></td>
					
						<td><span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${informasiInstance}" field="email"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.alamatTempatTinggal}">
				<tr>
					<td width="30%" class="title"><span id="alamatTempatTinggal-label" class="property-label"><g:message code="informasi.alamatTempatTinggal.label" default="Alamat Tempat Tinggal" /></span></td>
					
						<td><span class="property-value" aria-labelledby="alamatTempatTinggal-label"><g:fieldValue bean="${informasiInstance}" field="alamatTempatTinggal"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.telepon}">
				<tr>
					<td width="30%" class="title"><span id="telepon-label" class="property-label"><g:message code="informasi.telepon.label" default="Telepon" /></span></td>
					
						<td><span class="property-value" aria-labelledby="telepon-label"><g:fieldValue bean="${informasiInstance}" field="telepon"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.sumberBiaya}">
				<tr>
					<td width="30%" class="title"><span id="sumberBiaya-label" class="property-label"><g:message code="informasi.sumberBiaya.label" default="Sumber Biaya" /></span></td>
					
						<td><span class="property-value" aria-labelledby="sumberBiaya-label"><g:fieldValue bean="${informasiInstance}" field="sumberBiaya"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.keteranganSumberBiaya}">
				<tr>
					<td width="30%" class="title"><span id="keteranganSumberBiaya-label" class="property-label"><g:message code="informasi.keteranganSumberBiaya.label" default="Keterangan Sumber Biaya" /></span></td>
					
						<td><span class="property-value" aria-labelledby="keteranganSumberBiaya-label"><g:fieldValue bean="${informasiInstance}" field="keteranganSumberBiaya"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.namaOrangTua}">
				<tr>
					<td width="30%" class="title"><span id="namaOrangTua-label" class="property-label"><g:message code="informasi.namaOrangTua.label" default="Nama Orang Tua" /></span></td>
					
						<td><span class="property-value" aria-labelledby="namaOrangTua-label"><g:fieldValue bean="${informasiInstance}" field="namaOrangTua"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.pekerjaanOrangTua}">
				<tr>
					<td width="30%" class="title"><span id="pekerjaanOrangTua-label" class="property-label"><g:message code="informasi.pekerjaanOrangTua.label" default="Pekerjaan Orang Tua" /></span></td>
					
						<td><span class="property-value" aria-labelledby="pekerjaanOrangTua-label"><g:fieldValue bean="${informasiInstance}" field="pekerjaanOrangTua"/></span></td>
					
				</tr>
				</g:if>
			
				<g:if test="${informasiInstance?.alamatOrangTua}">
				<tr>
					<td width="30%" class="title"><span id="alamatOrangTua-label" class="property-label"><g:message code="informasi.alamatOrangTua.label" default="Alamat Orang Tua" /></span></td>
					
						<td><span class="property-value" aria-labelledby="alamatOrangTua-label"><g:fieldValue bean="${informasiInstance}" field="alamatOrangTua"/></span></td>
					
				</tr>
				</g:if>
			
			</table>
</body>
</html>