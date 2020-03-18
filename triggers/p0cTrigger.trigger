trigger p0cTrigger on Contact (before insert) {
    public class TriggerHelper {
    
        public void Helper(List<Contact> Contacts){

    List<Account> myAccounts = [SELECT Name,Phone FROM Account];

    for(contact myContact : contacts){

        for (Account theseContacts : myAccounts){
            if(myContact.AccountId == null){
                String ContactName = myContact.LastName;
                if(ContactName == theseContacts.Name && myContact.Phone == theseContacts.Phone ){
                  myContact.AccountId = theseContacts.id;
                  
                }
            }

        }

    }
    }
}

}