public class NewAccounts {
    
    public static void sObjectsInsert(Integer value){
        Integer counter = 1;
        
        //Create a list to add your accounts.
        List<Account> teaFactoryAccount = new List<Account>();
        
        while(counter <= value){
            
            //display the current value.
            System.debug('counter value before incrementing' + counter);
            
            //create new account.
            Account store = new Account();
            store.Name = 'The Tea Factory'+ counter;
            store.AccountNumber = '35629'+ counter;
            teaFactoryAccount.add(store);
            System.debug(teaFactoryAccount);
            
           //increment the counter
            counter = counter+1;
            System.debug('counter value after incrementing' + counter);
                       
        }
        
        System.debug('Size of the account list' + teaFactoryAccount.size());
        System.debug('Elements in account list' + teaFactoryAccount); 
        
        //insert all accounts in the list
        insert teaFactoryAccount;
    }

}