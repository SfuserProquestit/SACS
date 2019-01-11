trigger UpdateLeadPostCode on Lead (before insert,before update) {

    Map<String,PostalRating__c> mapPostalRating = PostalRating__c.getAll();
    for(Lead ld : Trigger.new) {
        PostalRating__c postalRating = mapPostalRating.get(ld.PostalCode);
        if(postalRating  != null)
        {
            ld.Postal_Range__c = postalRating.Range__c;
            ld.Postal_Range_Ranking__c = postalRating.Ranking__c;
        }
        if(ld.Company == null || ld.Company == '')
            ld.Company = ld.LastName;
            
        if(ld.Tour_Date__c != null && ld.School_Tour_Date__c == null ) {
           ld.School_Tour_Date__c = ld.Tour_Date__c;
        }
    }
    
    /*
     *Update No of attendee on Campaign Members
     */
     if(trigger.isUpdate)
     CampaignMembersHandler.UpdateNoAttendee(trigger.newMap.keyset());
    
}