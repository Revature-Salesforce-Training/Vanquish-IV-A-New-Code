//Yury
@isTest
public class TestdelAccount {
    
        @isTest static void TestnotDelete() {
        	
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