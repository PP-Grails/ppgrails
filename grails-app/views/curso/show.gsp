
<%@ page import="ppgrails.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-curso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-curso" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list curso">
			
				<g:if test="${cursoInstance?.instituicao}">
				<li class="fieldcontain">
					<span id="instituicao-label" class="property-label"><g:message code="curso.instituicao.label" default="Instituicao" /></span>
					
						<span class="property-value" aria-labelledby="instituicao-label"><g:fieldValue bean="${cursoInstance}" field="instituicao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="curso.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${cursoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.vagas}">
				<li class="fieldcontain">
					<span id="vagas-label" class="property-label"><g:message code="curso.vagas.label" default="Vagas" /></span>
					
						<span class="property-value" aria-labelledby="vagas-label"><g:fieldValue bean="${cursoInstance}" field="vagas"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${cursoInstance?.id}" />
					<g:link class="edit" action="edit" id="${cursoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
