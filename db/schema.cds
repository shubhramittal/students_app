//setting the namespace
namespace student.db;

using {
    cuid,
    managed
} from '@sap/cds/common';

type nameType : String(50);

//custom aspect
aspect custoAspect {
    status : String;
}

//create a table
entity Students : cuid, managed {
    //key studentId : UUID; //UUID - unique identifier with 18 digits
    name    : nameType; //defined above
    address : String;
    email   : nameType; //defined above
    mobile  : String;
    age     : Integer;
    gender  : String;
    //courses : Composition of many Courses
}

entity Courses : cuid, managed {
    //key courseId : UUID;
    name     : nameType; //defined above
    cost     : Decimal(10, 2);
    trainer  : String;
    duration : Integer;
}

entity Address {
    key addressID   : Integer;
        description : String;
        city        : String;
        country     : String;
        pincode     : Integer;
}

entity Books : cuid {
    name          : String;
    title         : String;
    publishedDate : String;
    author        : Association to Authors; //one to one  - one book is linked to one author - This is called managed association
}

entity Authors : cuid {
    name  : String;
    books : Composition of many Books
                on books.author = $self;//$self is used as we have defined the key with cuid.if we don't use cuid and used authorid then we have use authorid instead of $self
                
}
