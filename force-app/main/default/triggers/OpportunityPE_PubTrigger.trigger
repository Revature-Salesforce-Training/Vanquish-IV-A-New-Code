//Filename: Opportunity Platform Event Trigger
//Author: Kory Iwahashi
//Created: 05/31/22
//Last Modified: 06/07/22

// Trigger on Opportunity Object that will trigger the creation of an Opportunity Platform Event

trigger OpportunityPE_PubTrigger on Opportunity (before insert) {
	// Before insertion of a new Opportunity record, if the amount of the opportunity is >= 100000
	for (Opportunity op : Trigger.new){
            if (op.Amount >= 100000){
               //Publishing the Opportunity_Event Platform Event

			   //Creating an instance of the Opportunity Platform Event
				Opportunity_Event__e oppEvent = new Opportunity_Event__e(
    			Price__c = op.Amount,
                OpportunityId__c = op.Id
    			);
 
				// Call method to publish event
				Database.SaveResult sr = EventBus.publish(oppEvent);
                // If successful
                if (sr.isSuccess()) {
    			System.debug('Successfully published event.');
                // If not successful
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