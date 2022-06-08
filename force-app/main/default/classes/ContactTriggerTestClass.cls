/*
Name: Contact Trigger Test Class
Author: Alex
Creation date: 2022/6/1
Last modified: 2022/6/1

Tests handlers for the Contact Trigger.

*/

@isTest
private class ContactTriggerTestClass {
    // Ensure that accurate gematria values are being set by the trigger on both inserts and updates.
    @isTest
    public Static void GematriaTestMethod()
    {
        // Good names should have good gematria values. Evil names should have evil gematria values.
        List<String> namesEvil = new List<String> {'Son of Sin', 'Beast Test', 'Hardened Heart', 'A ADSX Bio Chip'};
        List<String> namesGood = new List<String> {'Spirit Birth', 'Righteous God', 'God\'s Anointing', 'Finished Cross'};
        Integer valueEvil = 666;
        Integer valueGood = 888;

        // Get some contacts from the factory.
        ContactFactory.createContactsWithNames(namesEvil);
        // Why do I need this query when I could just edit the factory to return a list?
        // Because the contacts that it would return don't actually have values from the handler.
        // But this will work.
        List<Contact> cons = [SELECT Gematria_Value__c FROM Contact];

        // Looping through the list is nice and all, but are we actually asserting as many times as we're supposed to?
        System.assertEquals(namesEvil.size(), namesGood.size());
        Integer intendedAsserts = namesEvil.size() * 2;
        Integer executedAsserts = 0;
        
        // Verify that the morality of each contact's value matches that of its name.
        for (Contact c : cons)
        {
            System.assertEquals(valueEvil, c.Gematria_Value__c);
            executedAsserts += 1;
        }

        // Redemption.
        for (Integer i = 0; i < cons.size(); i++)
        {
            cons[i].LastName = namesGood[i];
        }
        update cons;
        cons = [SELECT Gematria_Value__c FROM Contact];

        // Verify that the morality of each contact's value still matches that of its name.
        for (Contact c : cons)
        {
            System.assertEquals(valueGood, c.Gematria_Value__c);
            executedAsserts += 1;
        }

        // Again, making sure that the asserts actually happened.
        System.assertEquals(intendedAsserts, executedAsserts);
    }
}