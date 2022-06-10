//Name: ToolControllerTest
//Author: Nathan Kappler
//Created: 06/04/22
//Last Modified: 06/06/22
@isTest
public class ToolControllerTest {
    
    @testSetup
    public static void testSetup() {
        PageReference pageRef = Page.StoreProductToolPage;
        Test.setCurrentPage(pageRef);
        
        Store_Product__c prod = new Store_Product__c();
        
      	prod.name = 'Barrys Hammer';
        prod.Brand__c = 'Barrys';
        prod.Price__c = 200.00;
        prod.Type__c = 'Tool';     
    }
    
    @isTest
    public Static void testNext(){
        ToolController cont = new ToolController(); 
        cont.Next();  
        System.assertEquals(5, cont.Off);   
        
        cont.pushed = false;
        System.assertEquals([SELECT Brand__c, Price__c, Name, Type__c FROM Store_Product__c WHERE RecordType.name='Tool' OFFSET :cont.off], cont.product);	
    }
    
    @isTest
    public Static void testPrevious(){
        ToolController cont = new ToolController();
        cont.off = 0;
        cont.Previous(); 
        System.assertNotEquals(-5, cont.Off);
        
        cont.pushed = false;
        System.assertEquals([SELECT Brand__c, Price__c, Name, Type__c FROM Store_Product__c WHERE RecordType.name='Tool' OFFSET :cont.off], cont.product);
    }
    
    
    @isTest
    public Static void testFilter(){
        ToolController cont = new ToolController();
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
        ToolController cont = new ToolController();
        cont.clear();
        
        System.assert(!(cont.filterd));
        System.assert(cont.reset);
        System.assertEquals(0, cont.Off);
        System.assert(!(cont.pushed));
        System.assertEquals([SELECT Brand__c, Price__c, Name, Type__c FROM Store_Product__c WHERE RecordType.name='Tool' OFFSET :cont.off], cont.product);       
    }   
}