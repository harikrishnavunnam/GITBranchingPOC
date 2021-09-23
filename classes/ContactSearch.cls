public class ContactSearch{
public static List<Contact> searchForContacts(String lastname,String postalcode)
{
List<contact> conlist = [select ID,Name,LastName,MailingPostalCode from contact where LastName =:lastname and MailingPostalCode=: postalcode];
return conlist;
}
}