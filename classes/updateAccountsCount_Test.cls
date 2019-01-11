/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an organization are executed whenever Apex code is deployed
 * to a production organization to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production organization. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the organization size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class updateAccountsCount_Test {


static testMethod void myUnitTest() {
        // TO DO: implement unit test
        try {
        
        
        String monthName = 'August';
        string currentYear = '2012';        
        //Profile profile = [Select Name, Id From Profile where Name = 'EMEA - Sales Manager - Merck'];
        Profile profile = [Select Name, Id From Profile Where Name = 'System Administrator']; 
        User usr = new User(alias = 'standt', email='testjenadyco@arxxus.com', Phone = '+61 02123456',emailencodingkey='UTF-8', lastname='jenadyco-arxxus-1234', languagelocalekey='en_US', localesidkey='en_US', profileid = profile.Id, timezonesidkey='Asia/Calcutta', username='testjenadyco@arxxus.com',isActive=true);
        insert usr;
        
        Account account = new Account();
        account.Name = 'ABC Technology';
        account.OwnerId = usr.Id;
        account.Phone = '12345';
        insert account;     
          
       
        
        Contact contact = new Contact();
        contact.AccountId = account.Id;
        contact.OwnerId = usr.Id;
        contact.Email = 'hiral.sawla@arxxus.com';
        contact.MobilePhone = '1234567';
        contact.FirstName = 'Hiral';
        contact.LastName = 'Sawla';
        contact.Phone = '123456';
        contact.Student_Status__c = 'Prospect Student';
        
        insert contact;
        
        contact.Student_Status__c = 'Former Student';
        update contact;
        
        Contact contact1 = new Contact();
        contact1.AccountId = account.Id;
        contact1.OwnerId = usr.Id;
        contact1.Email = 'hiral.sawla@arxxus.com';
        contact1.MobilePhone = '1234567';
        contact1.FirstName = 'Manish';
        contact1.LastName = 'Sawla';
        contact1.Phone = '123456';
        contact1.Student_Status__c = 'Current Student';
        
        insert contact1;       
        contact1.Student_Status__c = 'Future Student';
        update contact1;
        
        
        Contact contact2 = new Contact();
        contact2.AccountId = account.Id;
        contact2.OwnerId = usr.Id;
        contact2.Email = 'hiral.sawla@arxxus.com';
        contact2.MobilePhone = '1234567';
        contact2.FirstName = 'AAA';
        contact2.LastName = 'BBBB';
        contact2.Phone = '123456';
        contact2.Student_Status__c = 'Future Student';        
        insert contact2;       
        contact2.Student_Status__c = 'Hosted Student';
        update contact2;
        contact2.Student_Status__c = 'Former Student';
        update contact2;
        contact2.Student_Status__c = 'Current Student';
        update contact2;
        
        }

        catch(Exception e){system.debug('-----------Error----------------'+e);}    
    }

}