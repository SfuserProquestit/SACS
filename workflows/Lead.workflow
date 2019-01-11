<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Alert_on_Web_Enquiry</fullName>
        <description>Email Alert on Web Enquiry</description>
        <protected>false</protected>
        <recipients>
            <recipient>rpedley@sacs.nsw.edu.au</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>SACS_Templates/Web_Enquiry</template>
    </alerts>
    <fieldUpdates>
        <fullName>Country_as_Australia</fullName>
        <field>Country</field>
        <formula>&quot;Australia&quot;</formula>
        <name>Country_as_Australia</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_of_Enquiry_Auto_Populates</fullName>
        <field>Date_of_Enquiry__c</field>
        <formula>Today()</formula>
        <name>Date of Enquiry Auto-Populates</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Family_Name</fullName>
        <field>Company</field>
        <formula>IF( ISBLANK(FirstName) , LastName , LastName )</formula>
        <name>Family Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Field_update_School_level_for_K_to_6</fullName>
        <field>School_Level__c</field>
        <literalValue>Junior School</literalValue>
        <name>Field update School level for K to 6</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Score1</fullName>
        <field>Total_Lead_Score__c</field>
        <formula>IF( ISPICKVAL( Enrolment_Period__c , &quot;Less than 1 Year&quot;) , 15 , IF( ISPICKVAL( Enrolment_Period__c , &quot;1 Year to 3 Years&quot;),  10,  5))</formula>
        <name>Lead Score 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opp_Overseas</fullName>
        <field>Opportunity_Overseas__c</field>
        <literalValue>1</literalValue>
        <name>Opp Overseas</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Postal_Ranking</fullName>
        <field>Postal_Ranking__c</field>
        <formula>CASE( Postcode__c ,
&quot;Within 10 Kms&quot;,1, 
&quot;11-15 Kms&quot;, CASE( Grade_Range__c ,
                                      &quot;0-6&quot;, 2,
                                      &quot;7-9&quot;,1,
                                      &quot;10-12&quot;,1,                                                                                                            
                                       0) ,
&quot;Southern&quot;,CASE( Grade_Range__c ,
                                      &quot;0-6&quot;, 3,
                                      &quot;7-9&quot;,2,
                                      &quot;10-12&quot;,2,                                                                                                            
                                       0) ,
&quot;North&quot;,CASE( Grade_Range__c ,
                                      &quot;0-6&quot;, 3,
                                      &quot;7-9&quot;,2,
                                      &quot;10-12&quot;,2,                                                                                                            
                                       0) ,
&quot;West&quot;,CASE( Grade_Range__c ,
                                      &quot;0-6&quot;, 3,
                                      &quot;7-9&quot;,2,
                                      &quot;10-12&quot;,2,                                                                                                            
                                       0) , 
&quot;Outer suburban&quot;,CASE( Grade_Range__c ,
                                      &quot;0-6&quot;, 4,
                                      &quot;7-9&quot;,3,
                                      &quot;10-12&quot;,2,                                                                                                            
                                       0) ,
&quot;Regional&quot;,CASE( Grade_Range__c ,
                                      &quot;0-6&quot;, 5,
                                      &quot;7-9&quot;,4,
                                      &quot;10-12&quot;,3,                                                                                                            
                                       0) ,                                       
 Postal_Range_Ranking__c )</formula>
        <name>Postal Ranking</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Score_1_Field</fullName>
        <description>Update Lead Score 1 Field</description>
        <field>Lead_Score_1__c</field>
        <formula>CASE( Enrolment_Period__c,
&quot;Less than 1 year&quot;,

CASE(  Postal_Range_Ranking__c,
1,&quot;25&quot;,
2,&quot;20&quot;,
3,&quot;15&quot;,
4,&quot;10&quot;,
5,&quot;5&quot;,
&quot;0&quot;
)
 ,
&quot;1 Year to 3 Years&quot;,

CASE(  Postal_Range_Ranking__c,
1,&quot;25&quot;,
2,&quot;20&quot;,
3,&quot;15&quot;,
4,&quot;10&quot;,
5,&quot;5&quot;,
&quot;0&quot;
)
 ,

&quot;More than 3 years&quot;, 

CASE(  Postal_Range_Ranking__c,
1,&quot;25&quot;,
2,&quot;20&quot;,
3,&quot;15&quot;,
4,&quot;10&quot;,
5,&quot;5&quot;,
&quot;0&quot;
)

,
&quot;0&quot;
)</formula>
        <name>Update Lead Score 1 Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Score_2_Field</fullName>
        <field>Lead_Score_2__c</field>
        <formula>CASE( Enrolment_Period__c, 
&quot;Less than 1 year&quot;, 

CASE( Postal_Range_Ranking__c, 
1,&quot;10&quot;, 
2,&quot;10&quot;, 
3,&quot;10&quot;, 
4,&quot;10&quot;, 
5,&quot;10&quot;, 
&quot;0&quot; 
) 
, 
&quot;1 Year to 3 Years&quot;, 

CASE( Postal_Range_Ranking__c, 
1,&quot;10&quot;, 
2,&quot;10&quot;, 
3,&quot;10&quot;, 
4,&quot;10&quot;, 
5,&quot;10&quot;, 
&quot;0&quot; 
)
, 

&quot;More than 3 years&quot;, 

CASE( Postal_Range_Ranking__c, 
1,&quot;10&quot;, 
2,&quot;10&quot;, 
3,&quot;10&quot;, 
4,&quot;10&quot;, 
5,&quot;10&quot;, 
&quot;0&quot; 
)
, 
&quot;0&quot; 
)</formula>
        <name>Update Lead Score 2 Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Score_3_Field</fullName>
        <description>Update Lead Score 3 Field</description>
        <field>Lead_Score_3__c</field>
        <formula>CASE( Enrolment_Period__c, 
&quot;Less than 1 year&quot;, 

CASE( Postal_Range_Ranking__c, 
1,&quot;10&quot;, 
2,&quot;10&quot;, 
3,&quot;10&quot;, 
4,&quot;10&quot;, 
5,&quot;10&quot;, 
&quot;0&quot; 
) 
, 
&quot;1 Year to 3 Years&quot;, 

CASE( Postal_Range_Ranking__c, 
1,&quot;10&quot;, 
2,&quot;10&quot;, 
3,&quot;10&quot;, 
4,&quot;10&quot;, 
5,&quot;10&quot;, 
&quot;0&quot; 
) 
, 

&quot;More than 3 years&quot;, 

CASE( Postal_Range_Ranking__c, 
1,&quot;10&quot;, 
2,&quot;10&quot;, 
3,&quot;10&quot;, 
4,&quot;10&quot;, 
5,&quot;10&quot;, 
&quot;0&quot; 
) 
, 
&quot;0&quot; 
)</formula>
        <name>Update Lead Score 3 Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Score_3_Field_To_Zero</fullName>
        <description>Update Lead Score 3 Field To Zero</description>
        <field>Lead_Score_3__c</field>
        <formula>CASE( Enrolment_Period__c, 
&quot;Less than 1 year&quot;, 

CASE( Postal_Range_Ranking__c, 
1,&quot;0&quot;, 
2,&quot;0&quot;, 
3,&quot;0&quot;, 
4,&quot;0&quot;, 
5,&quot;0&quot;, 
&quot;0&quot; 
) 
, 
&quot;1 Year to 3 Years&quot;, 

CASE( Postal_Range_Ranking__c, 
1,&quot;0&quot;, 
2,&quot;0&quot;, 
3,&quot;0&quot;, 
4,&quot;0&quot;, 
5,&quot;0&quot;, 
&quot;0&quot; 
) 
, 

&quot;More than 3 years&quot;, 

CASE( Postal_Range_Ranking__c, 
1,&quot;0&quot;, 
2,&quot;0&quot;, 
3,&quot;0&quot;, 
4,&quot;0&quot;, 
5,&quot;0&quot;, 
&quot;0&quot; 
) 
, 
&quot;0&quot; 
)</formula>
        <name>Update Lead Score 3 Field To Zero</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Score_4_Field</fullName>
        <description>Update Lead Score 4 Field</description>
        <field>Lead_Score_4__c</field>
        <formula>CASE( Enrolment_Period__c, 
&quot;Less than 1 year&quot;, 

CASE( Postal_Range_Ranking__c, 
1,&quot;20&quot;, 
2,&quot;20&quot;, 
3,&quot;20&quot;, 
4,&quot;20&quot;, 
5,&quot;20&quot;, 
&quot;0&quot; 
) 
, 
&quot;1 Year to 3 Years&quot;, 

CASE( Postal_Range_Ranking__c, 
1,&quot;0&quot;, 
2,&quot;0&quot;, 
3,&quot;0&quot;, 
4,&quot;0&quot;, 
5,&quot;0&quot;, 
&quot;0&quot; 
) 
, 

&quot;More than 3 years&quot;, 

CASE( Postal_Range_Ranking__c, 
1,&quot;-20&quot;, 
2,&quot;-20&quot;, 
3,&quot;-20&quot;, 
4,&quot;-20&quot;, 
5,&quot;-20&quot;, 
&quot;0&quot; 
) 
, 
&quot;0&quot; 
)</formula>
        <name>Update Lead Score 4 Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Score_Field_To_Zero</fullName>
        <description>Update Lead Score Field To Zero</description>
        <field>Lead_Score_2__c</field>
        <formula>CASE( Enrolment_Period__c, 
&quot;Less than 1 year&quot;, 

CASE( Postal_Range_Ranking__c, 
1,&quot;0&quot;, 
2,&quot;0&quot;, 
3,&quot;0&quot;, 
4,&quot;0&quot;, 
5,&quot;0&quot;, 
&quot;0&quot; 
) 
, 
&quot;1 Year to 3 Years&quot;, 

CASE( Postal_Range_Ranking__c, 
1,&quot;0&quot;, 
2,&quot;0&quot;, 
3,&quot;0&quot;, 
4,&quot;0&quot;, 
5,&quot;0&quot;, 
&quot;0&quot; 
) 
, 

&quot;More than 3 years&quot;, 

CASE( Postal_Range_Ranking__c, 
1,&quot;0&quot;, 
2,&quot;0&quot;, 
3,&quot;0&quot;, 
4,&quot;0&quot;, 
5,&quot;0&quot;, 
&quot;0&quot; 
) 
, 
&quot;0&quot; 
)</formula>
        <name>Update Lead Score Field To Zero</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Rating_Cold</fullName>
        <field>Rating</field>
        <literalValue>Cold</literalValue>
        <name>Update Rating - Cold</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Rating_Hot</fullName>
        <field>Rating</field>
        <literalValue>Hot</literalValue>
        <name>Update Rating - Hot</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Rating_Very_Hot</fullName>
        <field>Rating</field>
        <literalValue>Very Hot</literalValue>
        <name>Update Rating - Very Hot</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Rating_Warm</fullName>
        <field>Rating</field>
        <literalValue>Warm</literalValue>
        <name>Update Rating - Warm</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_School_Tour_Date</fullName>
        <field>School_Tour_Date__c</field>
        <name>Update School Tour Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>PreviousValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Total_Rating</fullName>
        <field>Total_Lead_Score__c</field>
        <formula>VALUE(Lead_Score_1__c) + VALUE(Lead_Score_2__c) + VALUE(Lead_Score_3__c) + VALUE(Lead_Score_4__c)</formula>
        <name>Update Total Rating</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Tour_Date</fullName>
        <field>Tour_Date__c</field>
        <formula>TEXT(( Date_Time__c  )) &amp;  TEXT( Year_Group__c )</formula>
        <name>Update Tour Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Tour_Date_From_School_Tour_Date</fullName>
        <field>Tour_Date__c</field>
        <formula>TEXT( School_Tour_Date__c )</formula>
        <name>Update Tour Date From School Tour Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_school_level_to_Middle_School</fullName>
        <field>School_Level__c</field>
        <literalValue>Middle School</literalValue>
        <name>Update school level to Middle School</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_school_level_to_Senior_College</fullName>
        <field>School_Level__c</field>
        <literalValue>Senior College</literalValue>
        <name>Update school level to Senior College</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Auto populate school level field</fullName>
        <active>false</active>
        <description>Auto-populate the &quot;School Level&apos; field based on Year Group in Student Information
 i.e. K to 6 = Junior School, 
