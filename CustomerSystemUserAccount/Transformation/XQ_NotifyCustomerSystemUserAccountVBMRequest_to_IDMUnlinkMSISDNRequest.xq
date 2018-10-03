xquery version "1.0" encoding "Cp1252";
(:: pragma bea:global-element-parameter parameter="$notifyCustomerSystemUserAccountVBMRequest1" element="ns5:NotifyCustomerSystemUserAccountVBMRequest" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)
(:: pragma bea:global-element-return element="ns0:UNLINK_MSISDN" location="../Schema/IDM_Phase2.xsd" ::)

declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transformation/sample/";
declare namespace ns5 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace ns0 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns2 = "http://group.vodafone.com/schema/vbo/identity/customer-system-user-account/v1";
declare namespace ns1 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace ns4 = "http://group.vodafone.com/schema/extension/vbo/identity/customer-system-user-account/v1";
declare namespace ns3 = "http://group.vodafone.com/schema/common/v1";

declare function xf:XQ_CRMUnLinkMSISDN_To_IDMUNLinkMSISDNRequest($notifyCustomerSystemUserAccountVBMRequest1 as element(ns5:NotifyCustomerSystemUserAccountVBMRequest),$transactionId,$msisdnStatus)
    as element(ns0:UNLINK_MSISDN) {
        <ns0:UNLINK_MSISDN>
        <arg0>{data($notifyCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:IDs/*:ID)}</arg0>
            <arg1>{$notifyCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Parts/*:Subscriptions/*:Subscription/*:MSISDN/text()}</arg1>
            <arg2>{$msisdnStatus/*:MSISDNAlreadyinked/text()}</arg2>
            <arg3>{$transactionId}</arg3>
           </ns0:UNLINK_MSISDN>
};

declare variable $notifyCustomerSystemUserAccountVBMRequest1 as element(ns5:NotifyCustomerSystemUserAccountVBMRequest) external;
declare variable $transactionId as xs:string external;
declare variable $msisdnStatus as element(*) external;
xf:XQ_CRMUnLinkMSISDN_To_IDMUNLinkMSISDNRequest($notifyCustomerSystemUserAccountVBMRequest1,$transactionId,$msisdnStatus)