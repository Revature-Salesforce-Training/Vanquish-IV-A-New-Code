trigger OpportunityPE_SubTrigger on Opportunity_Event__e (after insert) {
	List<Task> tasks = new List<Task>();
    for (Opportunity_Event__e event : Trigger.new){
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