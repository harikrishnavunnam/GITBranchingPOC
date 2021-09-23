trigger ClosedOpportunityTrigger on Opportunity(after insert, after update) {

List<Task> listTask = new List<Task>();
 for(Opportunity opp : [select id,StageName from opportunity Where StageName='closed won' and id IN :Trigger.new])
 { 
  Task t = new Task();
  t.Subject = 'Follow Up Test Task';
  t.WhatID = opp.id; 
  listTask.add(t);
 }
 
 if(listTask.size()>0)
 {
 insert listTask;
 }

}