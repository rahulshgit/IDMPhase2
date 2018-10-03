xquery version "1.0" encoding "Cp1252";
(:: pragma bea:global-element-parameter parameter="$resetAuthenticationCredentialVBMRequest1" element="ns0:ResetAuthenticationCredentialVBMRequest" location="../../VFQA_CSM_Common/Schema/VBO/Identity/AuthenticationCredential/V1/AuthenticationCredentialVBM.xsd" ::)
(:: pragma bea:schema-type-return type="ns5:Validation" location="../../VFQA_CSM_Common/Schema/validation.xsd" ::)

declare namespace xf = "http://tempuri.org/ChangeAuthenticationCredential/Transformation/XQ_ResetAuthenticationCredentialBodyValidation/";
declare namespace ns5 = "http://www.vodafone.qa/egate/commons/validation/v1_0_0";
declare namespace ns0 = "http://group.vodafone.com/schema/vbm/identity/authentication-credential/v1";
declare namespace ns2 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace ns1 = "http://group.vodafone.com/schema/vbo/identity/authentication-credential/v1";
declare namespace ns4 = "http://group.vodafone.com/schema/common/v1";
declare namespace ns3 = "http://group.vodafone.com/schema/extension/vbo/identity/authentication-credential/v1";

declare function xf:XQ_ResetAuthenticationCredentialBodyValidation($resetAuthenticationCredentialVBMRequest1 as element(ns0:ResetAuthenticationCredentialVBMRequest),$header)
    as element() {
        <ns5:Validation>
         <ValidationErrorList>
         {
            if (empty( $header/*:Correlation/*:ConversationID/text()))
            then
            <ValidationError>
                <message>Input parameter 'ConversationID' is not valid</message>
            </ValidationError>	
            else if(data($resetAuthenticationCredentialVBMRequest1/*:AuthenticationCredentialVBO/*:Details/*:CredentialType) eq "") then
                <ValidationError>
                <message>Input parameter 'CredentialType' is not valid</message>
            </ValidationError>
              else if(data($resetAuthenticationCredentialVBMRequest1/*:AuthenticationCredentialVBO/*:Parts/*:GeneralUserAccount/*:IDs/*:ID) eq "") then
                <ValidationError>
                <message>Input parameter 'IDMAccountID' is not valid</message>
            </ValidationError>
            else ''
            }
             </ValidationErrorList>
            </ns5:Validation>
};

declare variable $resetAuthenticationCredentialVBMRequest1 as element(ns0:ResetAuthenticationCredentialVBMRequest) external;
declare variable $header as element (*) external;

xf:XQ_ResetAuthenticationCredentialBodyValidation($resetAuthenticationCredentialVBMRequest1,$header)