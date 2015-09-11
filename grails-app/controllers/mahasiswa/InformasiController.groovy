package mahasiswa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class InformasiController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Informasi.list(params), model:[informasiInstanceCount: Informasi.count()]
    }

    def show(Informasi informasiInstance) {
        respond informasiInstance
    }

    def create() {
        respond new Informasi(params)
    }

    @Transactional
    def save(Informasi informasiInstance) {
        if (informasiInstance == null) {
            notFound()
            return
        }

        if (informasiInstance.hasErrors()) {
            respond informasiInstance.errors, view:'create'
            return
        }

        informasiInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'informasi.label', default: 'Informasi'), informasiInstance.id])
                redirect informasiInstance
            }
            '*' { respond informasiInstance, [status: CREATED] }
        }
    }

    def edit(Informasi informasiInstance) {
        respond informasiInstance
    }
    def laporan(){
        
    }

    @Transactional
    def update(Informasi informasiInstance) {
        if (informasiInstance == null) {
            notFound()
            return
        }

        if (informasiInstance.hasErrors()) {
            respond informasiInstance.errors, view:'edit'
            return
        }

        informasiInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Informasi.label', default: 'Informasi'), informasiInstance.id])
                redirect informasiInstance
            }
            '*'{ respond informasiInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Informasi informasiInstance) {

        if (informasiInstance == null) {
            notFound()
            return
        }

        informasiInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Informasi.label', default: 'Informasi'), informasiInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'informasi.label', default: 'Informasi'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def tahunAngkatan(){

    }
    def tahunAkademik(){
        
    }
    def tahunBerjalan(){
        
    }
}
