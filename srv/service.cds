using { user as my } from '../db/schema';

@path: '/service/UserDataSvcs'
@requires: 'authenticated-user'
service UserService {
    entity User as projection on my.User;

    annotate User with @odata.draft.enabled;

    action updateStatus( User : User );
}
