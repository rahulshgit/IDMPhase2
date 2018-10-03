(:: pragma bea:global-element-parameter parameter="$cRM_SEARCH_ALL_USERResponse1" element="ns0:CRM_SEARCH_ALL_USERResponse" location="../Schema/IDM_Phase2.xsd" ::)
(:: pragma bea:global-element-return element="ns1:Sync_1_Input" location="../WSDL/http___siebel.com_CustomUI_VFQA%20IDM%20Siebel%20Sync.wsdl" ::)

declare namespace ns0 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns2 = "http://www.siebel.com/xml/VFQ%20IDM%20Sync";
declare namespace ns1 = "http://siebel.com/CustomUI";
declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transaformation/XQ_SYNCustomerProfileRequest_To_CRMSyncRequest/";

declare function xf:XQ_SYNCustomerProfileRequest_To_CRMSyncRequest($cRM_SEARCH_ALL_USERResponse1 as element(ns0:CRM_SEARCH_ALL_USERResponse))
    as element(ns1:Sync_1_Input) {
        <ns1:Sync_1_Input>
        <ns1:Status_spcCode></ns1:Status_spcCode>
            <ns2:ListOfVfqIdmSync>
                <ns2:VfqIdmManagement>
                    {
                        for $date_of_Birth in $cRM_SEARCH_ALL_USERResponse1/return[1]/date_of_Birth
                        return
                            <ns2:DateofBirth>{ data($date_of_Birth) }</ns2:DateofBirth>
                    }
                    {
                        for $EMail in $cRM_SEARCH_ALL_USERResponse1/return[1]/EMail
                        return
                            <ns2:Email>{ data($EMail) }</ns2:Email>
                    }
                    {
                        for $firstName in $cRM_SEARCH_ALL_USERResponse1/return[1]/firstName
                        return
                            <ns2:FirstName>{ data($firstName) }</ns2:FirstName>
                    }
                    {
                        for $ID_Number in $cRM_SEARCH_ALL_USERResponse1/return[1]/ID_Number
                        return
                            <ns2:IdNumber>{ data($ID_Number) }</ns2:IdNumber>
                    }
                    {
                        for $ID_Type in $cRM_SEARCH_ALL_USERResponse1/return[1]/ID_Type
                        return
                            <ns2:IdType>{ data($ID_Type) }</ns2:IdType>
                    }
                    {
                        for $lastName in $cRM_SEARCH_ALL_USERResponse1/return[1]/lastName
                        return
                            <ns2:LastName>{ data($lastName) }</ns2:LastName>
                    }
                </ns2:VfqIdmManagement>
              
            </ns2:ListOfVfqIdmSync>
              <ns1:Status_spcMsg></ns1:Status_spcMsg>
        </ns1:Sync_1_Input>
};

declare variable $cRM_SEARCH_ALL_USERResponse1 as element(ns0:CRM_SEARCH_ALL_USERResponse) external;

xf:XQ_SYNCustomerProfileRequest_To_CRMSyncRequest($cRM_SEARCH_ALL_USERResponse1)