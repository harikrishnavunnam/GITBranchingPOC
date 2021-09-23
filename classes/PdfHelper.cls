public class PdfHelper
{
    public static void GenerateCasePDF(string sCaseID)
    {
        
        ContentVersion myAttachment = new ContentVersion();
        myAttachment.ContentLocation = 'S'; // S specify this document is in SF, use E for external files
        myAttachment.PathOnClient = sCaseID +'.pdf'; // The files name, extension is very important here which will help the file in preview.
        myAttachment.Title = sCaseID +'.pdf'; // Display name of the files
        myAttachment.VersionData = blob.toPdf(sCaseID);        
        insert myAttachment; 
        
        Id conDoc = [SELECT ContentDocumentId FROM ContentVersion WHERE Id =:myAttachment.Id].ContentDocumentId;
        
        
        //Create ContentDocumentLink
        ContentDocumentLink cdl = new ContentDocumentLink();
        cdl.ContentDocumentId = conDoc;
        cdl.LinkedEntityId = sCaseID; // you can use objectId,GroupId etc
        cdl.ShareType = 'I'; // Inferred permission, checkout description of ContentDocumentLink object for more details
        cdl.Visibility = 'AllUsers';
        insert cdl;

    }
}