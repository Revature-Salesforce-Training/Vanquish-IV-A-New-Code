public class TriggerAccount_Helper {
    //Kathryn Olsen
	public static void CreateAccounts(List<Account> accts) { 
        for (Account acct : accts) {  
            if(acct.ShippingState!=acct.BillingState){
                acct.addError('We cannot bill in a state jurisdiction separate from our delivery.' );
            } 
        } 
    }
}