/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-01-2020
 * @last modified by  : Prasad Paraparathadimai
 * Modifications Log 
 * Ver   Date         Author                               Modification
 * 1.0   11-27-2020   ChangeMeIn@UserSettingsUnder.SFDoc   Initial Version
**/
public with sharing class DisplayUserInfoController {
    private final Datetime lastLoginDate;
    public DisplayUserInfoController() {
        List<User> users = [SELECT LastLoginDate FROM User WHERE Id =:UserInfo.getUserId()];
        System.assertEquals(1, users.size(), 'Expected a single user to be returned');
        System.debug('Logged in user:' + UserInfo.getUserId());

        Datetime now = Datetime.now();
        System.debug('Now' + now);
        System.debug('Format' + now.format());

        lastLoginDate = users.get(0).LastLoginDate;
    }
    public Datetime getLastLoginDate() {
        return lastLoginDate;
    }

}
