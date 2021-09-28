public Class AccountHandler{
//test1111
    public static void insertAccount(Integer numacc){
        integer counter = 1;
        List<Account> addAccounts = new List<Account>();
        
        while(counter <= numacc){
            
            Account acc = new Account();
            acc.Name = 'Acme Inc' + ' ' + counter;
            acc.AccountNumber = 'A000'+counter;
            addAccounts.add(acc);
            counter = counter+1;            
        }
       insert addAccounts;   
        
    }
    
}
