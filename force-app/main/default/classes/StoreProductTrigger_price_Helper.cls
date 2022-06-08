public class StoreProductTrigger_price_Helper {
    public static void SPmethod (List<Store_Product__c> StoreProductList){
        for (Store_Product__c sp : StoreProductList){
        if (sp.price__c >= 100000){
            sp.addError('Cannot add product worth over $100000');
           }
        }
    }
}