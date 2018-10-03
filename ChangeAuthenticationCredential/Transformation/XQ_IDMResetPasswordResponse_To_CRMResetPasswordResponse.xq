(:: pragma bea:global-element-parameter parameter="$cRM_RESET_PASSWORDResponse1" element="ns2:CRM_RESET_PASSWORDResponse" location="../Schema/IDM_Phase2.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ResetAuthenticationCredentialVBMResponse" location="../../VFQA_CSM_Common/Schema/VBO/Identity/AuthenticationCredential/V1/AuthenticationCredentialVBM.xsd" ::)

declare namespace ns5 = "http://group.vodafone.com/schema/common/v1";
declare namespace ns0 = "http://group.vodafone.com/schema/vbm/identity/authentication-credential/v1";
declare namespace ns2 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns1 = "http://group.vodafone.com/schema/vbo/identity/authentication-credential/v1";
declare namespace xf = "http://tempuri.org/AuthenticationCredential/Transformation/XQ_IDMResetPasswordResponse_To_CRMResetPasswordResponse1/";
declare namespace ns4 = "http://group.vodafone.com/schema/extension/vbo/identity/authentication-credential/v1";
declare namespace ns3 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";

declare function xf:XQ_IDMResetPasswordResponse_To_CRMResetPasswordResponse1($cRM_RESET_PASSWORDResponse1 as element(ns2:CRM_RESET_PASSWORDResponse))
    as element(ns0:ResetAuthenticationCredentialVBMResponse) {
        <ns0:ResetAuthenticationCredentialVBMResponse>
            <ns0:AuthenticationCredentialVBO>
            <ns5:Categories>
               <ns5:Category listName="Reason Code">0000</ns5:Category>
            </ns5:Categories>
                <ns1:Parts>
                    <ns1:GeneralUserAccount>
                        <ns5:IDs>
                            <ns5:ID>{data($cRM_RESET_PASSWORDResponse1/return/IDMAccountId)}</ns5:ID>
                        </ns5:IDs>
                    </ns1:GeneralUserAccount>
                </ns1:Parts>
            </ns0:AuthenticationCredentialVBO>
        </ns0:ResetAuthenticationCredentialVBMResponse>
};

declare variable $cRM_RESET_PASSWORDResponse1 as element(ns2:CRM_RESET_PASSWORDResponse) external;

xf:XQ_IDMResetPasswordResponse_To_CRMResetPasswordResponse1($cRM_RESET_PASSWORDResponse1)