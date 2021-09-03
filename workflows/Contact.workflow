<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email</fullName>
        <description>Email for test</description>
        <protected>false</protected>
        <recipients>
            <recipient>sf_user_1@force.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sf_user_2@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SUPPORTSelfServiceNewUserLoginSAMPLE</template>
    </alerts>
    <alerts>
        <fullName>For_test</fullName>
        <ccEmails>sudeep.bhaskaran@autorabit.com</ccEmails>
        <description>For test</description>
        <protected>false</protected>
        <recipients>
            <recipient>sf_user_1@force.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/ContactFollowUpSAMPLE</template>
    </alerts>
    <rules>
        <fullName>Contact_Workflow Rules_test</fullName>
        <actions>
            <name>Email</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.AccountName</field>
            <operation>notContain</operation>
            <value>null</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.FirstName</field>
            <operation>notContain</operation>
            <value>null</value>
        </criteriaItems>
        <description>For testing</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>WF_Test_Rule</fullName>
        <actions>
            <name>For_test</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.AccountName</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Email</field>
            <operation>equals</operation>
            <value>email</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.FirstName</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <description>Rules set for testing</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>