//Example sample class to understand future method syntax.
global class SomeClass{
@future
public static void someFutureMethod(List<ID> recordIDs){
  List<Account> accounts = [Select ID,Name from Account where ID IN :recordIDs];
  //Add your logic to process account records.
 }
}