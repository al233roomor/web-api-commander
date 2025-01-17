# This file was autogenerated on: 20211212171220893
Feature: InternetTracking

  Background:
    Given a RESOScript or Metadata file are provided
    When a RESOScript file is provided
    Then Client Settings and Parameters can be read from the RESOScript
    And a test container was successfully created from the given RESOScript file
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server
    When a metadata file is provided
    Then a test container was successfully created from the given metadata file
    And valid metadata are loaded into the test container

  @InternetTracking
  Scenario: ActorCity
    When "ActorCity" exists in the "InternetTracking" metadata
    Then "ActorCity" MUST be "String" data type
    And "ActorCity" length SHOULD be equal to the RESO Suggested Max Length of 50

  @InternetTracking
  Scenario: ActorEmail
    When "ActorEmail" exists in the "InternetTracking" metadata
    Then "ActorEmail" MUST be "String" data type
    And "ActorEmail" length SHOULD be equal to the RESO Suggested Max Length of 80

  @InternetTracking
  Scenario: ActorID
    When "ActorID" exists in the "InternetTracking" metadata
    Then "ActorID" MUST be "String" data type
    And "ActorID" length SHOULD be equal to the RESO Suggested Max Length of 25

  @InternetTracking
  Scenario: ActorIP
    When "ActorIP" exists in the "InternetTracking" metadata
    Then "ActorIP" MUST be "String" data type
    And "ActorIP" length SHOULD be equal to the RESO Suggested Max Length of 39

  @InternetTracking
  Scenario: ActorKey
    When "ActorKey" exists in the "InternetTracking" metadata
    Then "ActorKey" MUST be "String" data type
    And "ActorKey" length SHOULD be equal to the RESO Suggested Max Length of 255

  @InternetTracking
  Scenario: ActorKeyNumeric
    When "ActorKeyNumeric" exists in the "InternetTracking" metadata
    Then "ActorKeyNumeric" MUST be "Integer" data type

  @InternetTracking
  Scenario: ActorLatitude
    When "ActorLatitude" exists in the "InternetTracking" metadata
    Then "ActorLatitude" MUST be "Decimal" data type
    And "ActorLatitude" precision SHOULD be equal to the RESO Suggested Max Precision of 12
    And "ActorLatitude" scale SHOULD be equal to the RESO Suggested Max Scale of 8

  @InternetTracking
  Scenario: ActorLongitude
    When "ActorLongitude" exists in the "InternetTracking" metadata
    Then "ActorLongitude" MUST be "Decimal" data type
    And "ActorLongitude" precision SHOULD be equal to the RESO Suggested Max Precision of 12
    And "ActorLongitude" scale SHOULD be equal to the RESO Suggested Max Scale of 8

  @InternetTracking
  Scenario: ActorOriginatingSystemID
    When "ActorOriginatingSystemID" exists in the "InternetTracking" metadata
    Then "ActorOriginatingSystemID" MUST be "String" data type
    And "ActorOriginatingSystemID" length SHOULD be equal to the RESO Suggested Max Length of 25

  @InternetTracking
  Scenario: ActorOriginatingSystemName
    When "ActorOriginatingSystemName" exists in the "InternetTracking" metadata
    Then "ActorOriginatingSystemName" MUST be "String" data type
    And "ActorOriginatingSystemName" length SHOULD be equal to the RESO Suggested Max Length of 255

  @InternetTracking
  Scenario: ActorPhone
    When "ActorPhone" exists in the "InternetTracking" metadata
    Then "ActorPhone" MUST be "String" data type
    And "ActorPhone" length SHOULD be equal to the RESO Suggested Max Length of 16

  @InternetTracking
  Scenario: ActorPhoneExt
    When "ActorPhoneExt" exists in the "InternetTracking" metadata
    Then "ActorPhoneExt" MUST be "String" data type
    And "ActorPhoneExt" length SHOULD be equal to the RESO Suggested Max Length of 10

  @InternetTracking
  Scenario: ActorPostalCode
    When "ActorPostalCode" exists in the "InternetTracking" metadata
    Then "ActorPostalCode" MUST be "String" data type
    And "ActorPostalCode" length SHOULD be equal to the RESO Suggested Max Length of 10

  @InternetTracking
  Scenario: ActorPostalCodePlus4
    When "ActorPostalCodePlus4" exists in the "InternetTracking" metadata
    Then "ActorPostalCodePlus4" MUST be "String" data type
    And "ActorPostalCodePlus4" length SHOULD be equal to the RESO Suggested Max Length of 4

  @InternetTracking
  Scenario: ActorRegion
    When "ActorRegion" exists in the "InternetTracking" metadata
    Then "ActorRegion" MUST be "String" data type
    And "ActorRegion" length SHOULD be equal to the RESO Suggested Max Length of 150

  @InternetTracking
  Scenario: ActorSourceSystemID
    When "ActorSourceSystemID" exists in the "InternetTracking" metadata
    Then "ActorSourceSystemID" MUST be "String" data type
    And "ActorSourceSystemID" length SHOULD be equal to the RESO Suggested Max Length of 25

  @InternetTracking
  Scenario: ActorSourceSystemName
    When "ActorSourceSystemName" exists in the "InternetTracking" metadata
    Then "ActorSourceSystemName" MUST be "String" data type
    And "ActorSourceSystemName" length SHOULD be equal to the RESO Suggested Max Length of 255

  @InternetTracking
  Scenario: ActorStateOrProvince
    When "ActorStateOrProvince" exists in the "InternetTracking" metadata
    Then "ActorStateOrProvince" MUST be "Single Enumeration" data type

  @InternetTracking
  Scenario: ActorType
    When "ActorType" exists in the "InternetTracking" metadata
    Then "ActorType" MUST be "Single Enumeration" data type

  @InternetTracking
  Scenario: ColorDepth
    When "ColorDepth" exists in the "InternetTracking" metadata
    Then "ColorDepth" MUST be "Integer" data type

  @InternetTracking
  Scenario: DeviceType
    When "DeviceType" exists in the "InternetTracking" metadata
    Then "DeviceType" MUST be "Single Enumeration" data type

  @InternetTracking
  Scenario: EventDescription
    When "EventDescription" exists in the "InternetTracking" metadata
    Then "EventDescription" MUST be "String" data type
    And "EventDescription" length SHOULD be equal to the RESO Suggested Max Length of 1024

  @InternetTracking
  Scenario: EventKey
    When "EventKey" exists in the "InternetTracking" metadata
    Then "EventKey" MUST be "String" data type
    And "EventKey" length SHOULD be equal to the RESO Suggested Max Length of 255

  @InternetTracking
  Scenario: EventKeyNumeric
    When "EventKeyNumeric" exists in the "InternetTracking" metadata
    Then "EventKeyNumeric" MUST be "Integer" data type

  @InternetTracking
  Scenario: EventLabel
    When "EventLabel" exists in the "InternetTracking" metadata
    Then "EventLabel" MUST be "String" data type
    And "EventLabel" length SHOULD be equal to the RESO Suggested Max Length of 50

  @InternetTracking
  Scenario: EventOriginatingSystemID
    When "EventOriginatingSystemID" exists in the "InternetTracking" metadata
    Then "EventOriginatingSystemID" MUST be "String" data type
    And "EventOriginatingSystemID" length SHOULD be equal to the RESO Suggested Max Length of 25

  @InternetTracking
  Scenario: EventOriginatingSystemName
    When "EventOriginatingSystemName" exists in the "InternetTracking" metadata
    Then "EventOriginatingSystemName" MUST be "String" data type
    And "EventOriginatingSystemName" length SHOULD be equal to the RESO Suggested Max Length of 255

  @InternetTracking
  Scenario: EventSourceSystemID
    When "EventSourceSystemID" exists in the "InternetTracking" metadata
    Then "EventSourceSystemID" MUST be "String" data type
    And "EventSourceSystemID" length SHOULD be equal to the RESO Suggested Max Length of 25

  @InternetTracking
  Scenario: EventSourceSystemName
    When "EventSourceSystemName" exists in the "InternetTracking" metadata
    Then "EventSourceSystemName" MUST be "String" data type
    And "EventSourceSystemName" length SHOULD be equal to the RESO Suggested Max Length of 255

  @InternetTracking
  Scenario: EventTarget
    When "EventTarget" exists in the "InternetTracking" metadata
    Then "EventTarget" MUST be "Single Enumeration" data type

  @InternetTracking
  Scenario: EventTimestamp
    When "EventTimestamp" exists in the "InternetTracking" metadata
    Then "EventTimestamp" MUST be "Timestamp" data type

  @InternetTracking
  Scenario: EventType
    When "EventType" exists in the "InternetTracking" metadata
    Then "EventType" MUST be "Single Enumeration" data type

  @InternetTracking
  Scenario: ObjectID
    When "ObjectID" exists in the "InternetTracking" metadata
    Then "ObjectID" MUST be "String" data type
    And "ObjectID" length SHOULD be equal to the RESO Suggested Max Length of 255

  @InternetTracking
  Scenario: ObjectIdType
    When "ObjectIdType" exists in the "InternetTracking" metadata
    Then "ObjectIdType" MUST be "Single Enumeration" data type

  @InternetTracking
  Scenario: ObjectKey
    When "ObjectKey" exists in the "InternetTracking" metadata
    Then "ObjectKey" MUST be "String" data type
    And "ObjectKey" length SHOULD be equal to the RESO Suggested Max Length of 255

  @InternetTracking
  Scenario: ObjectKeyNumeric
    When "ObjectKeyNumeric" exists in the "InternetTracking" metadata
    Then "ObjectKeyNumeric" MUST be "Integer" data type

  @InternetTracking
  Scenario: ObjectOriginatingSystemID
    When "ObjectOriginatingSystemID" exists in the "InternetTracking" metadata
    Then "ObjectOriginatingSystemID" MUST be "String" data type
    And "ObjectOriginatingSystemID" length SHOULD be equal to the RESO Suggested Max Length of 25

  @InternetTracking
  Scenario: ObjectOriginatingSystemName
    When "ObjectOriginatingSystemName" exists in the "InternetTracking" metadata
    Then "ObjectOriginatingSystemName" MUST be "String" data type
    And "ObjectOriginatingSystemName" length SHOULD be equal to the RESO Suggested Max Length of 255

  @InternetTracking
  Scenario: ObjectSourceSystemID
    When "ObjectSourceSystemID" exists in the "InternetTracking" metadata
    Then "ObjectSourceSystemID" MUST be "String" data type
    And "ObjectSourceSystemID" length SHOULD be equal to the RESO Suggested Max Length of 25

  @InternetTracking
  Scenario: ObjectSourceSystemName
    When "ObjectSourceSystemName" exists in the "InternetTracking" metadata
    Then "ObjectSourceSystemName" MUST be "String" data type
    And "ObjectSourceSystemName" length SHOULD be equal to the RESO Suggested Max Length of 255

  @InternetTracking
  Scenario: ObjectType
    When "ObjectType" exists in the "InternetTracking" metadata
    Then "ObjectType" MUST be "Single Enumeration" data type

  @InternetTracking
  Scenario: ObjectURL
    When "ObjectURL" exists in the "InternetTracking" metadata
    Then "ObjectURL" MUST be "String" data type
    And "ObjectURL" length SHOULD be equal to the RESO Suggested Max Length of 8000

  @InternetTracking
  Scenario: OriginatingSystemActorKey
    When "OriginatingSystemActorKey" exists in the "InternetTracking" metadata
    Then "OriginatingSystemActorKey" MUST be "String" data type
    And "OriginatingSystemActorKey" length SHOULD be equal to the RESO Suggested Max Length of 255

  @InternetTracking
  Scenario: OriginatingSystemEventKey
    When "OriginatingSystemEventKey" exists in the "InternetTracking" metadata
    Then "OriginatingSystemEventKey" MUST be "String" data type
    And "OriginatingSystemEventKey" length SHOULD be equal to the RESO Suggested Max Length of 255

  @InternetTracking
  Scenario: OriginatingSystemObjectKey
    When "OriginatingSystemObjectKey" exists in the "InternetTracking" metadata
    Then "OriginatingSystemObjectKey" MUST be "String" data type
    And "OriginatingSystemObjectKey" length SHOULD be equal to the RESO Suggested Max Length of 255

  @InternetTracking
  Scenario: ReferringURL
    When "ReferringURL" exists in the "InternetTracking" metadata
    Then "ReferringURL" MUST be "String" data type
    And "ReferringURL" length SHOULD be equal to the RESO Suggested Max Length of 8000

  @InternetTracking
  Scenario: ScreenHeight
    When "ScreenHeight" exists in the "InternetTracking" metadata
    Then "ScreenHeight" MUST be "Integer" data type

  @InternetTracking
  Scenario: ScreenWidth
    When "ScreenWidth" exists in the "InternetTracking" metadata
    Then "ScreenWidth" MUST be "Integer" data type

  @InternetTracking
  Scenario: SessionID
    When "SessionID" exists in the "InternetTracking" metadata
    Then "SessionID" MUST be "String" data type
    And "SessionID" length SHOULD be equal to the RESO Suggested Max Length of 255

  @InternetTracking
  Scenario: SourceSystemActorKey
    When "SourceSystemActorKey" exists in the "InternetTracking" metadata
    Then "SourceSystemActorKey" MUST be "String" data type
    And "SourceSystemActorKey" length SHOULD be equal to the RESO Suggested Max Length of 255

  @InternetTracking
  Scenario: SourceSystemEventKey
    When "SourceSystemEventKey" exists in the "InternetTracking" metadata
    Then "SourceSystemEventKey" MUST be "String" data type
    And "SourceSystemEventKey" length SHOULD be equal to the RESO Suggested Max Length of 255

  @InternetTracking
  Scenario: SourceSystemObjectKey
    When "SourceSystemObjectKey" exists in the "InternetTracking" metadata
    Then "SourceSystemObjectKey" MUST be "String" data type
    And "SourceSystemObjectKey" length SHOULD be equal to the RESO Suggested Max Length of 255

  @InternetTracking
  Scenario: TimeZoneOffset
    When "TimeZoneOffset" exists in the "InternetTracking" metadata
    Then "TimeZoneOffset" MUST be "Integer" data type

  @InternetTracking
  Scenario: UserAgent
    When "UserAgent" exists in the "InternetTracking" metadata
    Then "UserAgent" MUST be "String" data type
    And "UserAgent" length SHOULD be equal to the RESO Suggested Max Length of 255
