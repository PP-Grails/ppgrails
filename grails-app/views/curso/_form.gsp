<%@ page import="ppgrails.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'instituicao', 'error')} ">
	<label for="instituicao">
		<g:message code="curso.instituicao.label" default="Instituicao" />
		
	</label>
	<g:textField name="instituicao" value="${cursoInstance?.instituicao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="curso.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${cursoInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'vagas', 'error')} ">
	<label for="vagas">
		<g:message code="curso.vagas.label" default="Vagas" />
		
	</label>
	<g:textField name="vagas" value="${cursoInstance?.vagas}"/>
</div>

