(:: pragma bea:global-element-parameter parameter="$syncCustomerSystemUserAccountVBMRequest1" element="ns4:SyncCustomerSystemUserAccountVBMRequest" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)
(:: pragma bea:global-element-return element="ns4:SyncCustomerSystemUserAccountVBMResponse" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)

declare namespace ns0 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace ns2 = "http://group.vodafone.com/schema/common/v1";
declare namespace ns1 = "http://group.vodafone.com/schema/vbo/identity/customer-system-user-account/v1";
declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transformation/XQ_IDMLinkMSISDN_to_SyncCustomerSystemUserAccountResponse/";
declare namespace ns4 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace ns3 = "http://group.vodafone.com/schema/extension/vbo/identity/customer-system-user-account/v1";

declare function xf:XQ_IDMLinkMSISDN_to_SyncCustomerSystemUserAccountResponse($syncCustomerSystemUserAccountVBMRequest1 as element(ns4:SyncCustomerSystemUserAccountVBMRequest))
    as element(ns4:SyncCustomerSystemUserAccountVBMResponse) {
        <ns4:SyncCustomerSystemUserAccountVBMResponse>
            <ns4:CustomerSystemUserAccountVBO>
                <ns2:IDs>
                    <ns2:ID>{data($syncCustomerSystemUserAccountVBMRequest1/*:CustomerSystemUserAccountVBO/*:IDs/*:ID)}</ns2:ID>
                     </ns2:IDs>
                 <ns2:Categories>
               <ns2:Category listName="Reason Code">0000</ns2:Category>
            </ns2:Categories>
            </ns4:CustomerSystemUserAccountVBO>
        </ns4:SyncCustomerSystemUserAccountVBMResponse>
};

declare variable $syncCustomerSystemUserAccountVBMRequest1 as element(ns4:SyncCustomerSystemUserAccountVBMRequest) external;

xf:XQ_IDMLinkMSISDN_to_SyncCustomerSystemUserAccountResponse($syncCustomerSystemUserAccountVBMRequest1)