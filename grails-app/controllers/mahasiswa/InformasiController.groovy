package mahasiswa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class InformasiController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    private static final okcontents = ['image/png', 'image/jpeg', 'image/gif']
    def avatar_image() {
        def avatarUser = Informasi.get(params.id)
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

    def index() {
        params.max = Math.min(params.max ? params.init('max'): 10, 100)
        def informasi = []
        def informasiCount = []
        if(!params.cari){
            informasi = Informasi.list(params)
            informasiCount = Informasi.count()
        }
        else{
            def cari = "%"+params.nim+"%"
            cari = cari.toUpperCase()
            informasi = Informasi.executeQuery("from Informasi as i where upper(i.nim) like :cari", [cari: cari])   
            informasiCount = Informasi.executeQuery("select count(*) from Informasi as i where upper(i.nim) like :cari", [cari: cari])
            print cari
        }
        [informasiInstanceList: informasi , informasiInstanceCount: informasiCount]
    }

    def show(Informasi informasiInstance) {
        respond informasiInstance
    }

    def print(Informasi informasiInstance) {
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
        def ipk = params.ipk
        if (ipk>='2.00' && ipk<='2.75') {
            informasiInstance.predikatLulus = "Memuaskan"
        }
        else if(ipk<='3.49'){
            informasiInstance.predikatLulus = "Sangat Memuaskan"
        }
        else{
            informasiInstance.predikatLulus = "Cumlaude"
        }


         def f = request.getFile('avatar')
        def masuk = params.tanggalMasuk
        def keluar = params.tanggalLulus
        def lama = (keluar - masuk)/30
        if (okcontents.contains(f.getContentType())) {
        informasiInstance.avatar = f.bytes
        informasiInstance.avatarType = f.contentType 
    }
        informasiInstance.lamaStudi = Math.ceil(lama)
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


        def masuk = params.tanggalMasuk
        def keluar = params.tanggalLulus
        def lama = (keluar - masuk)/30
        informasiInstance.lamaStudi = Math.ceil(lama)
        def f = request.getFile('avatar')
        if (okcontents.contains(f.getContentType())) {
        informasiInstance.avatar = f.getBytes()
        informasiInstance.avatarType = f.contentType 
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
        if(!params.tahunAngkatan){
            return[]
        }
        def tahunAngkatan = params.tahunAngkatan
        def tahunAngkatans = tahunAngkatan + 365
        def informasiInstance = Informasi.findAllByTanggalMasukBetween(tahunAngkatan, tahunAngkatans)
        def informasiInstanceCount = Informasi.countByTanggalMasukBetween(tahunAngkatan, tahunAngkatans)
       def a = Informasi.where{ between("tanggalMasuk", tahunAngkatan, tahunAngkatans)}
        def lamaStudi = a.get{projections{avg "lamaStudi"}}
        def ipk = a.get{projections{avg "ipk"}}
        def lamaSkripsi = a.get{projections{avg "lamaSkripsi"}}
        render(controller: this, template: "tahunAngkatan", model: [informasiInstance: informasiInstance, informasiInstanceCount: informasiInstanceCount, tahunAngkatan: tahunAngkatan, lamaStudi: lamaStudi, ipk: ipk, lamaSkripsi: lamaSkripsi])
    }
    def tahunAkademik(){
        if(!params.tanggalAwal && !params.tanggalAkhir){
            return[]
        }
        def tanggalAwal = params.tanggalAwal
        def tanggalAkhir = params.tanggalAkhir + 30
        def informasiInstance = Informasi.findAllByTanggalLulusBetween(tanggalAwal, tanggalAkhir)
        def informasiInstanceCount = Informasi.countByTanggalLulusBetween(tanggalAwal, tanggalAkhir)
        def a = Informasi.where{ between("tanggalLulus", tanggalAwal, tanggalAkhir)}
        def lamaStudi = a.get{projections{avg "lamaStudi"}}
        def ipk = a.get{projections{avg "ipk"}}
        def lamaSkripsi = a.get{projections{avg "lamaSkripsi"}}
        render(controller: this, template: "tahunAkademik", model: [informasiInstance: informasiInstance, informasiInstanceCount: informasiInstanceCount, tanggalAwal: tanggalAwal, tanggalAkhir: tanggalAkhir, lamaStudi: lamaStudi, ipk: ipk, lamaSkripsi: lamaSkripsi])
    }
    def tahunBerjalan(){
        if(!params.tahunAngkatan){
            return[]
        }
        def tahunAngkatan = params.tahunAngkatan
        def tahunAngkatans = tahunAngkatan + 365
        def informasiInstance = Informasi.findAllByTanggalLulusBetween(tahunAngkatan, tahunAngkatans)
        def informasiInstanceCount = Informasi.countByTanggalLulusBetween(tahunAngkatan, tahunAngkatans)
        def a = Informasi.where{ between("tanggalLulus", tahunAngkatan, tahunAngkatans)}
        def lamaStudi = a.get{projections{avg "lamaStudi"}}
        def ipk = a.get{projections{avg "ipk"}}
        def lamaSkripsi = a.get{projections{avg "lamaSkripsi"}}
        render(controller: this, template: "tahunBerjalan", model: [informasiInstance: informasiInstance, informasiInstanceCount: informasiInstanceCount, tahunAngkatan: tahunAngkatan, lamaStudi: lamaStudi, ipk: ipk, lamaSkripsi: lamaSkripsi])
    }
}
