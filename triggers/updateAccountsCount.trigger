trigger updateAccountsCount on Contact (before update, before insert) {

     try{
       
        list <Id> accountIDs = new list <Id> ();
        list <Contact> contactList = new list <Contact> ();
        list <Contact> oldContactList = new list <Contact> ();
        list <Account> accountList = new list <Account> ();
        list <Account> newAccountList = new list <Account> ();
        list <Account> oldAccountList = new list <Account> ();
        
        for (Contact tempContact : trigger.new){
            accountIDs.add(tempContact.AccountId);
            contactList.add(tempContact);            
        }
        
       
         system.debug('Received the key accountlist' + accountIDs);
         
         accountList = [select Former_Student__c, Current_Student__c, Prospect_Student__c, Future_Student__c, Hosted_Student__c from Account
                     where ID IN :accountIDs ];
                     

         for (Contact tempContact : contactList) {
             for (Account tempAccount : accountList) {
                 if (tempContact.AccountId == tempAccount.Id) {
                 
                     system.debug('-------Found the matching Account for a Contact----------');
                     system.debug('--------Values-----------------------------' + tempAccount.Future_Student__c); 
                     if(tempContact.Student_Status__c == 'Future Student')
                         tempAccount.Future_Student__c = tempAccount.Future_Student__c + 1;
                     else if(tempContact.Student_Status__c == 'Former Student')
                         tempAccount.Former_Student__c = tempAccount.Former_Student__c + 1;
                     else if(tempContact.Student_Status__c == 'Current Student')
                         tempAccount.Current_Student__c = tempAccount.Current_Student__c + 1;
                     else if(tempContact.Student_Status__c == 'Hosted Student')
                         tempAccount.Hosted_Student__c = tempAccount.Hosted_Student__c + 1;
                     else if(tempContact.Student_Status__c == 'Prospect Student')
                         tempAccount.Prospect_Student__c = tempAccount.Prospect_Student__c + 1;
                         
                    newAccountList.add(tempAccount);
                 
                 }
             
             
             }
         
         
         }
         
         update newAccountList;
         
         
         if(trigger.isUpdate){
         
         for (Contact tempContact : trigger.old){
            oldContactList.add(tempContact);            
         }
             for (Contact tempContact : oldContactList) {
                 for (Account tempAccount : accountList) {
                     if (tempContact.AccountId == tempAccount.Id) {
                     
                         system.debug('-------Found the matching Account for a oldContact----------');
                         if(tempContact.Student_Status__c == 'Future Student' && tempAccount.Future_Student__c > 0)                            
                             tempAccount.Future_Student__c = tempAccount.Future_Student__c - 1;
                         else if(tempContact.Student_Status__c == 'Former Student' && tempAccount.Former_Student__c > 0)
                             tempAccount.Former_Student__c = tempAccount.Former_Student__c - 1;
                         else if(tempContact.Student_Status__c == 'Current Student' && tempAccount.Current_Student__c > 0)
                             tempAccount.Current_Student__c = tempAccount.Current_Student__c - 1;
                         else if(tempContact.Student_Status__c == 'Hosted Student' && tempAccount.Hosted_Student__c > 0)
                             tempAccount.Hosted_Student__c = tempAccount.Hosted_Student__c - 1;
                         else if(tempContact.Student_Status__c == 'Prospect Student' && tempAccount.Prospect_Student__c > 0)
                             tempAccount.Prospect_Student__c = tempAccount.Prospect_Student__c - 1;
                             
                        oldAccountList.add(tempAccount);
                     
                     }            
                 }
             }    
        }
         
         update oldAccountList;
    }
     catch(exception e){
        system.debug('--------------Exception occured for updateAccountsCount ---------' + e);
    }



}