/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-27-2020
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 * Modifications Log 
 * Ver   Date         Author                               Modification
 * 1.0   11-27-2020   ChangeMeIn@UserSettingsUnder.SFDoc   Initial Version
**/
public with sharing class DisplayUserInfoController {
    private final Datetime lastLoginDate;
    public DisplayUserInfoController() {
        List<User> users = [SELECT LastLoginDate FROM User WHERE Id =:UserInfo.getUserId()];
        System.assertEquals(1, users.size(), 'Expected a single user to be returned');
        lastLoginDate = users.get(0).LastLoginDate;
    }
    public Datetime getLastLoginDate() {
        return lastLoginDate;
    }

}
