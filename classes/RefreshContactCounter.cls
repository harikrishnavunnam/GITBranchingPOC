public class RefreshContactCounter {
    
    @AuraEnabled
    public static Integer getContactCount(){
         AggregateResult[] groupedResults = [SELECT count(Id) totalCount FROM Contact];
        Object totalCount = groupedResults[0].get('totalCount');
        return (Integer) totalCount ;
    }

}