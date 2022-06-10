/*
 * Name of the file: AccountBeforeD_Helper
 * Name: Yury Pushkarev
 * Created date: 06/03/22
 * Last modified date: 06/09/22
 * Overview: Disallow deletion of account that has a related case, with High priority
*/
public class AccountBeforeD_Helper {
    //Function loops through the Id fields within Account standard object selecting only Account's that have a related High priority Case record. 
    //Whenever a user attempts to delete an existing account they will receive an error should an Account id exist within the Map collection (as outlined by below SOQL query)
    public static void highFilter (Map<Id,Account> myMap) {
        			for (Account a : [SELECT Id FROM Account WHERE Id IN (SELECT AccountId FROM Case WHERE Priority='High') AND Id IN :Trigger.old]) {
          			Trigger.oldMap.get(a.Id).addError('Please resolve High priority case before deleting this Account');
    	}               
    }
}