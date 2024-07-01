const cds = require('@sap/cds')

module.exports = class UserService extends cds.ApplicationService { 
    init() {

        const { User } = this.entities;

        this.on( "updateStatus", async (req) => {

            let data = await SELECT.from (User, req.data.id)

            if ( data.status ==  null ||
                 data.status ==  "New"  ){
                data.status = 'Approved'
            }
            
            await UPDATE (User, req.data.id).with ({ status: data.status })
        } )

        this.after("READ", User, (data) => {

            const users = Array.isArray(data) ? data : [data];

            users.forEach((user) => {
                switch (user.status) {
                    case null:
                        user.statusCrit = 2;
                        break;
                    case "New":
                        user.statusCrit = 2;
                        break;
                    case 'Approved':
                        user.statusCrit = 3;
                        break;
                    default:
                        break;
                }
            })
        })

        this.after("CREATE", User, async (req) =>{
            req.status = 'New';
            //return req;
        } )

        return super.init()
    }
}