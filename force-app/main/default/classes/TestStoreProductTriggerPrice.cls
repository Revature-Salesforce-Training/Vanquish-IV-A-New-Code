//Test Store Product Price Trigger
//Name: Kory Iwahashi
//Created: 06/07/22
//Last Modified: 06/08/22

// Testing the Store Product Price Trigger Helper Class

@isTest
public class TestStoreProductTriggerPrice {
	@isTest static void testRecords(){
        /* Create test record for Store Product*/                  
        Store_Product__c newSPRecord = new Store_Product__c(
            Name = 'TestStoreProduct',
            Price__c = 120000
            );
                 
        //Test to see if when we try to insert/save record to Database if it fails
        Test.startTest();
        Database.SaveResult result = Database.insert(newSPRecord, false);
        Test.stopTest();
        
        //Seeing if result is not a success, 
        //if we get more than 0 errors, 
        //and if we get an error if our error is equal to the error we defined in our addError method in our Trigger
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('Cannot add product worth over $100000',
                             result.getErrors()[0].getMessage());

	}
}