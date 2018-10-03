xquery version "1.0" encoding "Cp1252";
(:: pragma bea:global-element-parameter parameter="$cRM_CHANGE_PASSWORDResponse1" element="ns0:CRM_CHANGE_PASSWORDResponse" location="../Schema/IDM_Phase2.xsd" ::)
(:: pragma bea:global-element-return element="ns5:UpdateCustomerSystemUserAccountVBMResponse" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)

declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transaformation/XQ_IDMChangePasswordResponse_To_CRMChangePasswordResponse/";
declare namespace ns5 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace ns0 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns2 = "http://group.vodafone.com/schema/vbo/identity/customer-system-user-account/v1";
declare namespace ns1 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace ns4 = "http://group.vodafone.com/schema/extension/vbo/identity/customer-system-user-account/v1";
declare namespace ns3 = "http://group.vodafone.com/schema/common/v1";

declare function xf:XQ_IDMChangePasswordResponse_To_CRMChangePasswordResponse($cRM_CHANGE_PASSWORDResponse1 as element(ns0:CRM_CHANGE_PASSWORDResponse))
    as element(ns5:UpdateCustomerSystemUserAccountVBMResponse) {
        <ns5:UpdateCustomerSystemUserAccountVBMResponse>
        <ns5:CustomerSystemUserAccountVBO>                
                <ns3:Status listAgencyName="Vodafone" listName="FinalStatus">{data($cRM_CHANGE_PASSWORDResponse1/return/message)}</ns3:Status>
            </ns5:CustomerSystemUserAccountVBO>
            </ns5:UpdateCustomerSystemUserAccountVBMResponse>
};

declare variable $cRM_CHANGE_PASSWORDResponse1 as element(ns0:CRM_CHANGE_PASSWORDResponse) external;

xf:XQ_IDMChangePasswordResponse_To_CRMChangePasswordResponse($cRM_CHANGE_PASSWORDResponse1)