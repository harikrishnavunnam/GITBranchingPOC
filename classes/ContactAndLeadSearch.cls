public Class ContactAndLeadSearch{
public static List<List<sObject>> searchContactsAndLeads(String s)
{
List<List<sObject>> searchList = [FIND: s IN NAME FIELDS RETURNING Contact(FirstName,LastName), Lead(Name, FirstName, LastName)];


return searchList;
}
}