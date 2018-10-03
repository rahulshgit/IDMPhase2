xquery version "1.0" encoding "Cp1252";
(:: pragma bea:global-element-parameter parameter="$getCustomerSystemUserAccountListVBMRequest1" element="ns2:GetCustomerSystemUserAccountListVBMRequest" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)
(:: pragma bea:schema-type-return type="ns3:Validation" location="../../VFQA_CSM_Common/Schema/validation.xsd" ::)

declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transformation/XQ_Search_CustomerSystemUserAccountBodyValidation/";
declare namespace ns0 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace ns2 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace ns1 = "http://group.vodafone.com/schema/common/v1";
declare namespace ns3 = "http://www.vodafone.qa/egate/commons/validation/v1_0_0";

declare function xf:XQ_Search_CustomerSystemUserAccountBodyValidation($getCustomerSystemUserAccountListVBMRequest1 as element(ns2:GetCustomerSystemUserAccountListVBMRequest),$header as element(*))
    as element() {
        <ns3:Validation>
        <ValidationErrorList>
            {
            if (empty( $header/*:Correlation/*:ConversationID/text()))
            then
            <ValidationError>
                <message>Input parameter 'ConversationID' is not valid</message>
            </ValidationError>	
             else  
let $idnumber:=$getCustomerSystemUserAccountListVBMRequest1/*:Criteria/*:QueryExpression/*:QueryExpression/*:ValueExpression[@QueryOperatorCode="EQUALS" and @Path="/CustomerSystemUserAccountVBO/Roles/Holder/IDs/ID"]/*:Value/text(),		
$idtype:=$getCustomerSystemUserAccountListVBMRequest1/*:Criteria/*:QueryExpression/*:QueryExpression/*:ValueExpression[@QueryOperatorCode="EQUALS" and @Path="/CustomerSystemUserAccountVBO/Roles/Holder/Type"]/*:Value/text()
		
	
		return 
		if(empty($idtype) and not(empty($idnumber))) then
		 <ValidationError>
			<message>Input parameter 'IDType' is not valid</message>
		</ValidationError>
		else if(empty($idnumber) and not(empty($idtype))) then
		<ValidationError>
			<message>Input parameter 'IDNumber is not valid' is not valid</message>
		</ValidationError>
		else if((upper-case($idtype) ne "PASSPORT") and (upper-case($idtype) ne "QATARIID") and (upper-case($idtype) ne "EMAIL") and (upper-case($idtype) ne "IDMACCOUNTID")  ) then
		<ValidationError>
			<message>Input parameter 'IDType' is not valid</message>
		</ValidationError>
		else ''
	}
             </ValidationErrorList>
          </ns3:Validation>  
};

declare variable $getCustomerSystemUserAccountListVBMRequest1 as element(ns2:GetCustomerSystemUserAccountListVBMRequest) external;
declare variable $header as element(*) external;
xf:XQ_Search_CustomerSystemUserAccountBodyValidation($getCustomerSystemUserAccountListVBMRequest1,$header)