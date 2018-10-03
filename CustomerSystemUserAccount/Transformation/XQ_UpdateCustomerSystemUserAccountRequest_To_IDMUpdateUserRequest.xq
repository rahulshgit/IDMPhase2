(:: pragma bea:global-element-parameter parameter="$updateCustomerSystemUserAccountVBMRequest1" element="ns5:UpdateCustomerSystemUserAccountVBMRequest" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)
(:: pragma bea:global-element-return element="ns4:CRM_UPDATE_USER" location="../Schema/IDM_Phase2.xsd" ::)

declare namespace ns2 = "http://group.vodafone.com/schema/extension/vbo/identity/customer-system-user-account/v1";
declare namespace ns1 = "http://group.vodafone.com/schema/vbo/identity/customer-system-user-account/v1";
declare namespace ns4 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns3 = "http://group.vodafone.com/schema/common/v1";
declare namespace ns0 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace ns5 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transaformation/XQ_CRMUpdateUserRequest_To_IDMUpdateUserRequest/";

declare function xf:XQ_CRMUpdateUserRequest_To_IDMUpdateUserRequest($updateCustomerSystemUserAccountVBMRequest1 as element(ns5:UpdateCustomerSystemUserAccountVBMRequest),$transactionId)
    as element(ns4:CRM_UPDATE_USER) {
        <ns4:CRM_UPDATE_USER>
            <arg0>            
            <accountStatus></accountStatus>
            <act_key></act_key>
            <auth_Status></auth_Status>
            <code></code>			
            <date_of_Birth>{data($updateCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Roles/*:Holder/*:BirthDate/*:DateString)}</date_of_Birth>
            <EMail>{$updateCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Parts/*:AccountLogins/*:AccountLogin/*:IDs/*:ID/text()}</EMail>           
			<firstName>{$updateCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Roles/*:Holder/*:IndividualName/*:FirstName/text()}</firstName>			
            <IDMAccountId>{data($updateCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:IDs/*:ID)}</IDMAccountId>
			<ID_Number>{$updateCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Roles/*:Holder/*:IDs/*:ID/text()}</ID_Number>
			<ID_Type>
			{
			let $idType:=
	 $updateCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Roles/*:Holder/*:Type/text()
		return 
		if(upper-case($idType) eq "PASSPORT") then
		'Passport'
		else if(upper-case($idType) eq "QATARIID") then
		'Qatari ID'
		else $idType
			}</ID_Type>
			
            <IVR_Pin>{$updateCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Parts/*:Credentials/*:Credential/*:PINs/*:PIN[./*:TypeCode/text()="IVR"]/*:Value/text()}</IVR_Pin>
            <lastName>{$updateCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Roles/*:Holder/*:IndividualName/*:FamilyName/text()}</lastName>
            <MSISDN></MSISDN>
            <message></message>
            <password></password>
            <role></role>
            <secondaryEMail>{$updateCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Roles/*:Holder/*:ContactPoints/*:ContactPoint/*:Email/*:FullAddress/text()}</secondaryEMail>
			<transaction_id>{$transactionId}</transaction_id>
            <user_Key></user_Key>
            <user_Login></user_Login>
            <xellarate_Type></xellarate_Type>
         </arg0>
        </ns4:CRM_UPDATE_USER>
};

declare variable $updateCustomerSystemUserAccountVBMRequest1 as element(ns5:UpdateCustomerSystemUserAccountVBMRequest) external;
declare variable $transactionId as xs:string external;
xf:XQ_CRMUpdateUserRequest_To_IDMUpdateUserRequest($updateCustomerSystemUserAccountVBMRequest1,$transactionId)