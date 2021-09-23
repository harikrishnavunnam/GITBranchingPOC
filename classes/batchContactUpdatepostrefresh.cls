global class batchContactUpdatepostrefresh implements Database.Batchable<sObject> {
    global Database.QueryLocator start(Database.BatchableContext BC) {
        //String query = 'SELECT Email,Id FROM Contact WHERE Email = ''';
        return Database.getQueryLocator([SELECT Email FROM Contact WHERE Email != '']);
    }   
    global void execute(Database.BatchableContext BC, List<contact> scope) {
         for(Contact c : scope)
         {
             c.Email = c.Email + '.sandbox111';            
         }
         update scope;
    }    
    global void finish(Database.BatchableContext BC) {
    }
}