(:: pragma bea:global-element-parameter parameter="$getCustomerSystemUserAccountListVBMRequest1" element="ns3:GetCustomerSystemUserAccountListVBMRequest" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)
(:: pragma bea:global-element-return element="ns2:IVR_VERIFY_CALLER" location="../Schema/IDM_Phase2.xsd" ::)

declare namespace ns2 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns1 = "http://group.vodafone.com/schema/common/v1";
declare namespace ns3 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace ns0 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transaformation/XQ_IVRVerifyCallerRequest_to_IDMVerifyCallerRequest/";

declare function xf:XQ_IVRVerifyCallerRequest_to_IDMVerifyCallerRequest($getCustomerSystemUserAccountListVBMRequest1 as element(ns3:GetCustomerSystemUserAccountListVBMRequest))
    as element(ns2:IVR_VERIFY_CALLER) {
        <ns2:IVR_VERIFY_CALLER>
            <arg0>{data($getCustomerSystemUserAccountListVBMRequest1/*:Criteria/*:QueryExpression/*:QueryExpression[@LogicalOperatorCode="AND"]/*:ValueExpression[@QueryOperatorCode="EQUALS" and @Path="/CustomerSystemUserAccountVBO/IDs/ID[@schemename='MSISDN']"]/*:Value)}</arg0>
            <arg1>{data($getCustomerSystemUserAccountListVBMRequest1/*:Criteria/*:QueryExpression/*:QueryExpression[@LogicalOperatorCode="AND"]/*:ValueExpression[@QueryOperatorCode="EQUALS" and @Path="/CustomerSystemUserAccountVBO/IDs/ID[@schemename='TransactionID']"]/*:Value)}</arg1>
        </ns2:IVR_VERIFY_CALLER>
};

declare variable $getCustomerSystemUserAccountListVBMRequest1 as element(ns3:GetCustomerSystemUserAccountListVBMRequest) external;

xf:XQ_IVRVerifyCallerRequest_to_IDMVerifyCallerRequest($getCustomerSystemUserAccountListVBMRequest1)