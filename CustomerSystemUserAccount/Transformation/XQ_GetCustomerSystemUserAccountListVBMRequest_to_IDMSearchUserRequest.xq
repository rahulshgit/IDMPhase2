(:: pragma bea:global-element-parameter parameter="$getCustomerSystemUserAccountListVBMRequest1" element="ns3:GetCustomerSystemUserAccountListVBMRequest" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)
(:: pragma bea:global-element-return element="ns2::CRM_SEARCH_ALL_USER" location="../Schema/IDM_Phase2.xsd" ::)

declare namespace ns2 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns1 = "http://group.vodafone.com/schema/common/v1";
declare namespace ns3 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace ns0 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transaformation/XQ_CRMSearchUserRequest_to_IDMSearchUserRequest/";

declare function xf:XQ_CRMSearchUserRequest_to_IDMSearchUserRequest($getCustomerSystemUserAccountListVBMRequest1 as element(ns3:GetCustomerSystemUserAccountListVBMRequest),$transactionId)
    as element(ns2:CRM_SEARCH_ALL_USER) {
          let $idnumber:= upper-case(data($getCustomerSystemUserAccountListVBMRequest1/*:Criteria/*:QueryExpression/*:QueryExpression/*:ValueExpression[@QueryOperatorCode="EQUALS" and @Path="/CustomerSystemUserAccountVBO/Roles/Holder/IDs/ID"]/*:Value)),		
$idtype:= upper-case(data($getCustomerSystemUserAccountListVBMRequest1/*:Criteria/*:QueryExpression/*:QueryExpression/*:ValueExpression[@QueryOperatorCode="EQUALS" and @Path="/CustomerSystemUserAccountVBO/Roles/Holder/Type"]/*:Value))
		   	  return  
	   	   <ns2:CRM_SEARCH_ALL_USER>
            <arg0>{$idnumber}</arg0>
            <arg1>
			{
			 if($idtype="PASSPORT") then 
			'Passport'
			else if($idtype="QATARIID") then 
			'Qatari ID'
			else ''
			}
			</arg1>
            <arg2>
			{
			if($idtype="EMAIL") then 
			'Email'
			else if($idtype="USERLOGIN") then 
			'User Login'
			else if($idtype="IDMACCOUNTID") then 
			'usr_key'
			else if($idtype="FIRSTNAME") then 
			'First Name'
				else if($idtype="LASTNAME") then 
			'Last Name'
			else if($idtype="PASSPORT") then 
			'Idnumber'
			else if($idtype="QATARIID") then 
			'Idnumber'
			else ''
			
			}
			</arg2>
            <arg3>{$transactionId}</arg3>
          </ns2:CRM_SEARCH_ALL_USER> 
};

declare variable $getCustomerSystemUserAccountListVBMRequest1 as element(ns3:GetCustomerSystemUserAccountListVBMRequest) external;

declare variable $transactionId as xs:string external;

xf:XQ_CRMSearchUserRequest_to_IDMSearchUserRequest($getCustomerSystemUserAccountListVBMRequest1,$transactionId)