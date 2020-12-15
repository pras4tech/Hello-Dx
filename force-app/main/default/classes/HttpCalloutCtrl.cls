/**
 * @description       : 
 * @author            : Prasad Paraparathadimai
 * @group             : 
 * @last modified on  : 12-15-2020
 * @last modified by  : Prasad Paraparathadimai
 * Modifications Log 
 * Ver   Date         Author                    Modification
 * 1.0   12-15-2020   Prasad Paraparathadimai   Initial Version
**/
public with sharing class HttpCalloutCtrl {
    @AuraEnabled
    public static Map<String,Object> getCalloutResponseContents(String url)
    {
        Http h=new Http();
        HttpRequest req=new HttpRequest();
        req.setEndpoint(url);
        req.setMethod('GET');
        HttpResponse res=h.send(req);
        System.debug('response-->: '+res.getBody());
       Map<String,object> resultsMap=  (Map<String,object>)JSON.deserializeUntyped(res.getBody());
       System.debug('resultsMap '+resultsMap);
       return resultsMap;
    
    }

}
