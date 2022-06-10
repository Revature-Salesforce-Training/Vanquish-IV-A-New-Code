//Name: Store Product Display
//Author: Kory Iwahashi
//Created: 06/06/22
//Last Modified: 06/07/22

//Custom Controller for the Store Products Display Visualforce Page

public class StoreProductDisplayController {
    public String ProductList { get; set; }
    
    // Get/Set Methods to retrieve store products and fields and set them

    public List<Store_Product__c> records {get; set;}
  public StoreProductDisplayController(){ 
  records = [SELECT Name, Type__c, Price__c, Brand__c FROM Store_Product__c]; 
  } 
}