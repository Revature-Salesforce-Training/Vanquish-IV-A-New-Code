/*
 * Name of the file: ContactPageController
 * Name: Yury Pushkarev
 * Created date: 06/05/22
 * Last modified date: 06/09/22
 * Overview: Custom Controller for the contact page
*/

public class ContactPageController {
    
    //Using user input from contact page generate a new task
    //OwnerId would be replaced with a Que group id
    //TaskContactPage__c field is designed to keep track of which records were submitted specifically via the ContactPage
    public Task callUs {
        get {
        if (callUs == null)
        callUs = new Task();
		callUs.OwnerId = '005IY000000g1XbYAI'; 
        callus.TaskContactPage__c='ContactPage';
        return callUs;
        } set; }

   	//Custom logic for the save button
   	//Upon clicking the button user input is used to generate a task, should a new task be created a CONFIRM message will be displayed
   	//Should an error occur, an error will be displayed
    public PageReference save() {
        try {
            insert (callUs); 
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.CONFIRM,'Thank you for your submission'));
        }
        	catch (DMLException e) {
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Appologies there is an Error'));
        }
        return null; 
    } 
}