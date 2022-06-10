/*
 * Name of the file: ContactPageControllerTest
 * Name: Yury Pushkarev
 * Created date: 06/05/22
 * Last modified date: 06/09/22
 * Overview: Test Class designed to test code coverage of AccountBeforeD_Helper class
*/
@isTest
public class ContactPageControllerTest {
    
    //Test designed for ContactPageController
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