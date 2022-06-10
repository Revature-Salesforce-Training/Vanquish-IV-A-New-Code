@isTest
public class Account_Trigger_Helper_Test {
    
    @testSetup
    public static void testSetup() {
        Account acc = new Account(name = 'TestAccount');
        Account acc2 = new Account(name = 'Amazon');
        insert acc; 
        insert acc2;
    }
    
    @isTest
    public static void singleNegative(){
        Account acc = [SELECT Name, Rating FROM Account WHERE Name = 'TestAccount'];
        System.assertEquals(null, acc.Rating);
    } 
    
     @isTest
    public static void singlePositive(){
        Account acc = [SELECT Name, Rating FROM Account WHERE Name = 'Amazon'];
        System.assertEquals('Hot', acc.Rating);
    } 
}