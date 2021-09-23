trigger AccInserTrigger on Account (after Update) {
List<Contact> conlist = [select ID from Contact where AccountID =: Trigger.new];
List<Contact> conlist1;
for(Account acc:Trigger.new)
{

for(Contact con:conlist)
{
if(acc.ID == con.AccountID)
{
con.Amount__c=acc.Amount__c;
conlist1.add(con);
}
}
}
update conlist;


}