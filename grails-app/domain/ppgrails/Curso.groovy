package ppgrails

class Curso {

	Long id

	String nome
	String instituicao
	String vagas

	def relatesToMany = [ cursos : Curso ]

         Set cursos = new HashSet()

 

    String toString() { "${this.class.name} :  $id" }



    static constraints = {
    }
}
