package ppgrails

class Curso {

	Long id

	String nome
	String instituicao
	String vagas
	static searchable = true
	//static searchable = [only: 'nome']

	def relatesToMany = [ curso : Curso ]

         Set curso = new HashSet()

 

    String toString() { "${this.class.name} :  $id" }



    static constraints = {
    }
}
