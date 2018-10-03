(:: pragma bea:global-element-parameter parameter="$syncCustomerSystemUserAccountVBMRequest1" element="ns5:SyncCustomerSystemUserAccountVBMRequest" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)
(:: pragma bea:global-element-return element="ns4:InputParameters" location="../Schema/GetIDDetails_sp.xsd" ::)

declare namespace ns5 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace ns0 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace ns2 = "http://group.vodafone.com/schema/common/v1";
declare namespace ns1 = "http://group.vodafone.com/schema/vbo/identity/customer-system-user-account/v1";
declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transaformation/XQ_CustomerSystemUserAccountRequest_To_GetIDDetailsREQ/";
declare namespace ns4 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/GetIDDetails";
declare namespace ns3 = "http://group.vodafone.com/schema/extension/vbo/identity/customer-system-user-account/v1";

declare function xf:XQ_CustomerSystemUserAccountRequest_To_GetIDDetailsREQ($syncCustomerSystemUserAccountVBMRequest1 as element(ns5:SyncCustomerSystemUserAccountVBMRequest))
    as element(ns4:InputParameters) {
        <ns4:InputParameters>
                    <ns4:IN_MS_AC>
                    { 
					$syncCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:Parts/*:Subscriptions/*:Subscription/*:MSISDN/text() 
					}
					</ns4:IN_MS_AC>         
                    <ns4:IN_INPUT_TYPE>MSISDN</ns4:IN_INPUT_TYPE>            
        </ns4:InputParameters>
};

declare variable $syncCustomerSystemUserAccountVBMRequest1 as element(ns5:SyncCustomerSystemUserAccountVBMRequest) external;

xf:XQ_CustomerSystemUserAccountRequest_To_GetIDDetailsREQ($syncCustomerSystemUserAccountVBMRequest1)