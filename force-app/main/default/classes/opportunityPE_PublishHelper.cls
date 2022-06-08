// Name: Opportunity Trigger
// Author: Kory
// Created: 06/02/22
// Last Modified: 06/07/22
// 
// Opportunity Platform Event Publisher side 

public class opportunityPE_PublishHelper {
    //when oppMethod is called, for newly created opportunity that is passed in
    public static void oppMethod(List<Opportunity> oppList){
        //Assign newly created opportunity (oppList) that was passed in to op
        for (Opportunity op : oppList){
            //If the opportunity amount is greater than or equal to 100000
            if (op.Amount >= 100000){
               //Publish the Opportunity_Event Platform Event

			   //Creating an instance of the Opportunity Platform Event, and match its price field with the opportunity's amount field
				Opportunity_Event__e oppEvent = new Opportunity_Event__e(
    			Price__c = op.Amount
    			);
 
				// Call method to publish event
				Database.SaveResult sr = EventBus.publish(oppEvent);
                
                if (sr.isSuccess()) {
    			System.debug('Successfully published event.');
				} else {
   	  			for(Database.Error err : sr.getErrors()) {
        			System.debug('Error returned: ' +
                     err.getStatusCode() +
                     ' - ' +
                     err.getMessage());
      				}
				}
				}
            }
        }
    }