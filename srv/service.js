const cds = require('@sap/cds')

module.exports = class UserService extends cds.ApplicationService { 
    init() {

        //const { User } = this.entities;

        this.on( "updateStatus", (req) => {

            let { User } = req.data

            if ( User.status == 'None' ){
                User.status = 'Approve'
            }

        } )

        return super.init()
    }
}