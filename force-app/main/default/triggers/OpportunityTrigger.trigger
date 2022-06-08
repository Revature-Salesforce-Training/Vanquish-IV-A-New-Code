// Name: Opportunity Trigger
// Author: Nate/Kory
// Created: 06/02/22
// Last Modified: 06/07/22
// 
// Opportunity Trigger implemented through best practices via a switch 

trigger OpportunityTrigger on Opportunity (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
	switch on Trigger.operationType {
        when BEFORE_INSERT {
  		//Helper class that will check the Amount and Discount_Percentage fields to see if we are giving too big of a discount 
    	OpportunityTriggerHelper.SaveMoney(Trigger.new);
            
        //Publish Opportunity Platform Event - Kory
        opportunityPE_PublishHelper.oppMethod(Trigger.new);
        }
        when BEFORE_UPDATE {
		//Helper class that will check the Amount and Discount_Percentage fields to see if we are giving too big of a discount 
    	OpportunityTriggerHelper.SaveMoney(Trigger.new);
        }
        when BEFORE_DELETE {

        }
        when AFTER_INSERT {

        }
        when AFTER_UPDATE {

        }
        when AFTER_DELETE {

        }
        when AFTER_UNDELETE {

        }
    }
 }