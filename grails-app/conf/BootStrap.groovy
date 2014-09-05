import ppgrails.*

class BootStrap {

    def init = { servletContext ->
    	if(!Usuario.count()){
    		createData()
    	}
    }
    def destroy = {
    }

    private void createData() {
    	def userRole = new Administrador(authority: 'ROLE_USER').save()

    	String password = 'password'

    	[allyson:'Allyson Reis', edson:'Edson Filho', jonatas:'Jonatas Medeiros', nicolas:'Nicolas Boarin'].each {userName, realName ->
    		def user = new Usuario(username:userName, realName:realName, password:password, enable:true).save()
    		UsuarioAdministrador.create user, userRole, true
    	}
    }
}
