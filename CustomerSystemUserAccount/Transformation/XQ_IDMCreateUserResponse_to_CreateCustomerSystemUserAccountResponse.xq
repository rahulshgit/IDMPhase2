(:: pragma bea:global-element-parameter parameter="$cRM_CREATE_USERResponse1" element="ns0:CRM_CREATE_USERResponse" location="../Schema/IDM_Phase2.xsd" ::)
(:: pragma bea:global-element-return element="ns5:CreateCustomerSystemUserAccountVBMResponse" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)

declare namespace ns5 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace ns0 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns2 = "http://group.vodafone.com/schema/vbo/identity/customer-system-user-account/v1";
declare namespace ns1 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transformation/XQ_IDMCreateUserResponse_to_CustomerSystemUserAccountResponse/";
declare namespace ns4 = "http://group.vodafone.com/schema/extension/vbo/identity/customer-system-user-account/v1";
declare namespace ns3 = "http://group.vodafone.com/schema/common/v1";

declare function xf:XQ_IDMCreateUserResponse_to_CustomerSystemUserAccountResponse($cRM_CREATE_USERResponse1 as element(ns0:CRM_CREATE_USERResponse))
    as element(ns5:CreateCustomerSystemUserAccountVBMResponse) {
        <ns5:CreateCustomerSystemUserAccountVBMResponse>
            <ns5:CustomerSystemUserAccountVBO>
                <ns3:IDs>
                    <ns3:ID>{data($cRM_CREATE_USERResponse1/*:return/*:user_Key)}</ns3:ID>
                </ns3:IDs>
                 <ns3:Categories>
               <ns3:Category listName="Reason Code">0000</ns3:Category>
            </ns3:Categories>
            </ns5:CustomerSystemUserAccountVBO>
        </ns5:CreateCustomerSystemUserAccountVBMResponse>
};

declare variable $cRM_CREATE_USERResponse1 as element(ns0:CRM_CREATE_USERResponse) external;

xf:XQ_IDMCreateUserResponse_to_CustomerSystemUserAccountResponse($cRM_CREATE_USERResponse1)