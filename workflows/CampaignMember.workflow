<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_No_of_People_Attending</fullName>
        <field>No_of_People_Attending__c</field>
        <formula>Lead.No_of_People_Attending__c</formula>
        <name>Update No. of People Attending</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update No%2E of People Attending from enquiry</fullName>
        <actions>
            <name>Update_No_of_People_Attending</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
