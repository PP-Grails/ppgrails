
<%@ page import="ppgrails.Instituicao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'instituicao.label', default: 'Instituicao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-instituicao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-instituicao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="cidade" title="${message(code: 'instituicao.cidade.label', default: 'Cidade')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'instituicao.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="estado" title="${message(code: 'instituicao.estado.label', default: 'Estado')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'instituicao.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="telefone" title="${message(code: 'instituicao.telefone.label', default: 'Telefone')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${instituicaoInstanceList}" status="i" var="instituicaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${instituicaoInstance.id}">${fieldValue(bean: instituicaoInstance, field: "cidade")}</g:link></td>
					
						<td>${fieldValue(bean: instituicaoInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: instituicaoInstance, field: "estado")}</td>
					
						<td>${fieldValue(bean: instituicaoInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: instituicaoInstance, field: "telefone")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${instituicaoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