7 - 9 = Middle School 
and 
10 - 12 = Senior College</description>
        <formula>true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Country_as_Australia</fullName>
        <actions>
            <name>Country_as_Australia</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Country</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>If the record is saved without saving details about country, it should by default choose as Australia</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Date of Enquiry Auto-Populates</fullName>
        <actions>
            <name>Date_of_Enquiry_Auto_Populates</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Date_of_Enquiry__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Date of Enquiry Auto-Populates to the current date when web2lead is created.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Family Name</fullName>
        <actions>
            <name>Family_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.LastName</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Email</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>It will trigger a unique name for each family</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead Type</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Lead_Type__c</field>
            <operation>equals</operation>
            <value>Student</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Opp Overseas</fullName>
        <actions>
            <name>Opp_Overseas</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Overseas__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Opportunity_Overseas__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>This will work when opp stage is overseas</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>School Tour Date Update</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Lead.School_Tour_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>School Tour Dates autopopulate from Tour Dates</fullName>
        <actions>
            <name>Update_School_Tour_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Tour_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.School_Tour_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>When we get a lead from Web2Lead the Tour date value will be auto populated into the drop down which is School Tour Date</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Lead Score Rule 1</fullName>
        <actions>
            <name>Update_Lead_Score_1_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lead_Score_2_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lead_Score_3_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lead_Score_4_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Total_Rating</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Alumni__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Religion__c</field>
            <operation>equals</operation>
            <value>Christian</value>
        </criteriaItems>
        <description>Religion =Christian &amp;  Alumni= true</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Lead Score Rule 2</fullName>
        <actions>
            <name>Update_Lead_Score_1_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lead_Score_3_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lead_Score_4_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lead_Score_Field_To_Zero</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Total_Rating</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Alumni__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Religion__c</field>
            <operation>equals</operation>
            <value>Christian</value>
        </criteriaItems>
        <description>Religion = Christian &amp;  Alumni= false</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Lead Score Rule 3</fullName>
        <actions>
            <name>Update_Lead_Score_1_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lead_Score_2_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lead_Score_3_Field_To_Zero</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Lead_Score_4_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Total_Rating</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Alumni__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Religion__c</field>
            <operation>notEqual</operation>
            <value>Christian</value>
        </criteriaItems>
        <description>Religion =Others &amp;  Alumni= true</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Postal Ranking</fullName>
        <actions>
            <name>Postal_Ranking</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Rating To Cold</fullName>
        <actions>
            <name>Update_Rating_Cold</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Total_Lead_Score__c</field>
            <operation>lessThan</operation>
            <value>25</value>
        </criteriaItems>
        <description>&gt;=50 | Very Hot 
