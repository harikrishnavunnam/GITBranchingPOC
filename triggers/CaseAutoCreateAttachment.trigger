trigger CaseAutoCreateAttachment on Case (after insert) {

    if(Trigger.isAfter)
    {
        if(Trigger.isInsert)
        {
            PdfHelper.GenerateCasePDF(Trigger.New[0].id);            
        }
    }
   
   
   /* ContentVersion myAttachment = new ContentVersion();
    for(case c:trigger.new){
      
        myAttachment.ContentLocation = 'S'; // S specify this document is in SF, use E for external files
        myAttachment.PathOnClient = c.id +'.pdf'; // The files name, extension is very important here which will help the file in preview.
        myAttachment.Title = c.id +'.pdf'; // Display name of the files
        myAttachment.VersionData = blob.toPdf(c.id);        
        insert myAttachment; 
        
        Id conDoc = [SELECT ContentDocumentId FROM ContentVersion WHERE Id =:myAttachment.Id].ContentDocumentId;
        
        
        //Create ContentDocumentLink
        ContentDocumentLink cdl = new ContentDocumentLink();
        cdl.ContentDocumentId = conDoc;
        cdl.LinkedEntityId = c.id; // you can use objectId,GroupId etc
        cdl.ShareType = 'I'; // Inferred permission, checkout description of ContentDocumentLink object for more details
        cdl.Visibility = 'AllUsers';
        insert cdl;
    }        */
}