(:: pragma bea:global-element-return element="ns0:GET_ALL_SEC_QUESTIONS" location="../Schema/IDM_Phase2.xsd" ::)

declare namespace ns0 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transformation/XQ_RetrieveSecurityQuestions_to_IDMGetAllSeqQuestions/";

declare function xf:XQ_RetrieveSecurityQuestions_to_IDMGetAllSeqQuestions($transactionId as xs:string)
    as element(ns0:GET_ALL_SEC_QUESTIONS) {
        <ns0:GET_ALL_SEC_QUESTIONS>
            <arg0>{$transactionId}</arg0>
            <arg1>ENGLISH</arg1>
        </ns0:GET_ALL_SEC_QUESTIONS>
};

declare variable $transactionId as xs:string external;

xf:XQ_RetrieveSecurityQuestions_to_IDMGetAllSeqQuestions($transactionId)