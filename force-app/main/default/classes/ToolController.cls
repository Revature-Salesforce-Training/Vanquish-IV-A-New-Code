//Name: ToolController
//Author: Nathan Kappler
//Created: 06/04/22
//Last Modified: 06/06/22
public class ToolController {
	//List of products that will be used throughout this class
    public list<Store_Product__c> product{get;set;}
    //Variable that holds inputtext filter value
    public string filterval{get;set;}
    //Variable that determines the offsett on the SOQL querys
    public integer off = 0;
    //Boolean that checks if the pageblock is being filtered
    public boolean filterd=false;
    //Resets the offset when filtering so that the page shows the filtered values even when a few pages in
    public boolean reset = true;
    //Determines if the filter button has been pushed
    public boolean pushed = false;
    //Picklist value
    public String selectedF{get;set;}
    
    //Class constructor
    public ToolController(){
        product = [SELECT Brand__c, Price__c, Name, Type__c
                   FROM Store_Product__c WHERE RecordType.name='Tools' OFFSET :off];
    }
    
    //Custom next method that iterates forward through the values
    public void next(){
        //Stops the offset from incrementing if the end of records has been reached
        if(product.size() < off)
            return;
        
        off+=5;
        
        //Determines if results have been filtered
        if(pushed){
            if(filterd){
                filter();
            }
            else{
                clear();
            }     
        }
        else
            product = [SELECT Brand__c, Price__c, Name, Type__c FROM Store_Product__c WHERE RecordType.name='Tools' OFFSET :off];
    }
    
    //Custom next method that iterates background through the values
    public void previous(){
        //Keeps the offset from going into the negative
        if(off == 0)
            return;
        
        off-=5;
        //Determines if results have been filtered
        if(pushed){
            if(filterd){
                filter();
            }
            else{
                clear();
            }
        }
        else
            product = [SELECT Brand__c, Price__c, Name, Type__c FROM Store_Product__c WHERE RecordType.name='Tools' OFFSET :off];
    }
    
    //Method that initiates the filtering process
    public void filter(){
 		//Lets the other methods know that the current results are being filtered
        filterd = true;
        //Indicates that the filtered button has been pressed
        pushed = true;
        //Resets offset so that the pageblock displays correctly 
        if(reset){
       		off = 0;
            reset = false;
        }
        
        //If statement that filters diffrent fields
        if(selectedF.equalsIgnoreCase('name'))
        	product = [SELECT Brand__c, Price__c, Name, Type__c
                   FROM Store_Product__c WHERE RecordType.name='Tools' and Name=:filterval OFFSET :off];
        else if(selectedF.equalsIgnoreCase('type'))
            product = [SELECT Brand__c, Price__c, Name, Type__c
                   FROM Store_Product__c WHERE RecordType.name='Tools' and Type__c=:filterval OFFSET :off];
        else if(selectedF.equalsIgnoreCase('brand'))
            product = [SELECT Brand__c, Price__c, Name, Type__c
                       FROM Store_Product__c WHERE RecordType.name='Tools' and Brand__c=:filterval OFFSET :off];
        else if(selectedF.equals('price'))
            product = [SELECT Brand__c, Price__c, Name, Type__c
                       FROM Store_Product__c WHERE RecordType.name='Tools' and Price__c=:decimal.valueOf(filterval) OFFSET :off];		
    }
    
    //Method that clears the filter
    public void clear(){
        //Tells the page that it is no longer filtering results
        filterd = false;
        //Indicates that the filter button has been "unpressed" for offset calculations later
        reset = true;
        //Resets offset
        off = 0;
        //Tells the page that it should not call filter() or clear() when executing next()
        pushed = false;
        //Resets pageblock
        product = [SELECT Brand__c, Price__c, Name, Type__c
                   FROM Store_Product__c WHERE RecordType.name='Tools' OFFSET :off];
    }
}