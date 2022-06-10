/*
Name: Contact Trigger Test Class
Author: Alex
Creation date: 2022/6/1
Last modified: 2022/6/1

Can see all DML events on Contact. Call whatever handlers you want below.

*/

trigger ContactTrigger on Contact (before insert, before update, before delete,
    after insert, after update, after delete, after undelete)
{
    switch on Trigger.operationType
    {
        when BEFORE_INSERT
        {
            // Alex Griggs
            // Reads a few standard fields, writes a custom field. See handler for details.
            GematriaHandler.BeforeInsert(Trigger.new);
        }
        when BEFORE_UPDATE
        {
            // Alex Griggs
            //  Reads a few standard fields, writes a custom field. See handler for details.
			GematriaHandler.BeforeUpdate(Trigger.new);
        }
        when BEFORE_DELETE
        {

        }
        when AFTER_INSERT
        {

        }
        when AFTER_UPDATE
        {

        }
        when AFTER_DELETE
        {

        }
        when AFTER_UNDELETE
        {

        }
    }
}