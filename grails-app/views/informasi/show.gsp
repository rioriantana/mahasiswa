
<%@ page import="mahasiswa.Informasi" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'informasi.label', default: 'Informasi')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-informasi" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-informasi" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list informasi">
			
				<g:if test="${informasiInstance?.nim}">
				<li class="fieldcontain">
					<span id="nim-label" class="property-label"><g:message code="informasi.nim.label" default="Nim" /></span>
					
						<span class="property-value" aria-labelledby="nim-label"><g:fieldValue bean="${informasiInstance}" field="nim"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.nama}">
				<li class="fieldcontain">
					<span id="nama-label" class="property-label"><g:message code="informasi.nama.label" default="Nama" /></span>
					
						<span class="property-value" aria-labelledby="nama-label"><g:fieldValue bean="${informasiInstance}" field="nama"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.tanggalMasuk}">
				<li class="fieldcontain">
					<span id="tanggalMasuk-label" class="property-label"><g:message code="informasi.tanggalMasuk.label" default="Tanggal Masuk" /></span>
					
						<span class="property-value" aria-labelledby="tanggalMasuk-label"><g:formatDate date="${informasiInstance?.tanggalMasuk}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.tanggalLulus}">
				<li class="fieldcontain">
					<span id="tanggalLulus-label" class="property-label"><g:message code="informasi.tanggalLulus.label" default="Tanggal Lulus" /></span>
					
						<span class="property-value" aria-labelledby="tanggalLulus-label"><g:formatDate date="${informasiInstance?.tanggalLulus}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.cuti}">
				<li class="fieldcontain">
					<span id="cuti-label" class="property-label"><g:message code="informasi.cuti.label" default="Cuti" /></span>
					
						<span class="property-value" aria-labelledby="cuti-label"><g:fieldValue bean="${informasiInstance}" field="cuti"/> Semester</span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.lamaStudi}">
				<li class="fieldcontain">
					<span id="lamaStudi-label" class="property-label"><g:message code="informasi.lamaStudi.label" default="Lama Studi" /></span>
					
						<span class="property-value" aria-labelledby="lamaStudi-label"><g:fieldValue bean="${informasiInstance}" field="lamaStudi"/> Semester</span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.ipk}">
				<li class="fieldcontain">
					<span id="ipk-label" class="property-label"><g:message code="informasi.ipk.label" default="Ipk" /></span>
					
						<span class="property-value" aria-labelledby="ipk-label"><g:fieldValue bean="${informasiInstance}" field="ipk"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.predikatLulus}">
				<li class="fieldcontain">
					<span id="predikatLulus-label" class="property-label"><g:message code="informasi.predikatLulus.label" default="Predikat Lulus" /></span>
					
						<span class="property-value" aria-labelledby="predikatLulus-label"><g:fieldValue bean="${informasiInstance}" field="predikatLulus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.pembimbing1}">
				<li class="fieldcontain">
					<span id="pembimbing1-label" class="property-label"><g:message code="informasi.pembimbing1.label" default="Pembimbing1" /></span>
					
						<span class="property-value" aria-labelledby="pembimbing1-label"><g:fieldValue bean="${informasiInstance}" field="pembimbing1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.pembimbing2}">
				<li class="fieldcontain">
					<span id="pembimbing2-label" class="property-label"><g:message code="informasi.pembimbing2.label" default="Pembimbing2" /></span>
					
						<span class="property-value" aria-labelledby="pembimbing2-label"><g:fieldValue bean="${informasiInstance}" field="pembimbing2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.judulSkripsi}">
				<li class="fieldcontain">
					<span id="judulSkripsi-label" class="property-label"><g:message code="informasi.judulSkripsi.label" default="Judul Skripsi" /></span>
					
						<span class="property-value" aria-labelledby="judulSkripsi-label"><g:fieldValue bean="${informasiInstance}" field="judulSkripsi"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.lamaSkripsi}">
				<li class="fieldcontain">
					<span id="lamaSkripsi-label" class="property-label"><g:message code="informasi.lamaSkripsi.label" default="Lama Skripsi" /></span>
					
						<span class="property-value" aria-labelledby="lamaSkripsi-label"><g:fieldValue bean="${informasiInstance}" field="lamaSkripsi"/> Bulan</span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.asalSMA}">
				<li class="fieldcontain">
					<span id="asalSMA-label" class="property-label"><g:message code="informasi.asalSMA.label" default="Asal SMA" /></span>
					
						<span class="property-value" aria-labelledby="asalSMA-label"><g:fieldValue bean="${informasiInstance}" field="asalSMA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.tahunLulusSMA}">
				<li class="fieldcontain">
					<span id="tahunLulusSMA-label" class="property-label"><g:message code="informasi.tahunLulusSMA.label" default="Tahun Lulus SMA" /></span>
					
						<span class="property-value" aria-labelledby="tahunLulusSMA-label"><g:fieldValue bean="${informasiInstance}" field="tahunLulusSMA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.propinsiSMA}">
				<li class="fieldcontain">
					<span id="propinsiSMA-label" class="property-label"><g:message code="informasi.propinsiSMA.label" default="Propinsi SMA" /></span>
					
						<span class="property-value" aria-labelledby="propinsiSMA-label"><g:fieldValue bean="${informasiInstance}" field="propinsiSMA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.jenisKelamin}">
				<li class="fieldcontain">
					<span id="jenisKelamin-label" class="property-label"><g:message code="informasi.jenisKelamin.label" default="Jenis Kelamin" /></span>
					
						<span class="property-value" aria-labelledby="jenisKelamin-label"><g:fieldValue bean="${informasiInstance}" field="jenisKelamin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.wargaNegara}">
				<li class="fieldcontain">
					<span id="wargaNegara-label" class="property-label"><g:message code="informasi.wargaNegara.label" default="Warga Negara" /></span>
					
						<span class="property-value" aria-labelledby="wargaNegara-label"><g:fieldValue bean="${informasiInstance}" field="wargaNegara"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.tempatTanggalLahir}">
				<li class="fieldcontain">
					<span id="tempatTanggalLahir-label" class="property-label"><g:message code="informasi.tempatTanggalLahir.label" default="Tempat Tanggal Lahir" /></span>
					
						<span class="property-value" aria-labelledby="tempatTanggalLahir-label"><g:fieldValue bean="${informasiInstance}" field="tempatTanggalLahir"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="informasi.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${informasiInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.alamatTempatTinggal}">
				<li class="fieldcontain">
					<span id="alamatTempatTinggal-label" class="property-label"><g:message code="informasi.alamatTempatTinggal.label" default="Alamat Tempat Tinggal" /></span>
					
						<span class="property-value" aria-labelledby="alamatTempatTinggal-label"><g:fieldValue bean="${informasiInstance}" field="alamatTempatTinggal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.telepon}">
				<li class="fieldcontain">
					<span id="telepon-label" class="property-label"><g:message code="informasi.telepon.label" default="Telepon" /></span>
					
						<span class="property-value" aria-labelledby="telepon-label"><g:fieldValue bean="${informasiInstance}" field="telepon"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.sumberBiaya}">
				<li class="fieldcontain">
					<span id="sumberBiaya-label" class="property-label"><g:message code="informasi.sumberBiaya.label" default="Sumber Biaya" /></span>
					
						<span class="property-value" aria-labelledby="sumberBiaya-label"><g:fieldValue bean="${informasiInstance}" field="sumberBiaya"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.keteranganSumberBiaya}">
				<li class="fieldcontain">
					<span id="keteranganSumberBiaya-label" class="property-label"><g:message code="informasi.keteranganSumberBiaya.label" default="Keterangan Sumber Biaya" /></span>
					
						<span class="property-value" aria-labelledby="keteranganSumberBiaya-label"><g:fieldValue bean="${informasiInstance}" field="keteranganSumberBiaya"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.namaOrangTua}">
				<li class="fieldcontain">
					<span id="namaOrangTua-label" class="property-label"><g:message code="informasi.namaOrangTua.label" default="Nama Orang Tua" /></span>
					
						<span class="property-value" aria-labelledby="namaOrangTua-label"><g:fieldValue bean="${informasiInstance}" field="namaOrangTua"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.pekerjaanOrangTua}">
				<li class="fieldcontain">
					<span id="pekerjaanOrangTua-label" class="property-label"><g:message code="informasi.pekerjaanOrangTua.label" default="Pekerjaan Orang Tua" /></span>
					
						<span class="property-value" aria-labelledby="pekerjaanOrangTua-label"><g:fieldValue bean="${informasiInstance}" field="pekerjaanOrangTua"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informasiInstance?.alamatOrangTua}">
				<li class="fieldcontain">
					<span id="alamatOrangTua-label" class="property-label"><g:message code="informasi.alamatOrangTua.label" default="Alamat Orang Tua" /></span>
					
						<span class="property-value" aria-labelledby="alamatOrangTua-label"><g:fieldValue bean="${informasiInstance}" field="alamatOrangTua"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:informasiInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${informasiInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
