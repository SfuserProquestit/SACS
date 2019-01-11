public class CampaignMembersHandler {
    /*
     * Dry Update on campaignMembers then remaining work will be completed by workflow
     */
    public static void UpdateNoAttendee(set<ID> leadIdSet) {
        list<CampaignMember> campaignMembers = [select Id from CampaignMember where LeadId in :leadIdSet];
        if(campaignMembers.size() > 0 ) {
        update campaignMembers; 
        }
    }
}