public class AccountBeforeD_Helper {
    //Yury - Disallow deletion of account that has a related case, with High priority
    public static void highFilter (Map<Id,Account> myMap) {
        			for (Account a : [SELECT Id FROM Account WHERE Id IN (SELECT AccountId FROM Case WHERE Priority='High') AND Id IN :Trigger.old]) {
          			Trigger.oldMap.get(a.Id).addError('Please resolve High priority case before deleting this Account');
    	}               
    }
}