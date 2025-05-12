<?xml version="1.0" encoding="utf-8"?>
<ISO15745ProfileContainer xmlns="http://www.canopen.org/xml/1.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.canopen.org/xml/1.0 CANopen.xsd">
  <ISO15745Profile>
    <ProfileHeader>
      <ProfileIdentification>CAN device profile</ProfileIdentification>
      <ProfileRevision>1</ProfileRevision>
      <ProfileName></ProfileName>
      <ProfileSource></ProfileSource>
      <ProfileClassID>Device</ProfileClassID>
      <ISO15745Reference>
        <ISO15745Part>1</ISO15745Part>
        <ISO15745Edition>1</ISO15745Edition>
        <ProfileTechnology>CANopen</ProfileTechnology>
      </ISO15745Reference>
    </ProfileHeader>
    <ProfileBody xsi:type="ProfileBody_Device_CANopen" fileName="TMS.xdd" fileCreator="Luke Schrom" fileCreationDate="2025-05-08" fileCreationTime="16:25:00" fileModificationDate="2025-05-08" fileModificationTime="16:25:17" fileModifiedBy="Luke Schrom" fileVersion="" supportedLanguages="en-us">
      <DeviceIdentity>
        <vendorName readOnly="true"></vendorName>
        <vendorID readOnly="true"></vendorID>
        <vendorText readOnly="true">
          <label lang="en-us" />
        </vendorText>
        <deviceFamily readOnly="true">
          <label lang="en-us" />
        </deviceFamily>
        <productFamily readOnly="true"></productFamily>
        <productName readOnly="true"></productName>
        <productID readOnly="true"></productID>
        <productText readOnly="true">
          <description lang="en-us">FileDescription=TMS EDS|EdsVersion=4.0|FileRevison=|LastEDS=TMS.eds|RevisionNum=|</description>
        </productText>
        <orderNumber readOnly="true"></orderNumber>
        <version versionType="SW" readOnly="true"></version>
        <version versionType="FW" readOnly="true"></version>
        <version versionType="HW" readOnly="true"></version>
        <specificationRevision readOnly="true"></specificationRevision>
        <instanceName readOnly="true"></instanceName>
      </DeviceIdentity>
      <DeviceManager>
        <indicatorList>
          <LEDList>
            <LED LEDcolors="monocolor" LEDtype="device">
              <label lang="en-us" />
              <LEDstate uniqueID="LED_State_1" state="off" LEDcolor="green">
                <label lang="en-us" />
              </LEDstate>
            </LED>
          </LEDList>
        </indicatorList>
      </DeviceManager>
      <DeviceFunction>
        <capabilities>
          <characteristicsList>
            <characteristic>
              <characteristicName>
                <label lang="en-us" />
              </characteristicName>
              <characteristicContent>
                <label lang="en-us" />
              </characteristicContent>
            </characteristic>
          </characteristicsList>
        </capabilities>
      </DeviceFunction>
      <ApplicationProcess>
        <dataTypeList>
          <derived uniqueID="UID.VCO.TYPE.UINT8" name="VCOUINT8">
            <count uniqueID="UID.VCO.TYPE.UINT8.COUNT" access="read">
              <defaultValue value="8" />
            </count>
            <BITSTRING />
          </derived>
          <derived uniqueID="UID.VCO.TYPE.UINT16" name="VCOUINT16">
            <count uniqueID="UID.VCO.TYPE.UINT16.COUNT" access="read">
              <defaultValue value="16" />
            </count>
            <BITSTRING />
          </derived>
          <struct uniqueID="UID.VCO.SIGNALLIST.OBJ6001sub1" name="Signal layout for object 0x6001sub1">
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub1.1" name="Temperture">
              <dataTypeIDRef uniqueIDRef="UID.VCO.TYPE.UINT16" />
            </varDeclaration>
        </struct>
          <struct uniqueID="UID.VCO.SIGNAL.OBJ6001sub1.1.ATTR" name="">
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub1.1.ATTR.UNIT" name="mC">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub1.1.ATTR.FACTOR" name="1.0">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub1.1.ATTR.OFFSET" name="0.0">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub1.1.ATTR.LOWLIMIT" name="">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub1.1.ATTR.HIGHLIMIT" name="">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub1.1.ATTR.DEFVALUE" name="">
              <STRING />
            </varDeclaration>
        </struct>
          <struct uniqueID="UID.VCO.SIGNALLIST.OBJ6001sub2" name="Signal layout for object 0x6001sub2">
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub2.1" name="Temperture">
              <dataTypeIDRef uniqueIDRef="UID.VCO.TYPE.UINT16" />
            </varDeclaration>
        </struct>
          <struct uniqueID="UID.VCO.SIGNAL.OBJ6001sub2.1.ATTR" name="">
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub2.1.ATTR.UNIT" name="mC">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub2.1.ATTR.FACTOR" name="1.0">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub2.1.ATTR.OFFSET" name="0.0">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub2.1.ATTR.LOWLIMIT" name="">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub2.1.ATTR.HIGHLIMIT" name="">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub2.1.ATTR.DEFVALUE" name="">
              <STRING />
            </varDeclaration>
        </struct>
          <struct uniqueID="UID.VCO.SIGNALLIST.OBJ6001sub3" name="Signal layout for object 0x6001sub3">
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub3.1" name="Temperture">
              <dataTypeIDRef uniqueIDRef="UID.VCO.TYPE.UINT16" />
            </varDeclaration>
        </struct>
          <struct uniqueID="UID.VCO.SIGNAL.OBJ6001sub3.1.ATTR" name="">
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub3.1.ATTR.UNIT" name="mC">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub3.1.ATTR.FACTOR" name="1.0">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub3.1.ATTR.OFFSET" name="0.0">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub3.1.ATTR.LOWLIMIT" name="">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub3.1.ATTR.HIGHLIMIT" name="">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub3.1.ATTR.DEFVALUE" name="">
              <STRING />
            </varDeclaration>
        </struct>
          <struct uniqueID="UID.VCO.SIGNALLIST.OBJ6001sub4" name="Signal layout for object 0x6001sub4">
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub4.1" name="Temperture">
              <dataTypeIDRef uniqueIDRef="UID.VCO.TYPE.UINT16" />
            </varDeclaration>
        </struct>
          <struct uniqueID="UID.VCO.SIGNAL.OBJ6001sub4.1.ATTR" name="">
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub4.1.ATTR.UNIT" name="mC">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub4.1.ATTR.FACTOR" name="1.0">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub4.1.ATTR.OFFSET" name="0.0">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub4.1.ATTR.LOWLIMIT" name="">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub4.1.ATTR.HIGHLIMIT" name="">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub4.1.ATTR.DEFVALUE" name="">
              <STRING />
            </varDeclaration>
        </struct>
          <struct uniqueID="UID.VCO.SIGNALLIST.OBJ6001sub5" name="Signal layout for object 0x6001sub5">
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub5.1" name="Temperture">
              <dataTypeIDRef uniqueIDRef="UID.VCO.TYPE.UINT16" />
            </varDeclaration>
        </struct>
          <struct uniqueID="UID.VCO.SIGNAL.OBJ6001sub5.1.ATTR" name="">
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub5.1.ATTR.UNIT" name="mC">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub5.1.ATTR.FACTOR" name="1.0">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub5.1.ATTR.OFFSET" name="0.0">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub5.1.ATTR.LOWLIMIT" name="">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub5.1.ATTR.HIGHLIMIT" name="">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub5.1.ATTR.DEFVALUE" name="">
              <STRING />
            </varDeclaration>
        </struct>
          <struct uniqueID="UID.VCO.SIGNALLIST.OBJ6001sub6" name="Signal layout for object 0x6001sub6">
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub6.1" name="Temperture">
              <dataTypeIDRef uniqueIDRef="UID.VCO.TYPE.UINT16" />
            </varDeclaration>
        </struct>
          <struct uniqueID="UID.VCO.SIGNAL.OBJ6001sub6.1.ATTR" name="">
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub6.1.ATTR.UNIT" name="mC">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub6.1.ATTR.FACTOR" name="1.0">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub6.1.ATTR.OFFSET" name="0.0">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub6.1.ATTR.LOWLIMIT" name="">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub6.1.ATTR.HIGHLIMIT" name="">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6001sub6.1.ATTR.DEFVALUE" name="">
              <STRING />
            </varDeclaration>
        </struct>
          <struct uniqueID="UID.VCO.SIGNALLIST.OBJ6003sub1" name="Signal layout for object 0x6003sub1">
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6003sub1.1" name="PWM %">
              <dataTypeIDRef uniqueIDRef="UID.VCO.TYPE.UINT8" />
            </varDeclaration>
        </struct>
          <struct uniqueID="UID.VCO.SIGNAL.OBJ6003sub1.1.ATTR" name="">
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6003sub1.1.ATTR.UNIT" name="%">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6003sub1.1.ATTR.FACTOR" name="1.0">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6003sub1.1.ATTR.OFFSET" name="0.0">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6003sub1.1.ATTR.LOWLIMIT" name="">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6003sub1.1.ATTR.HIGHLIMIT" name="">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6003sub1.1.ATTR.DEFVALUE" name="">
              <STRING />
            </varDeclaration>
        </struct>
          <struct uniqueID="UID.VCO.SIGNALLIST.OBJ6003sub2" name="Signal layout for object 0x6003sub2">
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6003sub2.1" name="PWM %">
              <dataTypeIDRef uniqueIDRef="UID.VCO.TYPE.UINT8" />
            </varDeclaration>
        </struct>
          <struct uniqueID="UID.VCO.SIGNAL.OBJ6003sub2.1.ATTR" name="">
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6003sub2.1.ATTR.UNIT" name="%">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6003sub2.1.ATTR.FACTOR" name="1.0">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6003sub2.1.ATTR.OFFSET" name="0.0">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6003sub2.1.ATTR.LOWLIMIT" name="">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6003sub2.1.ATTR.HIGHLIMIT" name="">
              <STRING />
            </varDeclaration>
            <varDeclaration uniqueID="UID.VCO.SIGNAL.OBJ6003sub2.1.ATTR.DEFVALUE" name="">
              <STRING />
            </varDeclaration>
        </struct>
        </dataTypeList>
        <parameterList>
          <parameter uniqueID="UID_PARAM_1000" access="read">
            <label lang="en-us">Device Type</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="419" />
          </parameter>
          <parameter uniqueID="UID_PARAM_1001" access="read">
            <label lang="en-us">Error Register</label>
            <USINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_101801" access="read">
            <label lang="en-us">Vendor Id</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_101802" access="read">
            <label lang="en-us">Product Code</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_101803" access="read">
            <label lang="en-us">Revision number</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_101804" access="read">
            <label lang="en-us">Serial number</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_180001" access="read">
            <label lang="en-us">COB-ID</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0x182" />
          </parameter>
          <parameter uniqueID="UID_PARAM_180002" access="read">
            <label lang="en-us">TransmissionType</label>
            <USINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_180003" access="read">
            <label lang="en-us">Inhibit Time</label>
            <UINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0x0000" />
          </parameter>
          <parameter uniqueID="UID_PARAM_180004" access="readWrite">
            <label lang="en-us">Compatibility Entry</label>
            <USINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_180005" access="read">
            <label lang="en-us">Event Timer</label>
            <UINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0" />
          </parameter>
          <parameter uniqueID="UID_PARAM_180006" access="readWrite">
            <label lang="en-us">SYNC start value</label>
            <USINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0" />
          </parameter>
          <parameter uniqueID="UID_PARAM_180101" access="read">
            <label lang="en-us">COB-ID</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0x282" />
          </parameter>
          <parameter uniqueID="UID_PARAM_180102" access="read">
            <label lang="en-us">TransmissionType</label>
            <USINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_180103" access="readWrite">
            <label lang="en-us">Inhibit Time</label>
            <UINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0x0000" />
          </parameter>
          <parameter uniqueID="UID_PARAM_180104" access="read">
            <label lang="en-us">Compatibility Entry</label>
            <USINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0" />
          </parameter>
          <parameter uniqueID="UID_PARAM_180105" access="readWrite">
            <label lang="en-us">Event Timer</label>
            <UINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0" />
          </parameter>
          <parameter uniqueID="UID_PARAM_180201" access="read">
            <label lang="en-us">COB-ID</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0x382" />
          </parameter>
          <parameter uniqueID="UID_PARAM_180202" access="read">
            <label lang="en-us">TransmissionType</label>
            <USINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_180203" access="read">
            <label lang="en-us">Inhibit Time</label>
            <UINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0x0000" />
          </parameter>
          <parameter uniqueID="UID_PARAM_180204" access="readWrite">
            <label lang="en-us">Compatibility Entry</label>
            <USINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_180205" access="read">
            <label lang="en-us">Event Timer</label>
            <UINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0" />
          </parameter>
          <parameter uniqueID="UID_PARAM_180206" access="readWrite">
            <label lang="en-us">SYNC start value</label>
            <USINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0" />
          </parameter>
          <parameter uniqueID="UID_PARAM_180301" access="read">
            <label lang="en-us">COB-ID</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0x482" />
          </parameter>
          <parameter uniqueID="UID_PARAM_180302" access="read">
            <label lang="en-us">TransmissionType</label>
            <USINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_180303" access="read">
            <label lang="en-us">Inhibit Time</label>
            <UINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0x0000" />
          </parameter>
          <parameter uniqueID="UID_PARAM_180304" access="readWrite">
            <label lang="en-us">Compatibility Entry</label>
            <USINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_180305" access="read">
            <label lang="en-us">Event Timer</label>
            <UINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0" />
          </parameter>
          <parameter uniqueID="UID_PARAM_180306" access="readWrite">
            <label lang="en-us">SYNC start value</label>
            <USINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0" />
          </parameter>
          <parameter uniqueID="UID_PARAM_1a0001" access="read">
            <label lang="en-us">PDOMapEntry_1</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0x60010110" />
          </parameter>
          <parameter uniqueID="UID_PARAM_1a0002" access="readWrite">
            <label lang="en-us">PDOMapEntry_2</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0x60010210" />
          </parameter>
          <parameter uniqueID="UID_PARAM_1a0003" access="read">
            <label lang="en-us">Transmit PDO Mapping Parameter 0_sub3</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0x60010310" />
          </parameter>
          <parameter uniqueID="UID_PARAM_1a0004" access="read">
            <label lang="en-us">Transmit PDO Mapping Parameter 0_sub4</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0x60010410" />
          </parameter>
          <parameter uniqueID="UID_PARAM_1a0101" access="read">
            <label lang="en-us">PDOMapEntry_1</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0x60010510" />
          </parameter>
          <parameter uniqueID="UID_PARAM_1a0102" access="read">
            <label lang="en-us">PDOMapEntry_2</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0x60010610" />
          </parameter>
          <parameter uniqueID="UID_PARAM_1a0201" access="read">
            <label lang="en-us">PDOMapEntry</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0x60020110" />
          </parameter>
          <parameter uniqueID="UID_PARAM_1a0202" access="read">
            <label lang="en-us">Transmit PDO Mapping Parameter 2_sub2</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0x60020210" />
          </parameter>
          <parameter uniqueID="UID_PARAM_1a0301" access="read">
            <label lang="en-us">PDOMapEntry</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0x60030110" />
          </parameter>
          <parameter uniqueID="UID_PARAM_1a0302" access="read">
            <label lang="en-us">PDOMapEntry</label>
            <UDINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <defaultValue value="0x60030210" />
          </parameter>
          <parameter uniqueID="UID_PARAM_600101" access="read">
            <label lang="en-us">Temp Sensors_sub1</label>
            <dataTypeIDRef uniqueIDRef="UID.VCO.SIGNALLIST.OBJ6001sub1" />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
            <allowedValues>
              <range>
                <minValue value="0" />
                <maxValue value="494967295" />
              </range>
            </allowedValues>
          </parameter>
          <parameter uniqueID="UID_PARAM_600102" access="read">
            <label lang="en-us">Temp Sensors_sub2</label>
            <dataTypeIDRef uniqueIDRef="UID.VCO.SIGNALLIST.OBJ6001sub2" />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_600103" access="read">
            <label lang="en-us">Temp Sensors_sub3</label>
            <dataTypeIDRef uniqueIDRef="UID.VCO.SIGNALLIST.OBJ6001sub3" />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_600104" access="read">
            <label lang="en-us">Temp Sensors_sub4</label>
            <dataTypeIDRef uniqueIDRef="UID.VCO.SIGNALLIST.OBJ6001sub4" />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_600105" access="read">
            <label lang="en-us">Temp Sensors_sub5</label>
            <dataTypeIDRef uniqueIDRef="UID.VCO.SIGNALLIST.OBJ6001sub5" />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_600106" access="read">
            <label lang="en-us">Temp Sensors_sub6</label>
            <dataTypeIDRef uniqueIDRef="UID.VCO.SIGNALLIST.OBJ6001sub6" />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_600201" access="read">
            <label lang="en-us">Flow Sensor 1</label>
            <USINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_600202" access="read">
            <label lang="en-us">Flow Sensor 2</label>
            <USINT />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_600301" access="read">
            <label lang="en-us">PWM Signals 1</label>
            <dataTypeIDRef uniqueIDRef="UID.VCO.SIGNALLIST.OBJ6003sub1" />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
          <parameter uniqueID="UID_PARAM_600302" access="read">
            <label lang="en-us">PWM Signals 2</label>
            <dataTypeIDRef uniqueIDRef="UID.VCO.SIGNALLIST.OBJ6003sub2" />
            <denotation>
              <label lang="en-us"></label>
            </denotation>
          </parameter>
        </parameterList>
      </ApplicationProcess>
    </ProfileBody>
  </ISO15745Profile>
  <ISO15745Profile>
    <ProfileHeader>
      <ProfileIdentification>CAN comm net profile</ProfileIdentification>
      <ProfileRevision>1</ProfileRevision>
      <ProfileName></ProfileName>
      <ProfileSource></ProfileSource>
      <ProfileClassID>CommunicationNetwork</ProfileClassID>
      <ISO15745Reference>
        <ISO15745Part>1</ISO15745Part>
        <ISO15745Edition>1</ISO15745Edition>
        <ProfileTechnology>CANopen</ProfileTechnology>
      </ISO15745Reference>
    </ProfileHeader>
    <ProfileBody xsi:type="ProfileBody_CommunicationNetwork_CANopen" fileName="TMS.xdd" fileCreator="Luke Schrom" fileCreationDate="2025-05-08" fileCreationTime="16:25:00" fileModificationDate="2025-05-08" fileModificationTime="16:25:17" fileModifiedBy="Luke Schrom" fileVersion="" supportedLanguages="en-us">
      <ApplicationLayers>
        <identity>
        </identity>
        <CANopenObjectList>
          <CANopenObject index="1000" name="Device Type" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_1000" />
          <CANopenObject index="1001" name="Error Register" objectType="7" dataType="0005" PDOmapping="no" uniqueIDRef="UID_PARAM_1001" />
          <CANopenObject index="1018" name="Identity Object" objectType="9" subNumber="5">
            <CANopenSubObject subIndex="00" name="Highest sub-index supported" objectType="7" dataType="0005" lowLimit="1" highLimit="4" accessType="ro" defaultValue="4" PDOmapping="no" />
            <CANopenSubObject subIndex="01" name="Vendor Id" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_101801" />
            <CANopenSubObject subIndex="02" name="Product Code" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_101802" />
            <CANopenSubObject subIndex="03" name="Revision number" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_101803" />
            <CANopenSubObject subIndex="04" name="Serial number" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_101804" />
          </CANopenObject>
          <CANopenObject index="1800" name="Transmit PDO Communication Parameter 0" objectType="9" subNumber="7">
            <CANopenSubObject subIndex="00" name="Highest sub-index supported" objectType="7" dataType="0005" lowLimit="0x02" highLimit="0x06" accessType="ro" defaultValue="6" PDOmapping="no" />
            <CANopenSubObject subIndex="01" name="COB-ID" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_180001" />
            <CANopenSubObject subIndex="02" name="TransmissionType" objectType="7" dataType="0005" PDOmapping="no" uniqueIDRef="UID_PARAM_180002" />
            <CANopenSubObject subIndex="03" name="Inhibit Time" objectType="7" dataType="0006" PDOmapping="no" uniqueIDRef="UID_PARAM_180003" />
            <CANopenSubObject subIndex="04" name="Compatibility Entry" objectType="7" dataType="0005" PDOmapping="no" uniqueIDRef="UID_PARAM_180004" />
            <CANopenSubObject subIndex="05" name="Event Timer" objectType="7" dataType="0006" PDOmapping="no" uniqueIDRef="UID_PARAM_180005" />
            <CANopenSubObject subIndex="06" name="SYNC start value" objectType="7" dataType="0005" PDOmapping="no" uniqueIDRef="UID_PARAM_180006" />
          </CANopenObject>
          <CANopenObject index="1801" name="Transmit PDO Communication Parameter 1" objectType="9" subNumber="6">
            <CANopenSubObject subIndex="00" name="Highest sub-index supported" objectType="7" dataType="0005" lowLimit="0x02" highLimit="0x05" accessType="ro" defaultValue="5" PDOmapping="no" />
            <CANopenSubObject subIndex="01" name="COB-ID" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_180101" />
            <CANopenSubObject subIndex="02" name="TransmissionType" objectType="7" dataType="0005" PDOmapping="no" uniqueIDRef="UID_PARAM_180102" />
            <CANopenSubObject subIndex="03" name="Inhibit Time" objectType="7" dataType="0006" PDOmapping="no" uniqueIDRef="UID_PARAM_180103" />
            <CANopenSubObject subIndex="04" name="Compatibility Entry" objectType="7" dataType="0005" PDOmapping="no" uniqueIDRef="UID_PARAM_180104" />
            <CANopenSubObject subIndex="05" name="Event Timer" objectType="7" dataType="0006" PDOmapping="no" uniqueIDRef="UID_PARAM_180105" />
          </CANopenObject>
          <CANopenObject index="1802" name="Transmit PDO Communication Parameter 2" objectType="9" subNumber="7">
            <CANopenSubObject subIndex="00" name="Highest sub-index supported" objectType="7" dataType="0005" lowLimit="0x02" highLimit="0x06" accessType="ro" defaultValue="6" PDOmapping="no" />
            <CANopenSubObject subIndex="01" name="COB-ID" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_180201" />
            <CANopenSubObject subIndex="02" name="TransmissionType" objectType="7" dataType="0005" PDOmapping="no" uniqueIDRef="UID_PARAM_180202" />
            <CANopenSubObject subIndex="03" name="Inhibit Time" objectType="7" dataType="0006" PDOmapping="no" uniqueIDRef="UID_PARAM_180203" />
            <CANopenSubObject subIndex="04" name="Compatibility Entry" objectType="7" dataType="0005" PDOmapping="no" uniqueIDRef="UID_PARAM_180204" />
            <CANopenSubObject subIndex="05" name="Event Timer" objectType="7" dataType="0006" PDOmapping="no" uniqueIDRef="UID_PARAM_180205" />
            <CANopenSubObject subIndex="06" name="SYNC start value" objectType="7" dataType="0005" PDOmapping="no" uniqueIDRef="UID_PARAM_180206" />
          </CANopenObject>
          <CANopenObject index="1803" name="Transmit PDO Communication Parameter 3" objectType="9" subNumber="7">
            <CANopenSubObject subIndex="00" name="Highest sub-index supported" objectType="7" dataType="0005" lowLimit="0x02" highLimit="0x06" accessType="ro" defaultValue="6" PDOmapping="no" />
            <CANopenSubObject subIndex="01" name="COB-ID" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_180301" />
            <CANopenSubObject subIndex="02" name="TransmissionType" objectType="7" dataType="0005" PDOmapping="no" uniqueIDRef="UID_PARAM_180302" />
            <CANopenSubObject subIndex="03" name="Inhibit Time" objectType="7" dataType="0006" PDOmapping="no" uniqueIDRef="UID_PARAM_180303" />
            <CANopenSubObject subIndex="04" name="Compatibility Entry" objectType="7" dataType="0005" PDOmapping="no" uniqueIDRef="UID_PARAM_180304" />
            <CANopenSubObject subIndex="05" name="Event Timer" objectType="7" dataType="0006" PDOmapping="no" uniqueIDRef="UID_PARAM_180305" />
            <CANopenSubObject subIndex="06" name="SYNC start value" objectType="7" dataType="0005" PDOmapping="no" uniqueIDRef="UID_PARAM_180306" />
          </CANopenObject>
          <CANopenObject index="1A00" name="Transmit PDO Mapping Parameter 0" objectType="9" subNumber="5">
            <CANopenSubObject subIndex="00" name="NrOfEntries_1" objectType="7" dataType="0005" lowLimit="0" highLimit="2" accessType="ro" defaultValue="4" PDOmapping="no" />
            <CANopenSubObject subIndex="01" name="PDOMapEntry_1" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_1a0001" />
            <CANopenSubObject subIndex="02" name="PDOMapEntry_2" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_1a0002" />
            <CANopenSubObject subIndex="03" name="Transmit PDO Mapping Parameter 0_sub3" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_1a0003" />
            <CANopenSubObject subIndex="04" name="Transmit PDO Mapping Parameter 0_sub4" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_1a0004" />
          </CANopenObject>
          <CANopenObject index="1A01" name="Transmit PDO Mapping Parameter 1" objectType="9" subNumber="3">
            <CANopenSubObject subIndex="00" name="NrOfEntries_2" objectType="7" dataType="0005" lowLimit="0" highLimit="2" accessType="ro" defaultValue="2" PDOmapping="no" />
            <CANopenSubObject subIndex="01" name="PDOMapEntry_1" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_1a0101" />
            <CANopenSubObject subIndex="02" name="PDOMapEntry_2" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_1a0102" />
          </CANopenObject>
          <CANopenObject index="1A02" name="Transmit PDO Mapping Parameter 2" objectType="9" subNumber="3">
            <CANopenSubObject subIndex="00" name="NrOfEntries" objectType="7" dataType="0005" lowLimit="1" highLimit="1" accessType="ro" defaultValue="2" PDOmapping="no" />
            <CANopenSubObject subIndex="01" name="PDOMapEntry" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_1a0201" />
            <CANopenSubObject subIndex="02" name="Transmit PDO Mapping Parameter 2_sub2" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_1a0202" />
          </CANopenObject>
          <CANopenObject index="1A03" name="Transmit PDO Mapping Parameter 3" objectType="9" subNumber="3">
            <CANopenSubObject subIndex="00" name="NrOfEntries" objectType="7" dataType="0005" lowLimit="3" highLimit="3" accessType="ro" defaultValue="2" PDOmapping="no" />
            <CANopenSubObject subIndex="01" name="PDOMapEntry" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_1a0301" />
            <CANopenSubObject subIndex="02" name="PDOMapEntry" objectType="7" dataType="0007" PDOmapping="no" uniqueIDRef="UID_PARAM_1a0302" />
          </CANopenObject>
          <CANopenObject index="6001" name="Temp Sensors" objectType="8" subNumber="7">
            <CANopenSubObject subIndex="00" name="Number of Items" objectType="7" dataType="0006" lowLimit="0" highLimit="494967295" accessType="ro" defaultValue="6" PDOmapping="TPDO" />
            <CANopenSubObject subIndex="01" name="Temp Sensors_sub1" objectType="7" dataType="0006" PDOmapping="TPDO" uniqueIDRef="UID_PARAM_600101" />
            <CANopenSubObject subIndex="02" name="Temp Sensors_sub2" objectType="7" dataType="0006" PDOmapping="TPDO" uniqueIDRef="UID_PARAM_600102" />
            <CANopenSubObject subIndex="03" name="Temp Sensors_sub3" objectType="7" dataType="0006" PDOmapping="TPDO" uniqueIDRef="UID_PARAM_600103" />
            <CANopenSubObject subIndex="04" name="Temp Sensors_sub4" objectType="7" dataType="0006" PDOmapping="TPDO" uniqueIDRef="UID_PARAM_600104" />
            <CANopenSubObject subIndex="05" name="Temp Sensors_sub5" objectType="7" dataType="0006" PDOmapping="TPDO" uniqueIDRef="UID_PARAM_600105" />
            <CANopenSubObject subIndex="06" name="Temp Sensors_sub6" objectType="7" dataType="0006" PDOmapping="TPDO" uniqueIDRef="UID_PARAM_600106" />
          </CANopenObject>
          <CANopenObject index="6002" name="Flow Sensor" objectType="8" subNumber="3">
            <CANopenSubObject subIndex="00" name="Number of Items" objectType="7" dataType="0006" lowLimit="0" highLimit="494967295" accessType="ro" defaultValue="2" PDOmapping="TPDO" />
            <CANopenSubObject subIndex="01" name="Flow Sensor 1" objectType="7" dataType="0005" PDOmapping="TPDO" uniqueIDRef="UID_PARAM_600201" />
            <CANopenSubObject subIndex="02" name="Flow Sensor 2" objectType="7" dataType="0005" PDOmapping="TPDO" uniqueIDRef="UID_PARAM_600202" />
          </CANopenObject>
          <CANopenObject index="6003" name="PWM Signals" objectType="8" subNumber="3">
            <CANopenSubObject subIndex="00" name="Number of Items" objectType="7" dataType="0005" lowLimit="0" highLimit="494967295" accessType="ro" defaultValue="2" PDOmapping="TPDO" />
            <CANopenSubObject subIndex="01" name="PWM Signals 1" objectType="7" dataType="0005" PDOmapping="TPDO" uniqueIDRef="UID_PARAM_600301" />
            <CANopenSubObject subIndex="02" name="PWM Signals 2" objectType="7" dataType="0005" PDOmapping="TPDO" uniqueIDRef="UID_PARAM_600302" />
          </CANopenObject>
        </CANopenObjectList>
        <dummyUsage>
          <dummy entry="Dummy0001=0" />
          <dummy entry="Dummy0002=0" />
          <dummy entry="Dummy0003=0" />
          <dummy entry="Dummy0004=0" />
          <dummy entry="Dummy0005=0" />
          <dummy entry="Dummy0006=0" />
          <dummy entry="Dummy0007=0" />
        </dummyUsage>
      </ApplicationLayers>
      <TransportLayers>
        <PhysicalLayer>
          <baudRate>
            <supportedBaudRate value="500 Kbps" />
          </baudRate>
        </PhysicalLayer>
      </TransportLayers>
      <NetworkManagement>
        <CANopenGeneralFeatures groupMessaging="false" dynamicChannels="0" selfStartingDevice="false" SDORequestingDevice="false" granularity="8" nrOfRxPDO="0" nrOfTxPDO="2" bootUpSlave="false" layerSettingServiceSlave="false" />
        <CANopenMasterFeatures bootUpMaster="false" flyingMaster="false" SDOManager="false" configurationManager="false" layerSettingServiceMaster="false" />
        <deviceCommissioning nodeID="0" nodeName="" actualBaudRate="125" networkNumber="0" networkName="" CANopenManager="false" />
      </NetworkManagement>
    </ProfileBody>
  </ISO15745Profile>
</ISO15745ProfileContainer>
