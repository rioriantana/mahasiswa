
<%@ page import="mahasiswa.Foto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'foto.label', default: 'Foto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-foto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-foto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list foto">
			
				<g:if test="${fotoInstance?.avatar}">
				<li class="fieldcontain">
					<span id="avatar-label" class="property-label"><g:message code="foto.avatar.label" default="Avatar" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${fotoInstance?.avatarType}">
				<li class="fieldcontain">
					<span id="avatarType-label" class="property-label"><g:message code="foto.avatarType.label" default="Avatar Type" /></span>
					
						<span class="property-value" aria-labelledby="avatarType-label"><g:fieldValue bean="${fotoInstance}" field="avatarType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fotoInstance?.nim}">
				<li class="fieldcontain">
					<span id="nim-label" class="property-label"><g:message code="foto.nim.label" default="Nim" /></span>
					
						<span class="property-value" aria-labelledby="nim-label"><g:fieldValue bean="${fotoInstance}" field="nim"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:fotoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${fotoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
