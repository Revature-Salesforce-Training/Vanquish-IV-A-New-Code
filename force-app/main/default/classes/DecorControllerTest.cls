//Name: DecorControllerTest
//Author: Nathan Kappler
//Created: 06/04/22
//Last Modified: 06/06/22
@isTest
public class DecorControllerTest {
    
    @testSetup
    public static void testSetup() {
        PageReference pageRef = Page.StoreProductDecorPage;
        Test.setCurrentPage(pageRef);
        
        Store_Product__c prod = new Store_Product__c();
        
      	prod.name = 'Marys Painting';
        prod.Brand__c = 'Marys';
        prod.Price__c = 6000.00;
        prod.Type__c = 'Decor';     
    }
    
    @isTest
    public Static void testNext(){
        DecorController cont = new DecorController(); 
        cont.Next();  
        System.assertEquals(5, cont.Off);   
        
        cont.pushed = false;
        System.assertEquals([SELECT Brand__c, Price__c, Name, Type__c FROM Store_Product__c WHERE RecordType.name='Decor' OFFSET :cont.off], cont.product);	
    }
    
    @isTest
    public Static void testPrevious(){
        DecorController cont = new DecorController();
        cont.off = 0;
        cont.Previous(); 
        System.assertNotEquals(-5, cont.Off);
        
        cont.pushed = false;
        System.assertEquals([SELECT Brand__c, Price__c, Name, Type__c FROM Store_Product__c WHERE RecordType.name='Decor' OFFSET :cont.off], cont.product);
    }
    
    
    @isTest
    public Static void testFilter(){
        DecorController cont = new DecorController();
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
        DecorController cont = new DecorController();
        cont.clear();
        
        System.assert(!(cont.filterd));
        System.assert(cont.reset);
        System.assertEquals(0, cont.Off);
        System.assert(!(cont.pushed));
        System.assertEquals([SELECT Brand__c, Price__c, Name, Type__c FROM Store_Product__c WHERE RecordType.name='Decor' OFFSET :cont.off], cont.product);       
    }   
}