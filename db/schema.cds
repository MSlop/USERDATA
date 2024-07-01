namespace user;

using {
    //Country ,
    cuid ,
    managed ,
} from '@sap/cds/common';

entity User : cuid, managed {

    userName : String;
    birthDate : Date;
    //age : calculated
    firstName : String;
    lastName : String;
    //country : Country;
    telegramId : String;
    status : String @readonly;
    virtual statusCrit : Integer;
}


