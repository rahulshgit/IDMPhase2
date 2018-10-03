<dvm name="IDMErrorMapping" xmlns="http://xmlns.oracle.com/dvm">
	<description>
    IDMErrorMapping
	</description>
	<columns>
		<column name="ERR_CODE"/>
		<column name="ERR_DESC"/>
	</columns>
	<rows>
		<row>
			<cell>1000</cell>
			<cell>Date Of Birth must be in YYYY-MM-DD format</cell>
		</row>
		<row>
			<cell>1002</cell>
			<cell>Details provided are either not in proper format or already in use by existing IDMAccount </cell>
		</row>
		<row>
			<cell>1004</cell>
			<cell>Error while connecting to OIM</cell>
		</row>
		<row>
			<cell>1006</cell>
			<cell>No data found for the provided input</cell>
		</row>
		<row>
			<cell>1007</cell>
			<cell>Error while updating  user details. Please check if IDMAccountID is existing</cell>
		</row>
		<row>
			<cell>1008</cell>
			<cell>Error while unlocking the  user account. Please check if IDMAccountID is existing</cell>
		</row>
		<row>
			<cell>1010</cell>
			<cell>Error while resetting the password. Please check if IDMAccountID is existing</cell>
		</row>
		<row>
			<cell>1011</cell>
			<cell>IDMAccount is not provisioned. MSISDN can not be linked/unlinked.</cell>
		</row>
		<row>
			<cell>1014</cell>
			<cell>MSISDN can not be unlinked as its not linked with IDMAccount</cell>
		</row>
		<row>
			<cell>1015</cell>
			<cell>No data found for provided MSISDN</cell>
		</row>
		<row>
			<cell>1016</cell>
			<cell>IDNumber/IDType mismatch  with provided MSISDN and IDMAccountID</cell>
		</row>
		<row>
			<cell>1017</cell>
			<cell>Challenge IDNumber/IDType not matching with provided MSISDN</cell>
		</row>
		<row>
			<cell>1018</cell>
			<cell>Provided MSISDN is already linked</cell>
		</row>
	</rows>
</dvm>