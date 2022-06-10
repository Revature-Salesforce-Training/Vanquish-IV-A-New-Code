//Created by Kathryn Olsen
//TriggerAccount
//Created 6/4/22
//Last Updated 6/8/22
//Account Trigger Helper that holds the logic for the Trigger


public class TriggerAccount_Helper {
	public static void CreateAccounts(List<Account> accts) { 
        for (Account acct : accts) {  
            if(acct.ShippingState!=acct.BillingState){
                acct.addError('We cannot bill in a state jurisdiction separate from our delivery.' );
            } 
        } 
    }
}
