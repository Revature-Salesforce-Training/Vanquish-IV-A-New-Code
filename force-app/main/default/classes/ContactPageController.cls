public class ContactPageController {


    //Start of Contact Page code
    public Task callUs {
        get {
        if (callUs == null)
        callUs = new Task();
		callUs.OwnerId = '005IY000000g1XbYAI'; 
        callus.TaskContactPage__c='ContactPage';
        return callUs;
        } set; }

    public PageReference save() {
        try {
            insert (callUs); 
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.CONFIRM,'Thank you for your submission'));
            //return null;
        }
        	catch (DMLException e) {
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Appologies there is an Error'));
            //return null;
        }

        return null; 
    } //Contact Page code ends
    
    //Button = change to a different page
    //public PageReference spfpPage() {return Page.StoreProductFurniturePage;}
}