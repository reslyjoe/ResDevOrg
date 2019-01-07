trigger AddRelatedRecordBulkified on Account (after insert, after update) {
    List<Opportunity> opptytoadd = new List<Opportunity>();
    
    for(Account a:[SELECT Id,Name from Account where Id in :Trigger.New 
                   AND Id not in (Select AccountId from Opportunity)]){
                       opptytoadd.add(new Opportunity(Name=a.Name + ' Trigger Opportunity',
                                       StageName='Prospecting',
                                       CloseDate=System.today().addMonths(1),
                                       AccountId=a.Id)
                                     );
                   }
    if(opptytoadd.size() > 0){
        insert opptytoadd;
    }
}