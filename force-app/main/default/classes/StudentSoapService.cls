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
global with sharing class StudentSoapService {
    webService static List<Student__c> getStudent(String studentId) {
        List<Student__c> s = [select id, Student_Name__c from Student__c];
        return s;
    }
}
