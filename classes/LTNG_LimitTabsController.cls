public class LTNG_LimitTabsController {
  @AuraEnabled
    public static Boolean getLimitTabsPermission(){
        //Integer intPermissionSize = [SELECT count() From PermissionSetAssignment WHERE AssigneeId =:UserInfo.getUserId() and PermissionSet.Name = 'Limit Tabs'];
        User user = [select Id, username from User where Id = :UserInfo.getUserId()];
    Boolean hasPermission = true;
        return hasPermission;
    } 
}