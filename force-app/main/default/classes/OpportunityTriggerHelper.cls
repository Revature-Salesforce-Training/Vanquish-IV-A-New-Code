public class OpportunityTriggerHelper {
    public static void SaveMoney(List<Opportunity> olist){
        for(Opportunity o : olist){
           if((o.Discount_Percentage__c != null && o.Discount_Percentage__c < 0.30) 
           && o.Amount < 15000)
            o.addError('You cannot give an Opportunity with less than $15,000 in the amount a discount greater than 30%.'+
            ' We\'ll lose all our money that way!' );
        }
    }
}