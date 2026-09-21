//setting the namespace
namespace student.db;

using { cuid, managed } from '@sap/cds/common';

type nameType : String(50);

//custom aspect
aspect custoAspect{
    status : String;
}

//create a table
entity Students: cuid, managed {
    //key studentId : UUID; //UUID - unique identifier with 18 digits
        name      : nameType;//defined above
        address   : String;
        email     : nameType;//defined above
        mobile    : String;
        age       : Integer;
        gender    : String;
}

entity Courses: cuid, managed {
    //key courseId : UUID;
        name     : nameType;//defined above
        cost     : Decimal(10, 2);
        trainer  : String;
        duration : Integer;
}
