public Class StringExample{
public Static List<String> generateString(Integer n)
{
List<String> s1 = new List<String>();
for(Integer i=0; i<n;i++)
{
s1.add('Test '+i);
System.debug(s1[i]);
}
return s1;
} 
}