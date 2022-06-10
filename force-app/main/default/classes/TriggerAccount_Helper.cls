//Created by Kathryn Olsen
//TriggerAccount
//Created 6/4/22
//Last Updated 6/8/22
//TriggerAccount Helper that holds the logic for the Trigger

//instantiate the Trigger Helper
public class TriggerAccount_Helper {
	//public static returning a void from the CreateAccounts Method, that pass the List of Accounts called accts.
	public static void CreateAccounts(List<Account> accts) { 
		//loop for the Account acct, through the accts
        for (Account acct : accts) {  
		//if the account shipping state does not equel the account billing state, on each accts
            if(acct.ShippingState!=acct.BillingState){
		    //provide an error to the user
                acct.addError('We cannot bill in a state jurisdiction separate from our delivery.' );
            } 
        } 
    }
}
