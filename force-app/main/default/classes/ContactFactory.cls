/*
Name: Contact Trigger Test Class
Author: Alex
Creation date: 2022/6/1
Last modified: 2022/6/1

For Contact Trigger tests.

*/

@isTest
public class ContactFactory {
    // Creates Contacts given a list of last names.
    public Static void createContactsWithNames(List<String> names)
    {
        List<Contact> cons = new List<Contact>();
        for (String n : names)
        {
            Contact c = new Contact(LastName=n);
            cons.add(c);
        }
        insert cons;
    }
}