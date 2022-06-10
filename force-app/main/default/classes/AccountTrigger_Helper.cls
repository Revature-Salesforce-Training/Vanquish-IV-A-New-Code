public class AccountTrigger_Helper {
    //Kathryn Olsen
    public static void accountMethod(List<Account> accList)  {
        for(Account z : accList) {
            if(z.Name == 'Amazon') {
               z.Rating = 'Hot'; 
            }
		 }  
	   }
	}