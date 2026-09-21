using {student.db as model} from '../db/schema'; //model is user defined keyword , it could be any name

//creating the service
service studentAPIService {
    //expose table(entity) as a entity set
    entity StudentSet as projection on model.Students;
}

//creating the course service
service courseAPIService {
    //expose table(entity) as a entity set
    entity CourseSet as projection on model.Courses;
}