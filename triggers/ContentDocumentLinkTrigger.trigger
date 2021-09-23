trigger ContentDocumentLinkTrigger on ContentDocumentLink (after insert, before delete) {

    if(Trigger.isAfter && Trigger.isInsert){
        System.debug('ContentDocumentLinkTrigger: after Insert');        
        AttachmentsTriggerHandler.LightiningAttachmentInsert(Trigger.New);
    }
}