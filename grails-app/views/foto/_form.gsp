<%@ page import="mahasiswa.Foto" %>



<div class="fieldcontain ${hasErrors(bean: fotoInstance, field: 'avatar', 'error')} ">
	<label for="avatar">
		<g:message code="foto.avatar.label" default="Avatar" />
		
	</label>
	<input type="file" id="avatar" name="avatar" />

</div>


<div class="fieldcontain ${hasErrors(bean: fotoInstance, field: 'nim', 'error')} ">
	<label for="nim">
		<g:message code="foto.nim.label" default="Nim" />
		
	</label>
	<g:textField name="nim" value="${fotoInstance?.nim}"/>

</div>

