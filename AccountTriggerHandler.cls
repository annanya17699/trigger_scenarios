public class AccountTriggerHandler(){
    public static void createContactOnAccount(List<Account> accList){
        List<Contact> contactList = new List<Contact>();
        Set<Id> accIds = new Set<Id>();
        for(Account a : accList){
            if(a.Primary_Phone__c){
                Contact c = new Contact( FirstName = a.FirstName , LastName = a.LastName, Phone = a.Phone, AccountId = a.Id);
                contactList.add(c);
            }
        }

        if(!contactList.isEmpty()) insert contactList;
    }
}