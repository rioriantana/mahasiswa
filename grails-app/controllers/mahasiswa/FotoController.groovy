package mahasiswa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FotoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

def avatar_image() {
        def avatarUser = Foto.get(params.id)
        if (!avatarUser) {
            render "OK"
        } else {
            response.contentType = avatarUser.avatarType
            response.contentLength = avatarUser.avatar.size()
            OutputStream out = response.outputStream
            out.write(avatarUser.avatar)
            out.close()
        }
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Foto.list(params), model:[fotoInstanceCount: Foto.count()]
    }

    def show(Foto fotoInstance) {
        respond fotoInstance
    }

    def create() {
        respond new Foto(params)
    }

    @Transactional
    def save(Foto fotoInstance) {
        if (fotoInstance == null) {
            notFound()
            return
        }

        if (fotoInstance.hasErrors()) {
            respond fotoInstance.errors, view:'create'
            return
        }
        def f = request.getFile('avatar')
        fotoInstance.avatarType = f.contentType
        fotoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'foto.label', default: 'Foto'), fotoInstance.id])
                redirect fotoInstance
            }
            '*' { respond fotoInstance, [status: CREATED] }
        }
    }

    def edit(Foto fotoInstance) {
        respond fotoInstance
    }

    @Transactional
    def update(Foto fotoInstance) {
        if (fotoInstance == null) {
            notFound()
            return
        }

        if (fotoInstance.hasErrors()) {
            respond fotoInstance.errors, view:'edit'
            return
        }
        def f = request.getFile('avatar')
        fotoInstance.avatarType = f.contentType
        fotoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Foto.label', default: 'Foto'), fotoInstance.id])
                redirect fotoInstance
            }
            '*'{ respond fotoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Foto fotoInstance) {

        if (fotoInstance == null) {
            notFound()
            return
        }

        fotoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Foto.label', default: 'Foto'), fotoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'foto.label', default: 'Foto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
