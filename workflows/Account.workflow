<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Name</fullName>
        <description>For test</description>
        <field>Name</field>
        <name>Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Account WF</fullName>
        <actions>
            <name>Name</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>test</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.AccountNumber</field>
            <operation>notContain</operation>
            <value>Name</value>
        </criteriaItems>
        <description>work flow for Testing</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>test</fullName>
        <assignedTo>sf_user_1@force.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>for testing</description>
        <dueDateOffset>2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Account.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Open</status>
        <subject>test</subject>
    </tasks>
</Workflow>