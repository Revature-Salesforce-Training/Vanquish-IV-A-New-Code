//Name: Opportunity Trigger Helper
//Author: Nathan Kappler
//Created: 06/01/22
//Last Modified: 06/01/22
//Helper class for the opportunity trigger 
public class OpportunityTriggerHelper {
    public static void SaveMoney(List<Opportunity> olist){
        for(Opportunity o : olist){
           if((o.Discount_Percentage__c != null && o.Discount_Percentage__c > 30) 
           && o.Amount < 15000)
           {o.addError('You cannot give an Opportunity with less than $15,000 in the amount a discount greater than 30%.'+
                       ' We\'ll lose all our money that way!' );}
        }
    }
}