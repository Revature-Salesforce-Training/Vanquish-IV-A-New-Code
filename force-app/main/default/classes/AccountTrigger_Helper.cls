public class AccountTrigger_Helper {
    public static void accountMethod(List<Account> accList)  {
        for(Account z : accList) {
            if(z.Name == 'Amazon') {
               z.Rating = 'Hot'; 
            }
		 }  
	   }
	}