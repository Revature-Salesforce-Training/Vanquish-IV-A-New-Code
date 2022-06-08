/*
Name: My Gematria Extension
Author: Alex
Creation date: 2022/6/6
Last modified: 2022/6/6

Provides data for the gematria page.

*/

public with sharing class MyGematriaExtension {

    private ApexPages.StandardSetController setController;
    // The only data that goes in or out.
    public static List<Contact> records{get;set;}
    
    // Simple SOQL query to fetch data for the table.
    public MyGematriaExtension(ApexPages.StandardSetController setController) {
        records = [SELECT Salutation, FirstName, LastName, 	Gematria_Value__c FROM Contact LIMIT 10]; 

    }    
    
    // The required "get" method.
    public static List<Contact> getRecords() {
        update records;
        return null;
    }
     
}