package mahasiswa

class Foto {
	byte[] avatar
  	String avatarType
  	String nim
    static constraints = {
    	avatar(nullable:true, maxSize: 102400)
		avatarType(nullable:true)
		nim(nullable:true)
    }
}
