// Store_Product__c Test
// Kory Iwahashi
// Created: 6/1/22
// Last Modified: 6/2/22
// Description: Test Class to test the custom object Store_Product__c

@isTest
public class storeProductTest {
	@isTest
    public static void negativeTest(){
        Store_Product__c exSP = new Store_Product__c();
        exSP.Name = 'Baby Bungle';
        exSP.Brand__c = 'Whirlpool';
        exSP.Price__c = 1000;
        exSP.Type__c = 'Dishwasher';
        Database.insert(exSP);
    }
    	@isTest
    public static void positiveTest(){
        Store_Product__c exSP = new Store_Product__c();
        exSP.Name = 'Baby Bungle';
        exSP.Brand__c = 'Whirlpool';
        exSP.Price__c = 500;
        exSP.Type__c = 'Dishwasher';
        Database.insert(exSP);
    }
}