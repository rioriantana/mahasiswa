<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<title>Laporan</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style  type="text/css">
    @page {
        size: A4 landscape;
        @top-center {
            content: element(header);
        }
    }
    table {
        border-collapse:collapse;
        border:1px solid #FF0000;
        font-size: 12px;
    }
    .title{
    	font-weight: bold;
    	text-align: center;
    }
    table td {
        border:1px solid #FF0000;
        padding: 2px;
    }
    td.center {
        text-align: center;
    }

</style>
</head>
<body>
<h3><center>Data Wisuda Jurusan Fisika FMIPA UNS<br>
Tahun Angkatan <g:formatDate format="yyyy" date="${tahunAngkatan}"/></center></h3>

<table width="100%">
    <tr>
        <td class="title">No. </td>
        <td class="title">NIM</td>
        <td  class="title">Nama</td>
        <td  class="title">Lama Studi</td>
        <td class="title"> Tanggal Masuk</td>
		<td class="title"> Tanggal Lulus</td>
		<td class="title"> Predikat Lulus</td>
		<td class="title"> Pembimbing 1</td>
		<td class="title"> Pembimbing 2</td>
		<td class="title"> Judul Skripsi</td>
		<td class="title"> Lama Skripsi</td>
		<td class="title"> IPK</td>
    </tr>
    <g:each in="${informasiInstance}" status="i" var="informasi">
        <tr>
            <td>${i+1}</td>
            <td >${informasi?.nim}</td>
            <td class="center">${informasi?.nama}</td>
            <td class="center">${informasi?.lamaStudi} Bulan</td>
            <td ><g:formatDate format="dd-MM-yyyy" date="${informasi?.tanggalMasuk}"/></td>
			<td ><g:formatDate format="dd-MM-yyyy" date="${informasi?.tanggalLulus}"/></td>
			<td >${informasi?.predikatLulus}</td>
			<td >${informasi?.pembimbing1}</td>
			<td >${informasi?.pembimbing2}</td>
			<td >${informasi?.judulSkripsi}</td>
			<td >${informasi?.lamaSkripsi} Bulan</td>
			<td >${informasi?.ipk}</td>
        </tr>
    </g:each>
    <tr>
    	<td class="title" colspan="8">Jumlah Wisuda</td>
    	<td class="title">${informasiInstanceCount}</td>
    	<td class="title">Rata-Rata IPK</td>
    	<td class="title" colspan="2">${rataJoin}</td>
    </tr>
</table>

</body>
</html>
