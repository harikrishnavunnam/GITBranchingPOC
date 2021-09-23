public class caseattachment
{
public case objcase{get;set;}
public ContentVersion myAttachment{get;set;}
public string fileName{get;set;} 
public Blob fileBody{get;set;}

    public caseattachment(Apexpages.standardcontroller controller)
    {
        objcase = new case();
        //myAttachment =new Attachment();
        myAttachment = new ContentVersion();
    }
    public pagereference save()
    {
        insert objcase;
        System.debug('@@@@@fileBody'+fileBody);     
        /*myAttachment  = new Attachment();
              Integer i=0;
              myAttachment .clear();
              myAttachment.Body = fileBody; 
              myAttachment.Name = 'Logo_'+objcase.id+'.jpeg' ; 
              myAttachment.ParentId = objcase.id;             
              insert myAttachment;   */


        myAttachment.ContentLocation = 'S'; // S specify this document is in SF, use E for external files
        myAttachment.PathOnClient = 'ionicLogo.jpeg'; // The files name, extension is very important here which will help the file in preview.
        myAttachment.Title = 'pdfName'; // Display name of the files
        myAttachment.VersionData = fileBody;        
        insert myAttachment; 
        
        Id conDoc = [SELECT ContentDocumentId FROM ContentVersion WHERE Id =:myAttachment.Id].ContentDocumentId;
        
        
        //Create ContentDocumentLink
        ContentDocumentLink cDe = new ContentDocumentLink();
        cDe.ContentDocumentId = conDoc;
        cDe.LinkedEntityId = objcase.id; // you can use objectId,GroupId etc
        cDe.ShareType = 'I'; // Inferred permission, checkout description of ContentDocumentLink object for more details
        cDe.Visibility = 'AllUsers';
        insert cDe;
        System.debug('insert CDL:' + cde);
        
        
        
        pagereference pr = new pagereference('/'+objcase.id);                           
        return pr;
    }
}