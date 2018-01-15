<?xml version="1.0" encoding="utf-8"?><Workflow xmlns="http://soap.sforce.com/2006/04/metadata"><fieldUpdates>
        <fullName>Approve_New_Account</fullName>
        <field>Type</field>
        <literalValue>Customer</literalValue>
        <name>Approve New Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Approved</fullName>
        <field>Type__c</field>
        <literalValue>Customer</literalValue>
        <name>Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>If_Not_Approved</fullName>
        <field>Type</field>
        <literalValue>Prospect</literalValue>
        <name>If Not Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Lock_the_record</fullName>
        <field>Type</field>
        <literalValue>Pending</literalValue>
        <name>Lock the record</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Not_Approved</fullName>
        <field>Type__c</field>
        <literalValue>Prospect</literalValue>
        <name>Not Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Texas_Owner</fullName>
        <field>OwnerId</field>
        <lookupValue>ramprasadv7@gmail.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Texas Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates><rules>
        <fullName>Texas Accounts</fullName>
        <actions>
            <name>Texas_Owner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.BillingState</field>
            <operation>equals</operation>
            <value>TX</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules></Workflow>