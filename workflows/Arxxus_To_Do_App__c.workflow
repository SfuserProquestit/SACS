<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Arxxus_fixed_issue_alert</fullName>
        <ccEmails>standrews@arxxus.com</ccEmails>
        <description>Arxxus fixed issue alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>rpedley@sacs.nsw.edu.au</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>SACS_Templates/SACS_Issue_Logged</template>
    </alerts>
    <alerts>
        <fullName>New_Issue_Alert</fullName>
        <ccEmails>standrews@arxxus.com</ccEmails>
        <description>Arxxus New issue alert</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>SACS_Templates/SACS_Issue_Logged</template>
    </alerts>
    <rules>
        <fullName>Arxxus Email Alert</fullName>
        <actions>
            <name>New_Issue_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Arxxus_To_Do_App__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Arxxus Email Alert to Robyn</fullName>
        <actions>
            <name>Arxxus_fixed_issue_alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Arxxus_To_Do_App__c.Name</field>
            <operation>equals</operation>
            <value>Fixed</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
