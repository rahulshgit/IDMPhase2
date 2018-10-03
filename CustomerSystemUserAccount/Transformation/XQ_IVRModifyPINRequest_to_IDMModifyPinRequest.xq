(:: pragma bea:global-element-parameter parameter="$updateCustomerSystemUserAccountVBMRequest1" element="ns5:UpdateCustomerSystemUserAccountVBMRequest" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)
(:: pragma bea:global-element-return element="ns4:MODIFY_PIN" location="../Schema/IDM_Phase2.xsd" ::)

declare namespace ns2 = "http://group.vodafone.com/schema/extension/vbo/identity/customer-system-user-account/v1";
declare namespace ns1 = "http://group.vodafone.com/schema/vbo/identity/customer-system-user-account/v1";
declare namespace ns4 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns3 = "http://group.vodafone.com/schema/common/v1";
declare namespace ns0 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace ns5 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transaformation/XQ_IVRModifyPINRequest_to_IDMModifyPinRequest/";

declare function xf:XQ_IVRModifyPINRequest_to_IDMModifyPinRequest($updateCustomerSystemUserAccountVBMRequest1 as element(ns5:UpdateCustomerSystemUserAccountVBMRequest))
    as element(ns4:MODIFY_PIN) {
        <ns4:MODIFY_PIN>
              
              
              <arg0>{ data($updateCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:IDs/*:ID[@schemeName="MSISDN" and @schemeAgencyName="Vodafone"]) }</arg0>
              <arg1>{ data($updateCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:IDs/*:ID[@schemeName="TransactionID" and @schemeAgencyName="Vodafone"]) }</arg1>
              <arg2>{ data($updateCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:IDs/*:ID[@schemeName="TPIN" and @schemeAgencyName="Vodafone"]) }</arg2>
        </ns4:MODIFY_PIN>
};

declare variable $updateCustomerSystemUserAccountVBMRequest1 as element(ns5:UpdateCustomerSystemUserAccountVBMRequest) external;

xf:XQ_IVRModifyPINRequest_to_IDMModifyPinRequest($updateCustomerSystemUserAccountVBMRequest1)