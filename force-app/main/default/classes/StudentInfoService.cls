/**
 * @description       : 
 * @author            : Prasad Paraparathadimai
 * @group             : 
 * @last modified on  : 12-03-2020
 * @last modified by  : Prasad Paraparathadimai
 * Modifications Log 
 * Ver   Date         Author                    Modification
 * 1.0   12-03-2020   Prasad Paraparathadimai   Initial Version
**/
@RestResource(urlMapping='/studentInfo/*')
global class StudentInfoService {
    global class StudentInfo {
        String studentName{get;set;}
        String studentAddress{get;set;}
        String studentPhone{get;set;}
        String schoolName{get;set;}
    }

    @httpGet
    global static StudentInfo getStudent()
    {
        RestRequest request = RestContext.Request;
        String studentId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        Student__c s = [select Student_Name__c,	Address__c, Phone_Number__c, School__r.Name from Student__c where id=:studentId];
        StudentInfo info = new StudentInfo();
        info.studentName=s.Student_Name__c;
        info.studentAddress=s.Address__c;
        info.studentPhone=s.Phone_Number__c;
        info.schoolName=s.School__r.Name;
        return info;
    }
}
