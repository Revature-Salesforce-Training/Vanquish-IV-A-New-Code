// Name: Opportunity Platform Event Subscribe Trigger
// Author: Kory
// Created: 06/04/22
// Last Modified: 06/07/22
// 
// The subscriber side of the Opportunity Platform Event

trigger OpportunityPE_SubTrigger on Opportunity_Event__e (after insert) {
    // After a new platform event record is created, create a new task and insert into new Task List
	List<Task> tasks = new List<Task>();
    for (Opportunity_Event__e event : Trigger.new){
        //If the newly created platform event's price is over 100000, create new task with the following fields.
        if(event.Price__c >= 100000){
            Task tsk = new Task();
            tsk.Priority = 'High';
            tsk.Status = 'In Progress';
            tsk.Subject = 'Call';
            tsk.OwnerId = '005IY000000g1Xb';
                //event.CreatedById;
            tsk.WhatId = event.OpportunityId__c;
            tasks.add(tsk); 
        }
    }
   Database.insert(tasks);
}