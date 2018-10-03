xquery version "1.0" encoding "Cp1252";
(:: pragma bea:global-element-parameter parameter="$createCustomerSystemUserAccountVBMRequest1" element="ns5:CreateCustomerSystemUserAccountVBMRequest" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)
(:: pragma bea:global-element-return element="ns0:CRM_CREATE_USER" location="../Schema/IDM_Phase2.xsd" ::)

declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transformation/XQ_CustomerSystemUserAccountRequest_to_IDMCreateUserReques2/";
declare namespace ns5 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace ns0 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns2 = "http://group.vodafone.com/schema/vbo/identity/customer-system-user-account/v1";
declare namespace ns1 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace ns4 = "http://group.vodafone.com/schema/extension/vbo/identity/customer-system-user-account/v1";
declare namespace ns3 = "http://group.vodafone.com/schema/common/v1";

declare function xf:XQ_CustomerSystemUserAccountRequest_to_IDMCreateUserReques2($createCustomerSystemUserAccountVBMRequest1 as element(ns5:CreateCustomerSystemUserAccountVBMRequest),
    $transactionId as xs:string)
    as element(ns0:CRM_CREATE_USER) {
        <ns0:CRM_CREATE_USER>
        <arg0>{$transactionId}</arg0>	
        <arg1>{$createCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Parts/*:Credentials/*:Credential/*:PINs/*:PIN[./*:TypeCode/text()="IVR"]/*:Value/text()}</arg1>
        <arg2>{
	    let $userLogin :=$createCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Parts/*:Credentials/*:Credential/*:PINs/*:PIN[./*:TypeCode/text()="USERLOGIN"]/*:Value/text() return 
if(exists(data($userLogin))) then             		
				$userLogin
  else 	 $createCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Parts/*:AccountLogins/*:AccountLogin/*:IDs/*:ID/text()			
		}</arg2>
		<arg3>{$createCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Parts/*:Credentials/*:Credential/*:PINs/*:PIN[./*:TypeCode/text()="PASSWORD"]/*:Value/text()}</arg3>
		
		<arg4>{$createCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Roles/*:Holder/*:IDs/*:ID/text()}</arg4>			  
		<arg5>{
		let $idType:=
		upper-case($createCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Roles/*:Holder/*:Type/text())
		return 
		if($idType="PASSPORT") then
		'Passport'
		else if($idType="QATARIID") then
		'Qatari ID'
		else $idType
		}</arg5>	
		<arg6>{$createCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Roles/*:Holder/*:IndividualName/*:FirstName/text()}</arg6>
		<arg7>{$createCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Roles/*:Holder/*:IndividualName/*:FamilyName/text()}</arg7>
		<arg8>{$createCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Parts/*:AccountLogins/*:AccountLogin/*:IDs/*:ID/text()}</arg8>
		<arg9>{$createCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Roles/*:Holder/*:ContactPoints/*:ContactPoint/*:Email/*:FullAddress/text()}</arg9>
		<arg10>{data($createCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Roles/*:Holder/*:BirthDate/*:DateString)}</arg10>	
	
	<arg11>Part-Time</arg11>
	<arg12>End-User</arg12>
	<arg13>1</arg13>
	</ns0:CRM_CREATE_USER>
};

declare variable $createCustomerSystemUserAccountVBMRequest1 as element(ns5:CreateCustomerSystemUserAccountVBMRequest) external;
declare variable $transactionId as xs:string external;

xf:XQ_CustomerSystemUserAccountRequest_to_IDMCreateUserReques2($createCustomerSystemUserAccountVBMRequest1,
    $transactionId)