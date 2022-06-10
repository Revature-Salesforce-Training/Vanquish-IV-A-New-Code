//File: Store Product Trigger Price Helper Class
//Author: Kory Iwahashi
//Created: 06/01/22
//Last Modified: 06/07/22

//Helper Class that is referenced by the Store Product Trigger

public class StoreProductTrigger_price_Helper {
    //Method that takes the new records created as a parameter and stores them in StoreProductList
    public static void SPmethod (List<Store_Product__c> StoreProductList){
        // For Loop that assigns StoreProductList to the object sp
        for (Store_Product__c sp : StoreProductList){
        // If the newly created record's price is greater or equal to 100000, return error
        if (sp.price__c >= 100000){
            sp.addError('Cannot add product worth over $100000');
           }
        }
    }
}