@isTest
public class FurnitureControllerTest {
    
    @testSetup
    public static void testSetup() {
        PageReference pageRef = Page.StoreProductFurniturePage;
        Test.setCurrentPage(pageRef);
        
        Store_Product__c prod = new Store_Product__c();
        
      	prod.name = 'Tonys Sofa';
        prod.Brand__c = 'Tony';
        prod.Price__c = 1000.00;
        prod.Type__c = 'Furniture';     
    }
    
    @isTest
    public Static void testNext(){
        FurnitureController cont = new FurnitureController(); 
        cont.Next();  
        System.assertEquals(5, cont.Off);   
        
        cont.pushed = false;
        System.assertEquals([SELECT Brand__c, Price__c, Name, Type__c FROM Store_Product__c WHERE RecordType.name='Furniture' OFFSET :cont.off], cont.product);	
    }
    
    @isTest
    public Static void testPrevious(){
        FurnitureController cont = new FurnitureController();
        cont.off = 0;
        cont.Previous(); 
        System.assertNotEquals(-5, cont.Off);
        
        cont.pushed = false;
        System.assertEquals([SELECT Brand__c, Price__c, Name, Type__c FROM Store_Product__c WHERE RecordType.name='Furniture' OFFSET :cont.off], cont.product);
    }
    
    
    @isTest
    public Static void testFilter(){
        FurnitureController cont = new FurnitureController();
        cont.filterval = 'Tonys Sofa';
        cont.filter();
        System.assert(cont.filterd);
        System.assert(cont.pushed);
        cont.reset = true;
        System.assertEquals(0, cont.Off);
        
        /* Unfortunately I could not implement this properly in time :(
        cont.selectedF = 'name';
        System.assertEquals([SELECT Brand__c, Price__c, Name, Type__c FROM Store_Product__c WHERE RecordType.name='Furniture' and Name=:cont.filterval OFFSET :cont.off], cont.product);
        
        cont.filterval = 'Furniture';
        cont.filter();
        cont.selectedF = 'type';
        System.assertEquals([SELECT Brand__c, Price__c, Name, Type__c FROM Store_Product__c WHERE RecordType.name='Furniture' and Type__c=:cont.filterval OFFSET :cont.off], cont.product);
		
        cont.filterval = 'Tony';
        cont.filter();
        cont.selectedF = 'brand';
        System.assertEquals([SELECT Brand__c, Price__c, Name, Type__c FROM Store_Product__c WHERE RecordType.name='Furniture' and Brand__c=:cont.filterval OFFSET :cont.off], cont.product);
		
        cont.filterval = '1000.00';
        cont.filter();
        cont.selectedF = 'price';
        System.assertEquals([SELECT Brand__c, Price__c, Name, Type__c FROM Store_Product__c WHERE RecordType.name='Furniture' and Price__c=:decimal.valueOf(cont.filterval) OFFSET :cont.off], cont.product);
		*/
	}
    
    @isTest
    public Static void testClear(){
        FurnitureController cont = new FurnitureController();
        cont.clear();
        
        System.assert(!(cont.filterd));
        System.assert(cont.reset);
        System.assertEquals(0, cont.Off);
        System.assert(!(cont.pushed));
        System.assertEquals([SELECT Brand__c, Price__c, Name, Type__c FROM Store_Product__c WHERE RecordType.name='Furniture' OFFSET :cont.off], cont.product);       
    }
    
    
}