@isTest
private class TestUpdateLeadPostCode {

 static testMethod void UpdateLeadPostCodeTest()    {
 
    PostalRating__c postalRating = new PostalRating__c();
    postalRating.Name = '1001';
    postalRating.Range__c = 'Within 10 Kms';
    postalRating.Ranking__c = 1;
    insert postalRating;
 
    Lead ld = new Lead();
    ld.FirstName = 'Jane';
    ld.LastName = 'Doe';
    ld.Lead_Type__c = 'Father';
    ld.Lead_Stage__c = 'Enquiry';
    ld.Status = 'Qualified';
    ld.School_Level__c = 'Junior School';
    ld.PostalCode = '1001';
    ld.Company = null;
    insert ld;
    }
    
    static testMethod void CampaignMemberesUpdateTest() {
        Campaign campaign = new Campaign(Name = 'Test Campaign', Type = 'Advertisement' );
        insert campaign ;
        
        Lead lead = new Lead();
        lead .FirstName = 'Jane';
        lead .LastName = 'Doe';
        lead .Lead_Type__c = 'Father';
        lead .Lead_Stage__c = 'Enquiry';
        lead .Status = 'Qualified';
        lead .School_Level__c = 'Junior School';
        lead .PostalCode = '1001';
        lead .Company = null;
        insert lead;
        
        CampaignMember campaignMember = new CampaignMember( CampaignId = campaign.Id, LeadId = lead.Id, Status = 'Sent' );
        insert campaignMember ;
        
        update lead;
    }
}