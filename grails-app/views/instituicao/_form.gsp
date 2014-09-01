<%@ page import="ppgrails.Instituicao" %>



<div class="fieldcontain ${hasErrors(bean: instituicaoInstance, field: 'cidade', 'error')} ">
	<label for="cidade">
		<g:message code="instituicao.cidade.label" default="Cidade" />
		
	</label>
	<g:textField name="cidade" value="${instituicaoInstance?.cidade}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instituicaoInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="instituicao.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${instituicaoInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instituicaoInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="instituicao.estado.label" default="Estado" />
		
	</label>
	<g:textField name="estado" value="${instituicaoInstance?.estado}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instituicaoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="instituicao.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${instituicaoInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instituicaoInstance, field: 'telefone', 'error')} ">
	<label for="telefone">
		<g:message code="instituicao.telefone.label" default="Telefone" />
		
	</label>
	<g:textField name="telefone" value="${instituicaoInstance?.telefone}"/>
</div>

