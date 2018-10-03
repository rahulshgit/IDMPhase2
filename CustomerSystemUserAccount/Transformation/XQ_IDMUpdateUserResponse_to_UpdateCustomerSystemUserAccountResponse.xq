(:: pragma bea:global-element-parameter parameter="$cRM_UPDATE_USERResponse1" element="ns4:CRM_UPDATE_USERResponse" location="../Schema/IDM_Phase2.xsd" ::)
(:: pragma bea:global-element-return element="ns5:UpdateCustomerSystemUserAccountVBMResponse" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)

declare namespace ns2 = "http://group.vodafone.com/schema/extension/vbo/identity/customer-system-user-account/v1";
declare namespace ns1 = "http://group.vodafone.com/schema/vbo/identity/customer-system-user-account/v1";
declare namespace ns4 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns3 = "http://group.vodafone.com/schema/common/v1";
declare namespace ns0 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace ns5 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transaformation/XQ_IDMUpdateUserResponse_to_CRMUpdateUserResponse/";

declare function xf:XQ_IDMUpdateUserResponse_to_CRMUpdateUserResponse($cRM_UPDATE_USERResponse1 as element(ns4:CRM_UPDATE_USERResponse))
    as element(ns5:UpdateCustomerSystemUserAccountVBMResponse) {
        <ns5:UpdateCustomerSystemUserAccountVBMResponse>
            <ns5:CustomerSystemUserAccountVBO>
            <ns3:IDs>
               <ns3:ID>{data($cRM_UPDATE_USERResponse1/return/IDMAccountId)}</ns3:ID>
            </ns3:IDs>              
                <ns3:Categories>
               <ns3:Category listName="Reason Code">0000</ns3:Category>
            </ns3:Categories>
            </ns5:CustomerSystemUserAccountVBO>
        </ns5:UpdateCustomerSystemUserAccountVBMResponse>
};

declare variable $cRM_UPDATE_USERResponse1 as element(ns4:CRM_UPDATE_USERResponse) external;

xf:XQ_IDMUpdateUserResponse_to_CRMUpdateUserResponse($cRM_UPDATE_USERResponse1)