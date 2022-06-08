/*
Name: Gematria Handler
Author: Alex
Creation date: 2022/6/1
Last modified: 2022/6/1

Gematria is the old Hebrew practice of assigning number values to letters, then summing the values of every letter in a set of letters.
https://www.gematrix.org/gematria.php#english_gematria
This handler edits a custom field on Contact with the Gematria value of its full name, triggered by both inserts and updates.

*/

public with sharing class GematriaHandler {
    // Converts the ASCII representation of a character to its gematria value.
    // I thought I would have to hardcode a map for gematria values, but it turns out that the english gematria table is very similar to the ASCII table.
    // The only differences can fit in two lines of code, in fact.
    private static Integer ASCIIToGematria(Integer ascii)
    {
        if (ascii < 97 || ascii > 122) return 0;
        return 6 * (ascii - 96);
    }
    // Processes a contact's name fields into one string.
    private static String FullName(Contact c)
    {
        String sal = c.Salutation;
        String first = c.FirstName;
        String last = c.LastName;
        // Why do I explicitly set "blank" fields to an empty string?
        // Because if I just treat it like a regular string, I get 'null' instead. The word null instead of a null value.
        // I'm not kidding.
        if (String.isBlank(sal)) {sal = '';}
        if (String.isBlank(first)) {first = '';}
        // It would look wrong without spaces, but those don't matter in gematria.
        return sal + first + last;
    }
    // Loops through a given batch of contacts, editing a custom field on each one.
    private static void Loop(List<Contact> cons)
    {
        Integer total;
        // Apex doesn't seem to have a char data type, but it has integers. Works for me.
        List<Integer> chars;
        for (Contact c : cons)
        {
            total = 0;
            chars = FullName(c).toLowerCase().getChars();
            for (Integer character : chars)
            {
                total += ASCIIToGematria(character);
            }
            c.Gematria_Value__c	= total;
        }
    }
    // The only two functions that the trigger can call.
    public static void BeforeInsert(List<Contact> cons)
    {
        Loop(cons);
    }
    public static void BeforeUpdate(List<Contact> cons)
    {
        Loop(cons);
    }
}