&gt; 35 | Hot 
&gt; = 25| Warm 
&lt; 25 | Cold</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Rating To Hot</fullName>
        <actions>
            <name>Update_Rating_Hot</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Total_Lead_Score__c</field>
            <operation>lessOrEqual</operation>
            <value>50</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Total_Lead_Score__c</field>
            <operation>greaterThan</operation>
            <value>35</value>
        </criteriaItems>
        <description>&gt;=50  | Very Hot
&gt; 35   | Hot 
&gt; = 25| Warm
&lt;   25 | Cold</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Rating To Very Hot</fullName>
        <actions>
            <name>Update_Rating_Very_Hot</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Total_Lead_Score__c</field>
            <operation>greaterOrEqual</operation>
            <value>50</value>
        </criteriaItems>
        <description>&gt;=50 | Very Hot 
&gt; 35 | Hot 
&gt; = 25| Warm 
&lt; 25 | Cold</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Rating To Warm</fullName>
        <actions>
            <name>Update_Rating_Warm</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Total_Lead_Score__c</field>
            <operation>greaterOrEqual</operation>
            <value>25</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Total_Lead_Score__c</field>
            <operation>lessOrEqual</operation>
            <value>35</value>
        </criteriaItems>
        <description>&gt;=50 | Very Hot 
