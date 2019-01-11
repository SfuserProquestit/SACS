<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Campaign_Maximum_Limit</fullName>
        <description>Campaign Maximum Limit</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>SACS_Templates/Campaign_Max_Limit_Alert</template>
    </alerts>
    <alerts>
        <fullName>TotalResponseStatusEmail</fullName>
        <description>Response Status exceeds 30</description>
        <protected>false</protected>
        <recipients>
            <recipient>rpedley@sacs.nsw.edu.au</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>SACS_Templates/Total_Response_Status_Email</template>
    </alerts>
    <alerts>
        <fullName>Total_Number_of_Members</fullName>
        <ccEmails>standrews@arxxus.com</ccEmails>
        <description>When Total Member is greater than or equal to 30 it will send an email to the recipients</description>
        <protected>false</protected>
        <recipients>
            <recipient>rpedley@sacs.nsw.edu.au</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>SACS_Templates/Total_Response_Status_Email</template>
    </alerts>
    <fieldUpdates>
        <fullName>Max_Limit</fullName>
        <field>Maximum_Limit__c</field>
        <formula>30</formula>
        <name>Max Limit</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Alert when campaign reaches max limit</fullName>
        <actions>
            <name>Campaign_Maximum_Limit</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.Remaining_Seats__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Set up Maximum Limit for school tours</fullName>
        <actions>
            <name>Max_Limit</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.Type</field>
            <operation>equals</operation>
            <value>School Tour</value>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.Maximum_Limit__c</field>
            <operation>notEqual</operation>
            <value>30</value>
        </criteriaItems>
        <description>It should display 30 for school tours</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
