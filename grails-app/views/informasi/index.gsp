
<%@ page import="mahasiswa.Informasi" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'informasi.label', default: 'Informasi')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-informasi" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-informasi" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nim" title="${message(code: 'informasi.nim.label', default: 'Nim')}" />
					
						<g:sortableColumn property="nama" title="${message(code: 'informasi.nama.label', default: 'Nama')}" />
					
						<g:sortableColumn property="tanggalMasuk" title="${message(code: 'informasi.tanggalMasuk.label', default: 'Tanggal Masuk')}" />
					
						<g:sortableColumn property="tanggalLulus" title="${message(code: 'informasi.tanggalLulus.label', default: 'Tanggal Lulus')}" />
					
						<g:sortableColumn property="cuti" title="${message(code: 'informasi.cuti.label', default: 'Cuti')}" />
					
						<g:sortableColumn property="lamaStudi" title="${message(code: 'informasi.lamaStudi.label', default: 'Lama Studi')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${informasiInstanceList}" status="i" var="informasiInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${informasiInstance.id}">${fieldValue(bean: informasiInstance, field: "nim")}</g:link></td>
					
						<td>${fieldValue(bean: informasiInstance, field: "nama")}</td>
					
						<td><g:formatDate format="dd-MM-yyyy" date="${informasiInstance.tanggalMasuk}" /></td>
					
						<td><g:formatDate format="dd-MM-yyyy" date="${informasiInstance.tanggalLulus}" /></td>
					
						<td>${fieldValue(bean: informasiInstance, field: "cuti")}</td>
					
						<td>${fieldValue(bean: informasiInstance, field: "lamaStudi")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${informasiInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
