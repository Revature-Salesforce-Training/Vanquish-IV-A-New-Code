//Name: OpportunityTestClass
//Author: Nathan Kappler
//Created: 06/04/22
//Last Modified: 06/06/22
@isTest
public class OpportunityTestClass {
	@isTest
    public Static void NegativeTriggerTestMethod(){
    	    Opportunity o = new Opportunity();
        	o.Discount_Percentage__c = .25;
        	o.Amount = 5000;
        	o.Name = 'bungle boopsy';
        	o.StageName = 'Prospecting';
        	o.CloseDate = Date.newInstance(2024, 2, 17);
        	Database.insert(o);
    }
    
    @isTest
    public Static void PositiveTriggerTestMethod(){
    	    Opportunity o = new Opportunity();
        	o.Discount_Percentage__c = .25;
        	o.Amount = 16000;
        	o.Name = 'bungle boopsy';
        	o.StageName = 'Prospecting';
        	o.CloseDate = Date.newInstance(2024, 2, 17);
        	Database.insert(o);
    }
}