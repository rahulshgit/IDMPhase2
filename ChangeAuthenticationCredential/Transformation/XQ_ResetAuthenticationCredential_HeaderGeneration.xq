xquery version "1.0" encoding "Cp1252";
(:: pragma  parameter="$anyType1" type="xs:anyType" ::)
(:: pragma  type="xs:anyType" ::)

declare namespace xf = "http://tempuri.org/CustomerSystemUserAccount/Transformation/SuccessHeaderGeneration/";

declare function xf:HeaderGeneration($transactionId as xs:string,$reasonCode as xs:string,$message as xs:string)
    as element(*) {
       <soapenv:Header  xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:v1="http://group.vodafone.com/contract/vho/header/v1">
      <v1:ResultStatus xmlns:v11="http://group.vodafone.com/contract/vfo/fault/v1">
         <v11:ReasonCode>{$reasonCode}</v11:ReasonCode>
         <v11:Message>{$message}</v11:Message>
      </v1:ResultStatus>
      <v1:Correlation>
         <v1:ConversationID>{$transactionId}</v1:ConversationID>
      </v1:Correlation>
   </soapenv:Header>
};

declare variable $transactionId as xs:string external;
declare variable $reasonCode as xs:string external;
declare variable $message as xs:string external;

xf:HeaderGeneration($transactionId,$reasonCode,$message)