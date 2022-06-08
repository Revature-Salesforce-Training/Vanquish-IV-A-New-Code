@isTest
public class ContactPageControllerTest {

    
    @isTest
    public static void singlePositive() {
      PageReference pageRef = Page.ContactPage;
      Test.setCurrentPage(pageRef);
        
      ContactPageController cpc = new ContactPageController();
      cpc.save();
        
      List<Task> ts = [Select Id FROM Task];
        
      System.assertEquals(1, ts.size());
    }
}