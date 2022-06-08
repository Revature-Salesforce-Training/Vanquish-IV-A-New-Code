/*
Name: My Gematria Test Class
Author: Alex
Creation date: 2022/6/6
Last modified: 2022/6/6

Tests the visualforce page and extension for viewing gematria.

*/

@isTest
public class MyGematriaTest {
public static testMethod void MyGematriaPageTest()
{
    List<String> names = new List<String> {'Son of Sin', 'Beast Test', 'Hardened Heart', 'A ADSX Bio Chip', 'Spirit Birth', 'Righteous God', 'God\'s Anointing', 'Finished Cross'};
    // Get some contacts from the factory.
    ContactFactory.createContactsWithNames(names);
    // Why do I need this query when I could just edit the factory to return a list?
    // Because the contacts that it would return don't actually have values from the handler.
    // But this will work.
    List<Contact> cons = [SELECT Gematria_Value__c FROM Contact];
    
    
    // Set the page.
    PageReference pageRef = Page.MyGematriaPage;
	Test.setCurrentPage(pageRef);
    
    // Create the relevent objects.
    ApexPages.StandardSetController ssc = new  ApexPages.StandardSetController(cons);     
    MyGematriaExtension ext = new MyGematriaExtension(ssc);
}
}