(:: pragma bea:global-element-parameter parameter="$iVR_VERIFY_CALLERResponse1" element="ns4:IVR_VERIFY_CALLERResponse" location="../Schema/IDM_Phase2.xsd" ::)
(:: pragma bea:global-element-return element="ns5:GetCustomerSystemUserAccountListVBMResponse" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)

declare namespace ns2 = "http://group.vodafone.com/schema/extension/vbo/identity/customer-system-user-account/v1";
declare namespace ns1 = "http://group.vodafone.com/schema/vbo/identity/customer-system-user-account/v1";
declare namespace ns4 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns3 = "http://group.vodafone.com/schema/common/v1";
declare namespace ns0 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace ns5 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transaformation/XQ_IDMVerifyCallerResponse_to_IVRVerifyCallerResponse/";

declare function xf:XQ_IDMVerifyCallerResponse_to_IVRVerifyCallerResponse($iVR_VERIFY_CALLERResponse1 as element(ns4:IVR_VERIFY_CALLERResponse))
    as element(ns5:GetCustomerSystemUserAccountListVBMResponse) {
        <ns5:GetCustomerSystemUserAccountListVBMResponse>
            <ns5:CustomerSystemUserAccountVBO>
                <ns3:IDs>
                    <ns3:ID schemeName = "MSISDN" schemeAgencyName = "Vodafone">{ data($iVR_VERIFY_CALLERResponse1/return/MSISDN) }</ns3:ID>
                    <ns3:ID schemeName = "IDMAccountID" schemeAgencyName = "Vodafone">{ data($iVR_VERIFY_CALLERResponse1/return/IDMAccountId) }</ns3:ID>
                    <ns3:ID schemeName = "IVRPin" schemeAgencyName = "Vodafone">{ data($iVR_VERIFY_CALLERResponse1/return/IVR_Pin) }</ns3:ID>
                </ns3:IDs>
                <ns3:Status listAgencyName="Vodafone" listName="AuthStatus">{ data($iVR_VERIFY_CALLERResponse1/return/auth_Status) }</ns3:Status>
                <ns1:Administrator>
                        <ns3:Desc languageLocaleID="AccountStatus">{ data($iVR_VERIFY_CALLERResponse1/return/accountStatus) }</ns3:Desc>
                </ns1:Administrator>
            
            </ns5:CustomerSystemUserAccountVBO>
        </ns5:GetCustomerSystemUserAccountListVBMResponse>
};

declare variable $iVR_VERIFY_CALLERResponse1 as element(ns4:IVR_VERIFY_CALLERResponse) external;

xf:XQ_IDMVerifyCallerResponse_to_IVRVerifyCallerResponse($iVR_VERIFY_CALLERResponse1)