<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Gender</fullName>
        <field>Gender__c</field>
        <formula>IF( ISPICKVAL(Sibling_Name__r.Gender__c, &quot;Male&quot;),&quot;Male&quot; , &quot;Female&quot;)</formula>
        <name>Gender</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sibling_Birthdate</fullName>
        <field>Birthdate__c</field>
        <name>Sibling Birthdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sibling_Birthdate_Update</fullName>
        <field>Birthdate__c</field>
        <formula>Sibling_Name__r.Birthdate</formula>
        <name>Sibling Birthdate Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sibling_Gender</fullName>
        <field>Gender__c</field>
        <name>Sibling Gender</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Sibling Birthdate</fullName>
        <actions>
            <name>Sibling_Birthdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Sibling__c.Birthdate__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Birthdate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sibling Birthdate Update</fullName>
        <actions>
            <name>Sibling_Birthdate_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Birthdate will get the the details from Contact - Record Type - Child</description>
        <formula>ISBLANK( Birthdate__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Sibling Gender</fullName>
        <actions>
            <name>Sibling_Gender</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND (2 OR 3)</booleanFilter>
        <criteriaItems>
            <field>Sibling__c.Gender__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Gender__c</field>
            <operation>equals</operation>
            <value>Male</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Gender__c</field>
            <operation>equals</operation>
            <value>Female</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Sibling Gender Name</fullName>
        <actions>
            <name>Gender</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Gender will get the the details from Contact - Record Type - Child</description>
        <formula>ISBLANK(Gender__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
