//Name: AccountTrigger Helper Test
//Author: Kathryn Olsen
//Created: 6/4/22
//Last Modified: 6/7/22

//Custom Test Class for AccountTrigger
public class Account_Trigger_Helper_Test {
    
    //Test Setup Test to provide the computer acc and acc2
    @testSetup
    //public static void return of method testSetup
    public static void testSetup() {
        //first account
        Account acc = new Account(name = 'TestAccount');
        //second account
        Account acc2 = new Account(name = 'Amazon');
        //insert acc and acc2
        insert acc; 
        insert acc2;
    }
    
    //isTest for a singleNegative test, to test if the name
    @isTest
    public static void singleNegative(){
        //public static return void from a single negative test
        Account acc = [SELECT Name, Rating FROM Account WHERE Name = 'TestAccount'];
        //if this account called TestAccount is found, which is our other account, than the system will assert a null value into the rating
        System.assertEquals(null, acc.Rating);
    } 
    //isTest for singlePositive test that will test a SOQL search for an account with the name Amazon
     @isTest
    public static void singlePositive(){
        //public static return void from a single positive test
        Account acc = [SELECT Name, Rating FROM Account WHERE Name = 'Amazon'];
        //if this account called Amazon is found, then the computer will assert a rating of Hot to the account rating field
        System.assertEquals('Hot', acc.Rating);
    } 
}
