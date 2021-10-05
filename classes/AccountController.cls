public with sharing class AccountController { 
//Hari1*******TEST28th SEPT
  public static List<Account> getAllActiveAccounts() {
    return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
	/*test*/
  }
}
