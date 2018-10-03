(:: pragma bea:global-element-parameter parameter="$updateCustomerSystemUserAccountVBMRequest1" element="ns5:UpdateCustomerSystemUserAccountVBMRequest" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)
(:: pragma bea:global-element-return element="ns4:CRM_UNLOCK_USER" location="../Schema/IDM_Phase2.xsd" ::)

declare namespace ns2 = "http://group.vodafone.com/schema/extension/vbo/identity/customer-system-user-account/v1";
declare namespace ns1 = "http://group.vodafone.com/schema/vbo/identity/customer-system-user-account/v1";
declare namespace ns4 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns3 = "http://group.vodafone.com/schema/common/v1";
declare namespace ns0 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace ns5 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transformation/XQ_CRMUnlockUserRequest_to_IDMUnlockUserRequest/";

declare function xf:XQ_CRMUnlockUserRequest_to_IDMUnlockUserRequest($updateCustomerSystemUserAccountVBMRequest1 as element(ns5:UpdateCustomerSystemUserAccountVBMRequest),$transactionId1)
    as element(ns4:CRM_UNLOCK_USER) {
        <ns4:CRM_UNLOCK_USER>
              <arg0>{data($updateCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:IDs/*:ID/text())}</arg0>
              <arg1>{ $transactionId1 }</arg1>            
        </ns4:CRM_UNLOCK_USER>
};

declare variable $updateCustomerSystemUserAccountVBMRequest1 as element(ns5:UpdateCustomerSystemUserAccountVBMRequest) external;
declare variable $transactionId1 as xs:string external;

xf:XQ_CRMUnlockUserRequest_to_IDMUnlockUserRequest($updateCustomerSystemUserAccountVBMRequest1,$transactionId1)