@isTest
private class TestRestrictContactByName{

@isTest static void testInvalidName()
{
 List<Contact> con = new List<Contact>{new Contact(LastName='test'), new Contact(LastName='test1'), new Contact(LastName='INVALIDNAME')};
 Test.startTest();
 List<Database.SaveResult> res = Database.insert(con,false); 
 Test.stopTest();
 
 
}

}