&gt; 35 | Hot 
&gt; = 25| Warm 
&lt; 25 | Cold</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update School Tour Date As Tour Date</fullName>
        <actions>
            <name>Update_Tour_Date_From_School_Tour_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>!ISPICKVAL( School_Tour_Date__c , &quot;&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Score 1</fullName>
        <actions>
            <name>Lead_Score1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Enrolment_Period__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Tour Date from Date%2FTime %26 Year Group</fullName>
        <actions>
            <name>Update_Tour_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Date_Time__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Year_Group__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Tour Date will be updated from Date/Time &amp; Year Group fields</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update school level to Junior School</fullName>
        <actions>
            <name>Field_update_School_level_for_K_to_6</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Year_Group__c</field>
            <operation>equals</operation>
            <value>3,2,1,6,5,4,K</value>
        </criteriaItems>
        <description>Auto-populate the &quot;School Level&apos; field based on Year Group in Student Information i.e. K to 6 = Junior School, 7 - 9 = Middle School and 10 - 12 = Senior College</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update school level to Middle School</fullName>
        <actions>
            <name>Update_school_level_to_Middle_School</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Year_Group__c</field>
            <operation>equals</operation>
            <value>7,9,8</value>
        </criteriaItems>
        <description>Auto-populate the &quot;School Level&apos; field based on Year Group in Student Information i.e. K to 6 = Junior School, 7 - 9 = Middle School and 10 - 12 = Senior College</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update school level to Senior College</fullName>
        <actions>
            <name>Update_school_level_to_Senior_College</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Year_Group__c</field>
            <operation>equals</operation>
            <value>11,10,12</value>
        </criteriaItems>
        <description>Auto-populate the &quot;School Level&apos; field based on Year Group in Student Information i.e. K to 6 = Junior School, 7 - 9 = Middle School and 10 - 12 = Senior College</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Web Enquiry</fullName>
        <actions>
            <name>Email_Alert_on_Web_Enquiry</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND (2 OR 3)</booleanFilter>
        <criteriaItems>
            <field>Lead.LeadSource</field>
            <operation>equals</operation>
            <value>Web</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Lead_Sub_Source__c</field>
            <operation>equals</operation>
            <value>School Tour</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Lead_Sub_Source__c</field>
            <operation>equals</operation>
            <value>Quick Enquiry</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
