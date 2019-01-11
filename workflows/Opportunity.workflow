<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Alert_on_Cancellation</fullName>
        <ccEmails>standrews@arxxus.com</ccEmails>
        <description>Email Alert on Cancellation</description>
        <protected>false</protected>
        <recipients>
            <recipient>rpedley@sacs.nsw.edu.au</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>SACS_Templates/Cancellation_Letter</template>
    </alerts>
    <alerts>
        <fullName>Email_Alert_on_Joining_Letter</fullName>
        <ccEmails>standrews@arxxus.com</ccEmails>
        <description>Email Alert on Joining Letter</description>
        <protected>false</protected>
        <recipients>
            <recipient>rpedley@sacs.nsw.edu.au</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>SACS_Templates/Acceptance_Letter</template>
    </alerts>
    <alerts>
        <fullName>Email_Alert_on_Offer</fullName>
        <ccEmails>standrews@arxxus.com</ccEmails>
        <description>Email Alert on Offer</description>
        <protected>false</protected>
        <recipients>
            <recipient>rpedley@sacs.nsw.edu.au</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>SACS_Templates/Offer_Letter</template>
    </alerts>
    <fieldUpdates>
        <fullName>Application</fullName>
        <field>Application__c</field>
        <formula>1</formula>
        <name>Application</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Application_Received_Date</fullName>
        <field>Application_Received_Date__c</field>
        <formula>Today()</formula>
        <name>Application Received Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Cancellation_Date</fullName>
        <field>Cancellation_Date__c</field>
        <formula>Today()</formula>
        <name>Cancellation Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Enrolment_Date</fullName>
        <field>Enrolment_Date__c</field>
        <formula>Today()</formula>
        <name>Enrolment Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Future_Enrolment_Date</fullName>
        <field>Future_Enrolment_Date__c</field>
        <formula>Today()</formula>
        <name>Future Enrolment Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Interview</fullName>
        <field>Interview__c</field>
        <formula>1</formula>
        <name>Interview</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Interview_Date</fullName>
        <field>Interview_Date__c</field>
        <formula>Today()</formula>
        <name>Interview Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Offer_Date</fullName>
        <field>Offer_Date__c</field>
        <formula>Today()</formula>
        <name>Offer Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Offer_to_Interview</fullName>
        <field>Offer_to_Interview__c</field>
        <formula>1</formula>
        <name>Offer to Interview</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Offer_to_Interview2</fullName>
        <field>Offer_to_Interview__c</field>
        <formula>1</formula>
        <name>Offer to Interview</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Application</fullName>
        <field>Application__c</field>
        <formula>1</formula>
        <name>Opp Application</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Cancellation</fullName>
        <field>Application__c</field>
        <formula>1</formula>
        <name>Application</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Cancellation1</fullName>
        <field>Interview__c</field>
        <formula>1</formula>
        <name>Opp Cancellation</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Cancellation2</fullName>
        <field>Offer__c</field>
        <formula>1</formula>
        <name>Offer</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Cancellation3</fullName>
        <field>Offer_to_Interview__c</field>
        <formula>1</formula>
        <name>Offer to Interview</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Cancellation4</fullName>
        <field>Cancellation__c</field>
        <formula>1</formula>
        <name>Cancellation</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Cancellation5</fullName>
        <field>Interview__c</field>
        <formula>1</formula>
        <name>Interview</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Enrolment</fullName>
        <field>Application__c</field>
        <formula>1</formula>
        <name>Application</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Enrolment1</fullName>
        <field>Interview__c</field>
        <formula>1</formula>
        <name>Interview</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Enrolment2</fullName>
        <field>Offer__c</field>
        <formula>1</formula>
        <name>Offer</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Enrolment3</fullName>
        <field>Offer_to_Interview__c</field>
        <formula>1</formula>
        <name>Offer to Interview</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Interview</fullName>
        <field>Application__c</field>
        <formula>1</formula>
        <name>Opp Interview</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Interview1</fullName>
        <field>Interview__c</field>
        <formula>1</formula>
        <name>Opp Interview</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Joined</fullName>
        <field>Application__c</field>
        <formula>1</formula>
        <name>Application</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Joined1</fullName>
        <field>Interview__c</field>
        <formula>1</formula>
        <name>Interview</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Joined2</fullName>
        <field>Offer__c</field>
        <formula>1</formula>
        <name>Offer</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Joined3</fullName>
        <field>Offer_to_Interview__c</field>
        <formula>1</formula>
        <name>Offer to Interview</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Joined4</fullName>
        <field>Joined__c</field>
        <formula>1</formula>
        <name>Joined</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Offer</fullName>
        <field>Application__c</field>
        <formula>1</formula>
        <name>Application</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Offer1</fullName>
        <field>Interview__c</field>
        <formula>1</formula>
        <name>Interview</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Offer2</fullName>
        <field>Offer__c</field>
        <formula>1</formula>
        <name>Offer</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Other_than_overseas_Application_Recieved</fullName>
        <field>StageName</field>
        <literalValue>Application Received</literalValue>
        <name>Other than overseas Application Recieved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Overseas_and_Offer_to_Interview</fullName>
        <field>StageName</field>
        <literalValue>Offer to Interview</literalValue>
        <name>Overseas and Offer to Interview</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Rollover_Update</fullName>
        <field>Rollover__c</field>
        <literalValue>1</literalValue>
        <name>Rollover Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Rollover_Update_2</fullName>
        <field>Rollover__c</field>
        <literalValue>0</literalValue>
        <name>Rollover Update 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Scholarship_Date</fullName>
        <field>Scholarship_Date__c</field>
        <formula>Today()</formula>
        <name>Scholarship Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stage</fullName>
        <field>StageName</field>
        <literalValue>Offer to Enrolment</literalValue>
        <name>Stage</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Application</fullName>
        <actions>
            <name>Opp_Application</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Application Received</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Application Received Date</fullName>
        <actions>
            <name>Application_Received_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Application_Received_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Application Received</value>
        </criteriaItems>
        <description>This will work when opp stage is application received and application date is chosen</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Application Received if Overseas not ticked</fullName>
        <actions>
            <name>Other_than_overseas_Application_Recieved</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Overseas__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
            <value>Offer to Interview</value>
        </criteriaItems>
        <description>If overseas is not ticked then stage should be &apos;Application Received&apos; by default</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Cancellation Date</fullName>
        <actions>
            <name>Cancellation_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Cancellation_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Cancel</value>
        </criteriaItems>
        <description>This will work when opp stage is cancel and cancellation date is chosen</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Cancellation Mail</fullName>
        <actions>
            <name>Email_Alert_on_Cancellation</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Cancel</value>
        </criteriaItems>
        <description>It will be triggered when the Opp  stage is cancel</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Enrolment Date</fullName>
        <actions>
            <name>Enrolment_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Enrolment_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Offer to Enrolment</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Future Enrolment Date</fullName>
        <actions>
            <name>Future_Enrolment_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Future_Enrolment_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Australian Student,Overseas Student</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Future Enrolment Mail</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Future Student</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Future_Enrolment_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Rollover__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>It will be triggered when the Opp  stage is future student</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Interview</fullName>
        <actions>
            <name>Application</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Interview</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Offer_to_Interview2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Interview Complete</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Interview Date</fullName>
        <actions>
            <name>Interview_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Offer to Interview</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Interview_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Interview_Time__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Interview Mail</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Offer to Interview</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Interview_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Interview_Time__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>It will be triggered when the Opp  stage is offer to interview</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Joining Letter Mail</fullName>
        <actions>
            <name>Email_Alert_on_Joining_Letter</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Joined</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.School_Grade__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Term__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Joining_Year__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>It will be triggered when the Opp  stage is joined</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Offer Date</fullName>
        <actions>
            <name>Offer_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Offer_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Offer</value>
        </criteriaItems>
        <description>This will work when opp stage is offer and offer date is chosen</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Offer Mail</fullName>
        <actions>
            <name>Email_Alert_on_Offer</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Offer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Enrolment_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>It will be triggered when the Opp  stage is offer</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Offer to Interview</fullName>
        <actions>
            <name>Opp_Enrolment</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Opp_Enrolment3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Offer to Interview</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Offer to Interview if Overseas ticked</fullName>
        <actions>
            <name>Overseas_and_Offer_to_Interview</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Overseas__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
            <value>Offer to Interview</value>
        </criteriaItems>
        <description>If overseas is ticked then stage should be &apos;offer to interview&apos; by default</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opp Cancellation</fullName>
        <actions>
            <name>Opp_Cancellation</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Opp_Cancellation2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Opp_Cancellation3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Opp_Cancellation4</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Opp_Cancellation5</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Cancel</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opp Interview</fullName>
        <actions>
            <name>Opp_Interview</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Opp_Interview1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Interview Complete</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opp Joined</fullName>
        <actions>
            <name>Opp_Joined</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Opp_Joined1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Opp_Joined2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Opp_Joined3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Opp_Joined4</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Joined</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opp Offer</fullName>
        <actions>
            <name>Offer_to_Interview</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Opp_Offer</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Opp_Offer1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Opp_Offer2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Offer</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Overseas Opportunity starting stage default</fullName>
        <actions>
            <name>Stage</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Overseas__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Rollover Update</fullName>
        <actions>
            <name>Rollover_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Future Student</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Rollover unchecked when future stage changes</fullName>
        <actions>
            <name>Rollover_Update_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
            <value>Future Student</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Rollover__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Scholarship Date</fullName>
        <actions>
            <name>Scholarship_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Scholarship_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Scholarship</value>
        </criteriaItems>
        <description>This will work when opp stage is scholarship</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
