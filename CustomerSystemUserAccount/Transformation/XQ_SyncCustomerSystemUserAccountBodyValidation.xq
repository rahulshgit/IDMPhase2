xquery version "1.0" encoding "Cp1252";
(:: pragma bea:global-element-parameter parameter="$syncCustomerSystemUserAccountVBMRequest1" element="ns4:SyncCustomerSystemUserAccountVBMRequest" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)
(:: pragma bea:schema-type-return type="ns5:Validation" location="../../VFQA_CSM_Common/Schema/validation.xsd" ::)

declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transformation/XQ_Sync_CustomerSystemUserAccountBodyValidation/";
declare namespace ns5 = "http://www.vodafone.qa/egate/commons/validation/v1_0_0";
declare namespace ns0 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace ns2 = "http://group.vodafone.com/schema/common/v1";
declare namespace ns1 = "http://group.vodafone.com/schema/vbo/identity/customer-system-user-account/v1";
declare namespace ns4 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace ns3 = "http://group.vodafone.com/schema/extension/vbo/identity/customer-system-user-account/v1";

declare function xf:XQ_Sync_CustomerSystemUserAccountBodyValidation($syncCustomerSystemUserAccountVBMRequest1 as element(ns4:SyncCustomerSystemUserAccountVBMRequest),$header)
    as element() {
        <ns5:Validation>
        <ValidationErrorList>
               {
               
               if(empty($header/*:Correlation/*:ConversationID/text())) then
		<ValidationError>
			<message>Input parameter 'ConversationID' is not valid</message>
		</ValidationError>
else if(data($syncCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:IDs/*:ID) eq "") then

		<ValidationError>
			<message>Input parameter 'IDMAccountID' is not valid</message>
		</ValidationError>
	
else if(data($syncCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Parts/*:Subscriptions/*:Subscription/*:MSISDN) eq "") then		
		
		<ValidationError>
			<message>Input parameter 'MSISDN' is not valid</message>
		</ValidationError>
	else 
				
		
let $idnumber:= data($syncCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Roles/*:Holder/*:IDs/*:ID),
		$idtype:=data($syncCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Roles/*:Holder/*:Type )
		return 
		if(data($idnumber) ne "" and data($idtype) eq "") then
		 <ValidationError>
			<message>Input parameter 'IDType' is not valid</message>
		</ValidationError>
		else if(data($idnumber) eq "" and data($idtype) ne "") then
		<ValidationError>
			<message>Input parameter 'IDNumber' is not valid</message>
		</ValidationError>
		else ''
	}
		
	</ValidationErrorList>
        </ns5:Validation>
};

declare variable $syncCustomerSystemUserAccountVBMRequest1 as element(ns4:SyncCustomerSystemUserAccountVBMRequest) external;
declare variable $header as element(*) external;

xf:XQ_Sync_CustomerSystemUserAccountBodyValidation($syncCustomerSystemUserAccountVBMRequest1,$header)