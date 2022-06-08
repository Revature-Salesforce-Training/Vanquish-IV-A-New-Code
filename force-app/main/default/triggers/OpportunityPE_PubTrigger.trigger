trigger OpportunityPE_PubTrigger on Opportunity (before insert) {
    
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