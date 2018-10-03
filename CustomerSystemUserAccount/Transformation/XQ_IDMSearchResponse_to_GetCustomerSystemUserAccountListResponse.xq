(:: pragma bea:global-element-parameter parameter="$cRM_SEARCH_USERResponse1" element="ns4:CRM_SEARCH_USERResponse" location="../Schema/IDM_Phase2.xsd" ::)
(:: pragma bea:global-element-return element="ns5:GetCustomerSystemUserAccountListVBMResponse" location="../../VFQA_CSM_Common/Schema/VBO/Identity/CustomerSystemUserAccount/V1/CustomerSystemUserAccountVBM.xsd" ::)

declare namespace ns2 = "http://group.vodafone.com/schema/extension/vbo/identity/customer-system-user-account/v1";
declare namespace ns1 = "http://group.vodafone.com/schema/vbo/identity/customer-system-user-account/v1";
declare namespace ns4 = "http://vodafoneqatar.qa/vfqa/IDM_Phase2";
declare namespace ns3 = "http://group.vodafone.com/schema/common/v1";
declare namespace ns0 = "urn:un:unece:uncefact:documentation:standard:CoreComponentType:2";
declare namespace ns5 = "http://group.vodafone.com/schema/vbm/identity/customer-system-user-account/v1";
declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transformation/XQ_IDMSearchResponse_to_CRMSearchResponse/";

declare function xf:XQ_IDMSearchResponse_to_CRMSearchResponse($cRM_SEARCH_USERResponse1 as element(ns4:CRM_SEARCH_ALL_USERResponse ),$additionalAttributes)
    as element(ns5:GetCustomerSystemUserAccountListVBMResponse) {
<ns5:GetCustomerSystemUserAccountListVBMResponse>
        {
        for $return at $position in $cRM_SEARCH_USERResponse1/*:return return 
	<ns5:CustomerSystemUserAccountVBO>
		<ns3:IDs>			
			<ns3:ID>{ data($return/IDMAccountId)}</ns3:ID>
		</ns3:IDs> 
		 <ns3:Categories>
               <ns3:Category listName="Reason Code">0000</ns3:Category>
            </ns3:Categories> 
		<ns3:Status>
		{ 
				if(data($return/accountStatus)="0") then
				'UNLOCKED'
				else if(data($return/accountStatus)="1") then
				'LOCKED'
				else
				""
		}
		</ns3:Status>		
		<ns1:Roles>
			<ns1:Holder>
				<ns3:IDs>
					<ns3:ID>{data($return/ID_Number)}</ns3:ID>				
				</ns3:IDs>			
				<ns3:Type>{
				if(upper-case(data($return/ID_Type)) eq "QATARI ID") then
				"QATARIID"
				else
				upper-case(data($return/ID_Type))				
				}</ns3:Type>		
				<ns3:IndividualName>
					<ns3:FirstName>{ data($return/firstName)}</ns3:FirstName>
					<ns3:FamilyName>{ data($return/lastName)}</ns3:FamilyName>
				</ns3:IndividualName>
				{	
                if(exists($return/date_of_Birth/text())) then   
				<ns3:BirthDate>
					<ns0:DateString>{ data($return/date_of_Birth)}</ns0:DateString>
				</ns3:BirthDate>
				else ''
				}
				{	
                if(exists($return/secondaryEMail/text())) then    				
				<ns1:ContactPoints>					
					<ns1:ContactPoint>
						<ns3:Email>
							<ns3:FullAddress>{data($return/secondaryEMail)}</ns3:FullAddress>
						</ns3:Email>
					</ns1:ContactPoint>
				</ns1:ContactPoints>
				else ''
				}
			</ns1:Holder>
		</ns1:Roles>
		<ns1:Parts>
		{
		let $subs:= 
			<ns1:Subscriptions>
					{
					for $return1 in $additionalAttributes/*:Body[$position]/*:getChildProcessFormDataResponse/*:return where exists($return1/text())return
					let $tempSubscription :=
				<ns1:Subscription>
					<ns3:Status>
							{
							if(exists($return1/text())) then
							  if(substring-after($return1/text(), ',')='Full') then
							  'Full Authorization'
							  else  if(substring-after($return1/text(), ',')='Restricted') then
							  'Partial Authorization'
							  else ''
							else ''
							}
					</ns3:Status>
					<ns1:MSISDN>
							{
							if(exists($return1/text())) then
							  substring-before($return1/text(), ',')
							else ''
							}
					</ns1:MSISDN>
				</ns1:Subscription>	
				return $tempSubscription
					  
					}
			</ns1:Subscriptions>
			return 
			if(exists($subs/*)) then
			$subs
			else 
			''
			
			}
			{
			if(exists($return/IVR_Pin/text())) then 
			<ns1:Credentials>
				<ns1:Credential>
					<ns3:PINs>							 
						<ns3:PIN>
							<ns3:TypeCode>IVR</ns3:TypeCode>
							<ns3:Value>*****</ns3:Value>
						</ns3:PIN>								
					</ns3:PINs>	
				</ns1:Credential>
			</ns1:Credentials>			
			else ''								
			}
			<ns1:AccountLogins>
				<ns1:AccountLogin>
					<ns3:IDs>
						<ns3:ID>{data($return/EMail)}</ns3:ID>
					</ns3:IDs>
				</ns1:AccountLogin>
			</ns1:AccountLogins>
		</ns1:Parts>
	</ns5:CustomerSystemUserAccountVBO>
            }
</ns5:GetCustomerSystemUserAccountListVBMResponse>
};

declare variable $cRM_SEARCH_USERResponse1 as element(ns4:CRM_SEARCH_ALL_USERResponse) external;
declare variable $additionalAttributes as element(*) external;

xf:XQ_IDMSearchResponse_to_CRMSearchResponse($cRM_SEARCH_USERResponse1,$additionalAttributes)