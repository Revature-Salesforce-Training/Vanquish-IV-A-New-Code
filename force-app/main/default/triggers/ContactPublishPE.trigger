trigger ContactPublishPE on Contact (before insert) {
		for (Contact con : Trigger.new){
				Contact_Event__e oppEvent = new Contact_Event__e(
    			Priority__c = 'Important',
                Name__c = con.Name
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