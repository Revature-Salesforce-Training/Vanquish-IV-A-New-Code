//Name: Kathryn Olsen
//Project: isTest for TriggerAccount
//Date Created: 6/5/22
//Date last updated: 6/7/22


//isTest for the private class TriggerAccount_Test

@isTest
public class TriggerAccount_Test {
    @isTest static void TestCreateNewAccountInBulk() {
        // Test Setup data
        // Create 200 new Accounts
        List<Account> accts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account(Name='Test Account ' + i,BillingState ='CA');
            accts.add(acct);
        }              
        // Perform Test
        System.Test.startTest();
        insert accts;                               
        System.Test.stopTest();
        // Verify that 200 new Accounts ShippingState=CA
        List<Account> insertedAccounts = [SELECT ShippingState from Account];
        for (Account a:insertedAccounts){ 
			System.assertEquals('CA', a.ShippingState,'ERRER'); 
        }                            
    }
}
