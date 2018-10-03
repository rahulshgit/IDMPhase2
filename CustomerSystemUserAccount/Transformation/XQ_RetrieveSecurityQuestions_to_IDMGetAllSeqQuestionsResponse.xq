(:: pragma bea:global-element-parameter parameter="$gET_ALL_SEC_QUESTIONSResponse1" element="ns0:GET_ALL_SEC_QUESTIONSResponse" location="../Schema/IDM_Phase2.xsd" ::)
(:: pragma bea:global-element-return element="ns5:GetCustomerSystemUserAccountListVBMResponse" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)

declare namespace ns5 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace ns0 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns2 = "http://group.vodafone.com/schema/vbo/identity/customer-system-user-account/v1";
declare namespace ns1 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transaformation/XQ_RetrieveSecurityQuestions_to_IDMGetAllSeqQuestionsResponse/";
declare namespace ns4 = "http://group.vodafone.com/schema/extension/vbo/identity/customer-system-user-account/v1";
declare namespace ns3 = "http://group.vodafone.com/schema/common/v1";

declare function xf:XQ_RetrieveSecurityQuestions_to_IDMGetAllSeqQuestionsResponse($gET_ALL_SEC_QUESTIONSResponse1 as element(ns0:GET_ALL_SEC_QUESTIONSResponse))
    as element(ns5:GetCustomerSystemUserAccountListVBMResponse) {
        <ns5:GetCustomerSystemUserAccountListVBMResponse>
            <ns5:CustomerSystemUserAccountVBO>
                <ns2:Roles>
                    <ns2:Administrator>
                        <ns3:IDs>
						   {
						   for $secQuestions in $gET_ALL_SEC_QUESTIONSResponse1/*:return/*:secQuestions return 
                            <ns3:ID schemeName="SecurityQuestion"  schemeAgencyName="Vodafone">{data($secQuestions/*:question)}</ns3:ID>							
						   }
                        </ns3:IDs>
                    </ns2:Administrator>
                </ns2:Roles>
            </ns5:CustomerSystemUserAccountVBO>
        </ns5:GetCustomerSystemUserAccountListVBMResponse>
};

declare variable $gET_ALL_SEC_QUESTIONSResponse1 as element(ns0:GET_ALL_SEC_QUESTIONSResponse) external;

xf:XQ_RetrieveSecurityQuestions_to_IDMGetAllSeqQuestionsResponse($gET_ALL_SEC_QUESTIONSResponse1)