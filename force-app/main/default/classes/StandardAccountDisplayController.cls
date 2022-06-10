
//Name: StandardAccountDisplayController
//Author: Kathryn Olsen
//Created: 6/4/22
//Last Modified: 6/7/22

//Standard Controller for the Account Display




public with sharing class StandardAccountDisplayController{ 
    //public with sharing class StandardAccountDisplayController
    public String FilteredList { get; set; }
    //public String Filtered list getter and setter

    public List<Account> records {get; set;}
    //public List of account records that we will get and set
  public StandardAccountDisplayController(){ 
      //public display controller method
  records = [SELECT Name, AccountNumber, BillingState, ShippingState FROM Account]; 
      //SOQL to find the name, accounNumber, Billing State, and Shipping state from Account.  This controller makes these accounts 
      //and fields visible to the computer to work with in the TriggerHelper
  } 
}
