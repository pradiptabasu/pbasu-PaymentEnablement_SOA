<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://www.demo.oracle.gringottBank.org"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 oraxsl"
                xmlns:ns2="http://schemas.oracle.com/bpel/extension" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:client="http://xmlns.oracle.com/PaymentEnablement_SOA/PaymentBookingProcess/BankPaymentBookingProcess">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/BankPaymentBookingProcess.wsdl"/>
        <oracle-xsl-mapper:rootElement name="paymentBookingRequest"
                                       namespace="http://www.demo.oracle.gringottBank.org"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/BankPaymentBookingProcess.wsdl"/>
        <oracle-xsl-mapper:rootElement name="paymentBookingRequest"
                                       namespace="http://www.demo.oracle.gringottBank.org"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [THU MAY 19 17:57:56 IST 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <ns0:paymentBookingRequest>
      <ns0:FintechPaymentRequestId>
        <xsl:value-of select="/ns0:paymentBookingRequest/ns0:FintechPaymentRequestId"/>
      </ns0:FintechPaymentRequestId>
      <ns0:CustomerToken>
        <xsl:value-of select="/ns0:paymentBookingRequest/ns0:CustomerToken"/>
      </ns0:CustomerToken>
      <ns0:creditAmount>
        <xsl:value-of select="/ns0:paymentBookingRequest/ns0:creditAmount"/>
      </ns0:creditAmount>
      <ns0:cashAmount>
        <xsl:value-of select="/ns0:paymentBookingRequest/ns0:cashAmount"/>
      </ns0:cashAmount>
      <ns0:finTechID>
        <xsl:value-of select="/ns0:paymentBookingRequest/ns0:finTechID"/>
      </ns0:finTechID>
      <ns0:PaymentCategory>
        <xsl:value-of select="/ns0:paymentBookingRequest/ns0:PaymentCategory"/>
      </ns0:PaymentCategory>
      <xsl:choose>
        <xsl:when test="/ns0:PaymentRequest/ns0:SalesChannel">
          <ns0:SalesChannel>
            <xsl:value-of select="/ns0:PaymentRequest/ns0:SalesChannel"/>
          </ns0:SalesChannel>
        </xsl:when>
        <xsl:otherwise>
          <ns0:SalesChannel>
            <xsl:value-of select="'FinTech'"/>
          </ns0:SalesChannel>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:choose>
        <xsl:when test="/ns0:PaymentRequest/ns0:TechnicalChannel">
          <ns0:TechnicalChannel>
            <xsl:value-of select="'API'"/>
          </ns0:TechnicalChannel>
        </xsl:when>
        <xsl:otherwise>
          <ns0:TechnicalChannel>
            <xsl:value-of select="/ns0:PaymentRequest/ns0:TechnicalChannel"/>
          </ns0:TechnicalChannel>
        </xsl:otherwise>
      </xsl:choose>
      <ns0:Region>
        <xsl:value-of select="/ns0:paymentBookingRequest/ns0:Region"/>
      </ns0:Region>
    </ns0:paymentBookingRequest>
  </xsl:template>
</xsl:stylesheet>
