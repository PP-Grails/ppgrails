package ppgrails

class Instituicao {


	Long id

	String nome
	String cidade
	String estado
	String telefone
	String email

	def relatesToMany = [ intituicao : Instituicao ]

         Set instituicao = new HashSet()

 

    String toString() { "${this.class.name} :  $id" }



    static constraints = {
    }
}
