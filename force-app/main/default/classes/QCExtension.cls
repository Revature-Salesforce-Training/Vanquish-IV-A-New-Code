public with sharing class QCExtension {

    private ApexPages.StandardSetController setController;
    private Integer list_size = 7;
    private Integer counter;
    
    public static List<Contact> records{get;set;}
    
    
    public QCExtension(ApexPages.StandardSetController setController) {
        setController.setPageSize(7);
        records = [SELECT Salutation, FirstName, LastName FROM Contact LIMIT 30 OFFSET :counter]; 

    }    
    public PageReference Beginning() {
      counter = 0;
      return null;
   }

   public PageReference Previous() {
      counter -= list_size;
      return null;
   }

   public PageReference Next() {
      counter += list_size;
      return null;
   }
    public static List<Contact> getRecords() {
        update records;
        return null;
    }
     
}