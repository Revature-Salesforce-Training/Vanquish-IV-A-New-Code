/*
 * Name of the file: TestdelAccount
 * Name: Yury Pushkarev
 * Created date: 06/03/22
 * Last modified date: 06/09/22
 * Overview: Test Class designed to test code coverage of AccountBeforeD_Helper class
*/
@isTest
public class TestdelAccount {
    
    	//Function designed to test code coverage by first creating a mock account and high pririoty case within the Test and than attempting to delete afforementioned account
        @isTest static void testNotDelete() {
        	
    		Account n = new Account(Name='Test Name');
        	insert n;
        
        	Case c = new Case(AccountId=n.Id, Priority='High');
        	insert c;
        
        	Test.startTest();
        	Database.DeleteResult r = Database.delete(n, false);
        	Test.stopTest();
        
        	System.assert(!r.isSuccess());
        	System.assert(r.getErrors().size() > 0);
        	System.assertEquals('Please resolve High priority case before deleting account', r.getErrors()[0].getMessage());
            }
}