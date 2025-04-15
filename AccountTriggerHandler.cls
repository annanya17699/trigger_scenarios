public class AccountTriggerHandler(){
    public static void createContactOnAccount(List<Account> accList){
        Set<Id> accIds = new Set<Id>();
        for(Account a : accList){
            accIds.add(a.Id);
        }

        List<Contact> contactList;

        if(!accIds.isEmpty()){
            contactList = [Select Id , Phone , AccountId, Account.Phone, Account.Primary_Phone__c from Contact where AccountId in : accIds];            
        }

        if(!contactList.isEmpty()){
            for(Contact c : contactList){
                if(c.Account.Primary_Phone__c){
                    c.Phone = c.Account.Phone;
                }
            } 
        update contactList;          
        }
    }
}