Trigger AccountTrigger on Account (after insert , after update){
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            AccountTriggerHandler.createContactOnAccount(Trigger.new);
        }
        if(Trigger.isUpdate){
            AccountTriggerHandler.createContactOnAccount(Trigger.new);
        }
    }
    
}