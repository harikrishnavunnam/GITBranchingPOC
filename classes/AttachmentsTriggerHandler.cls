public class AttachmentsTriggerHandler{
    
    public static void LightiningAttachmentInsert(List<ContentDocumentLink> NewLst){
        set<string> CaseIds = new set<string>();
        List<Case> CaseLst = new List<Case>();
        for (ContentDocumentLink att : NewLst){
            CaseIds.add(att.LinkedEntityId);
        }
        if(!CaseIds.isEmpty()){
            CaseLst = [select Id,Has_Attachments__c from Case where Id IN :CaseIds];
            if(CaseLst.size()>0){
                for(Case c:CaseLst){
                    if(!c.Has_Attachments__c)
                        c.Has_Attachments__c = true;
                }
            }
        }
        try{
            update CaseLst;
        }catch(Exception ex){
            System.debug(''+ex);
        }
    }
}