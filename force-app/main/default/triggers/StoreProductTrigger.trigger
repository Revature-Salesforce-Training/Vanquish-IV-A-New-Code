// Store Product Trigger Skeleton
// Kory Iwahashi
// Created: 5/31/22
// Last Modified: 6/2/22

// Provides a Trigger for the Store Product Object that will connect to their corresponding Helper classes

trigger StoreProductTrigger on Store_Product__c (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
	switch on Trigger.operationType {
        when BEFORE_INSERT {
            //Kory - Send newly created records helper to evaluate if their price fields are over 100000
            StoreProductTrigger_price_Helper.SPMethod(Trigger.new);
        }
        when BEFORE_UPDATE {

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