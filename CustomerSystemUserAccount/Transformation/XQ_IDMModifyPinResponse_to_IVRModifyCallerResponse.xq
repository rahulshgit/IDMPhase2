(:: pragma bea:global-element-parameter parameter="$mODIFY_PINResponse1" element="ns4:MODIFY_PINResponse" location="../Schema/IDM_Phase2.xsd" ::)
(:: pragma bea:global-element-return element="ns5:UpdateCustomerSystemUserAccountVBMResponse" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)

declare namespace ns2 = "http://group.vodafone.com/schema/extension/vbo/identity/customer-system-user-account/v1";
declare namespace ns1 = "http://group.vodafone.com/schema/vbo/identity/customer-system-user-account/v1";
declare namespace ns4 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns3 = "http://group.vodafone.com/schema/common/v1";
declare namespace ns0 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace ns5 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transaformation/XQ_IDMModifyPinResponse_to_IVRModifyCallerResponse/";

declare function xf:XQ_IDMModifyPinResponse_to_IVRModifyCallerResponse($mODIFY_PINResponse1 as element(ns4:MODIFY_PINResponse))
    as element(ns5:UpdateCustomerSystemUserAccountVBMResponse) {
        <ns5:UpdateCustomerSystemUserAccountVBMResponse>
            <ns5:CustomerSystemUserAccountVBO>
                <ns3:IDs>
                    <ns3:ID schemeName = "MSISDN"
                            schemeAgencyName = "Vodafone">{ data($mODIFY_PINResponse1/return/MSISDN) }</ns3:ID>
                </ns3:IDs>
                <ns3:Status>{ data($mODIFY_PINResponse1/return/message) }</ns3:Status>
            </ns5:CustomerSystemUserAccountVBO>
        </ns5:UpdateCustomerSystemUserAccountVBMResponse>
};

declare variable $mODIFY_PINResponse1 as element(ns4:MODIFY_PINResponse) external;

xf:XQ_IDMModifyPinResponse_to_IVRModifyCallerResponse($mODIFY_PINResponse1)