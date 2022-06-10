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