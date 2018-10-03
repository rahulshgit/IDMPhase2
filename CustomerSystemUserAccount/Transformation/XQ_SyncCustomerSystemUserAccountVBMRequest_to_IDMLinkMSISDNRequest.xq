xquery version "1.0" encoding "Cp1252";
(:: pragma bea:global-element-parameter parameter="$syncCustomerSystemUserAccountVBMRequest1" element="ns5:SyncCustomerSystemUserAccountVBMRequest" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)
(:: pragma bea:global-element-return element="ns0:LINK_MSISDN" location="../Schema/IDM_Phase2.xsd" ::)

declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transformation/XQ_CRMLinkMSISDN_To_IDMLinkMSISDNRequest/";
declare namespace ns5 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace ns0 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns2 = "http://group.vodafone.com/schema/vbo/identity/customer-system-user-account/v1";
declare namespace ns1 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace ns4 = "http://group.vodafone.com/schema/extension/vbo/identity/customer-system-user-account/v1";
declare namespace ns3 = "http://group.vodafone.com/schema/common/v1";

declare function xf:XQ_CRMLinkMSISDN_To_IDMLinkMSISDNRequest($syncCustomerSystemUserAccountVBMRequest1 as element(ns5:SyncCustomerSystemUserAccountVBMRequest),$IDMGetProfileResponse,$transactionId,$linkStatus)
    as element(ns0:LINK_MSISDN) {
        <ns0:LINK_MSISDN>
        <arg0>{$syncCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:IDs/*:ID/text()}</arg0>
         <arg1>{$IDMGetProfileResponse//*:return/*:user_Login/text()}</arg1>
         <arg2>{$syncCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Parts/*:Subscriptions/*:Subscription/*:MSISDN/text()}</arg2>
         <arg3>{$linkStatus}</arg3>
         <arg4>{$transactionId}</arg4>
        </ns0:LINK_MSISDN>
};

declare variable $syncCustomerSystemUserAccountVBMRequest1 as element(ns5:SyncCustomerSystemUserAccountVBMRequest) external;
declare variable $IDMGetProfileResponse as element(*) external;
declare variable $transactionId as xs:string external;
declare variable $linkStatus as xs:string external;


xf:XQ_CRMLinkMSISDN_To_IDMLinkMSISDNRequest($syncCustomerSystemUserAccountVBMRequest1,$IDMGetProfileResponse,$transactionId,$linkStatus)