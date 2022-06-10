public with sharing class StandardAccountDisplayController{ 
    //Kathryn Olsen
    public String FilteredList { get; set; }

    public List<Account> records {get; set;}
  public StandardAccountDisplayController(){ 
  records = [SELECT Name, AccountNumber, BillingState, ShippingState FROM Account]; 
  } 
}