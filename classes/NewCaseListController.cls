public class NewCaseListController {

public List<Case> getNewCases()
{
 List<Case> caseList = [Select ID,CaseNumber from Case where Status = 'new'];
 return caseList;
}
}