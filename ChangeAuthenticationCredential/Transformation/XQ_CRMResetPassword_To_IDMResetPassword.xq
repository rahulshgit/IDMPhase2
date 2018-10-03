xquery version "1.0" encoding "Cp1252";
(:: pragma bea:global-element-parameter parameter="$resetAuthenticationCredentialVBMRequest1" element="ns0:ResetAuthenticationCredentialVBMRequest" location="../../VFQA_CSM_Common/Schema/VBO/Identity/AuthenticationCredential/V1/AuthenticationCredentialVBM.xsd" ::)
(:: pragma bea:global-element-return element="ns2:CRM_RESET_PASSWORD" location="../Schema/IDM_Phase2.xsd" ::)

declare namespace xf = "http://tempuri.org/ChangeAuthenticationCredential/Transformation/XQ_CRMResetPassword_To_IDMResetPassword1/";
declare namespace ns5 = "http://group.vodafone.com/schema/common/v1";
declare namespace ns0 = "http://group.vodafone.com/schema/vbm/identity/authentication-credential/v1";
declare namespace ns2 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns1 = "http://group.vodafone.com/schema/vbo/identity/authentication-credential/v1";
declare namespace ns4 = "http://group.vodafone.com/schema/extension/vbo/identity/authentication-credential/v1";
declare namespace ns3 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";

declare function xf:XQ_CRMResetPassword_To_IDMResetPassword($resetAuthenticationCredentialVBMRequest1 as element(ns0:ResetAuthenticationCredentialVBMRequest),$transactionId)
    as element(ns2:CRM_RESET_PASSWORD) {
        <ns2:CRM_RESET_PASSWORD>
         <arg0>{data($resetAuthenticationCredentialVBMRequest1/*:AuthenticationCredentialVBO/*:Parts/*:GeneralUserAccount/*:IDs/*:ID/text())}</arg0>
            <arg1>{$transactionId}</arg1>
         </ns2:CRM_RESET_PASSWORD>
            
};

declare variable $resetAuthenticationCredentialVBMRequest1 as element(ns0:ResetAuthenticationCredentialVBMRequest) external;
declare variable $transactionId as xs:string external;
xf:XQ_CRMResetPassword_To_IDMResetPassword($resetAuthenticationCredentialVBMRequest1,$transactionId)