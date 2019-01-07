trigger ClosedOpportunityTrigger on Opportunity (after insert, after update){
    List<Task> tasktoadd = new List<Task>();
    
    for(Opportunity o:[Select Id,Name from Opportunity where StageName = 'Closed Won' and Id in :Trigger.New]){
        tasktoadd.add(new Task(Subject='Follow Up Test Task(from Trigger)',
                              WhatId=o.Id));
    }
    
    if(tasktoadd.size() > 0){
        insert tasktoadd;
    }
}