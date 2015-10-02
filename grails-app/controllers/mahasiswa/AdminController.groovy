package mahasiswa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AdminController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
    	[]
	}
}