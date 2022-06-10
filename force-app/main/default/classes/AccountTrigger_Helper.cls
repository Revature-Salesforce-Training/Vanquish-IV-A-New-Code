//Created by Kathryn Olsen
//AccountTrigger_Helper
//Created 6/4/22
//Last Updated 6/7/22
//Account Trigger Helper that holds the logic for the Trigger

//instantiates the class AccountTrigger Helper
public class AccountTrigger_Helper {
    public static void accountMethod(List<Account> accList)  {
	    //public static, returning a void method (accountMethod) that will pass the List of Accounts, called accList
        for(Account z : accList) {
		//for account z within accList
            if(z.Name == 'Amazon') {
		    //if the name is the same as Amazon
               z.Rating = 'Hot'; 
		    //change the rating of account z to Hot
            }
		 }  
	   }
	}
