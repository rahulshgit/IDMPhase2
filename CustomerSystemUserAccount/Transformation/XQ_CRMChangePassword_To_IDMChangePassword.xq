(:: pragma bea:global-element-parameter parameter="$updateCustomerSystemUserAccountVBMRequest1" element="ns5:UpdateCustomerSystemUserAccountVBMRequest" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)
(:: pragma  parameter="$transactionId1" type="anyType" ::)
(:: pragma bea:global-element-return element="ns0:CRM_CHANGE_PASSWORD" location="../Schema/IDM_Phase2.xsd" ::)

declare namespace ns5 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace ns0 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns2 = "http://group.vodafone.com/schema/vbo/identity/customer-system-user-account/v1";
declare namespace ns1 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transaformation/sample/";
declare namespace ns4 = "http://group.vodafone.com/schema/extension/vbo/identity/customer-system-user-account/v1";
declare namespace ns3 = "http://group.vodafone.com/schema/common/v1";

declare function xf:XQ_CRMChangePassword_To_IDMChangePassword($updateCustomerSystemUserAccountVBMRequest1 as element(ns5:UpdateCustomerSystemUserAccountVBMRequest),
    $transactionId1 )
    as element(ns0:CRM_CHANGE_PASSWORD) {
        <ns0:CRM_CHANGE_PASSWORD>
            <arg0>{data($updateCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:IDs/*:ID[@schemeName="IDMAccountID" and @schemeAgencyName="Vodafone"])}</arg0>
            <arg1>{data($updateCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:IDs/*:ID[@schemeName="Password" and @schemeAgencyName="Vodafone"])}</arg1>
            <arg2>{$transactionId1}</arg2>
        </ns0:CRM_CHANGE_PASSWORD>
};

declare variable $updateCustomerSystemUserAccountVBMRequest1 as element(ns5:UpdateCustomerSystemUserAccountVBMRequest) external;
declare variable $transactionId1 as xs:string external;

xf:XQ_CRMChangePassword_To_IDMChangePassword($updateCustomerSystemUserAccountVBMRequest1,
    $transactionId1)