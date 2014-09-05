package ppgrails

import org.apache.commons.lang.builder.HashCodeBuilder

class UsuarioAdministrador implements Serializable {

	Usuario usuario
	Administrador administrador

	boolean equals(other) {
		if (!(other instanceof UsuarioAdministrador)) {
			return false
		}

		other.usuario?.id == usuario?.id &&
			other.administrador?.id == administrador?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (usuario) builder.append(usuario.id)
		if (administrador) builder.append(administrador.id)
		builder.toHashCode()
	}

	static UsuarioAdministrador get(long usuarioId, long administradorId) {
		find 'from UsuarioAdministrador where usuario.id=:usuarioId and administrador.id=:administradorId',
			[usuarioId: usuarioId, administradorId: administradorId]
	}

	static UsuarioAdministrador create(Usuario usuario, Administrador administrador, boolean flush = false) {
		new UsuarioAdministrador(usuario: usuario, administrador: administrador).save(flush: flush, insert: true)
	}

	static boolean remove(Usuario usuario, Administrador administrador, boolean flush = false) {
		UsuarioAdministrador instance = UsuarioAdministrador.findByUsuarioAndAdministrador(usuario, administrador)
		if (!instance) {
			return false
		}

		instance.delete(flush: flush)
		true
	}

	static void removeAll(Usuario usuario) {
		executeUpdate 'DELETE FROM UsuarioAdministrador WHERE usuario=:usuario', [usuario: usuario]
	}

	static void removeAll(Administrador administrador) {
		executeUpdate 'DELETE FROM UsuarioAdministrador WHERE administrador=:administrador', [administrador: administrador]
	}

	static mapping = {
		id composite: ['administrador', 'usuario']
		version false
	}
}
