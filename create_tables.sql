create table access_area(
 AREA_ID        INTEGER(10),
 AREA_CODE              VARCHAR(256),
 AREA_NAME              VARCHAR(256),
 AREA_CATEGORY          INTEGER);

create table antenna(
 ANTENNA_ID        VARCHAR(31),
 GAIN                   NUMERIC,
 FRONT_TO_BACK          NUMERIC,
 H_BEAMWIDTH            NUMERIC,
 V_BEAMWIDTH            NUMERIC,
 BAND_MIN_FREQ          NUMERIC,
 BAND_MIN_FREQ_UNIT     VARCHAR(3),
 BAND_MAX_FREQ          NUMERIC,
 BAND_MAX_FREQ_UNIT     VARCHAR(3),
 ANTENNA_SIZE           NUMERIC,
 ANTENNA_TYPE           VARCHAR(240),
 MODEL                  VARCHAR(80),
 MANUFACTURER           VARCHAR(255));

create table antenna_pattern(
 ANTENNA_ID        VARCHAR(31),
 AZ_TYPE                VARCHAR(15),
 ANGLE_REF              NUMERIC,
 ANGLE                  NUMERIC,
 ATTENUATION            NUMERIC);

create table antenna_polarity(
 POLARISATION_CODE    VARCHAR(3),
 POLARISATION_TEXT      VARCHAR(50));

create table applic_text_block(
 APTB_ID        NUMERIC,
 APTB_TABLE_PREFIX    VARCHAR(30),
 APTB_TABLE_ID          NUMERIC(10),
 LICENCE_NO             VARCHAR(63),
 APTB_DESCRIPTION       VARCHAR(255),
 APTB_CATEGORY          VARCHAR(255),
 APTB_TEXT              VARCHAR(4000),
 APTB_ITEM              VARCHAR(15));

create table auth_spectrum_area(
 LICENCE_NO          VARCHAR(63),
 AREA_CODE              VARCHAR(256),
 AREA_NAME              VARCHAR(256),
 AREA_DESCRIPTION       CLOB);

create table auth_spectrum_freq(
 LICENCE_NO        VARCHAR(63),
 AREA_CODE              VARCHAR(256),
 AREA_NAME              VARCHAR(256),
 LW_FREQUENCY_START     NUMERIC,
 LW_FREQUENCY_END       NUMERIC,
 UP_FREQUENCY_START     NUMERIC,
 UP_FREQUENCY_END       NUMERIC);

create table bsl(
 BSL_NO                 VARCHAR(31),
 MEDIUM_CATEGORY        VARCHAR(4000),
 REGION_CATEGORY        VARCHAR(4000),
 COMMUNITY_INTEREST     VARCHAR(4000),
 BSL_STATE              VARCHAR(4000),
 DATE_COMMENCED         DATE,
 ON_AIR_ID              VARCHAR(511),
 CALL_SIGN              VARCHAR(255),
 IBL_TARGET_AREA        VARCHAR(511),
 AREA_CODE              VARCHAR(256),
 REFERENCE              VARCHAR(63)
);

create table bsl_area(
 AREA_CODE        VARCHAR(256),
 AREA_NAME        VARCHAR(256)
);

create table class_of_station(
 CODE            VARCHAR(31),
 DESCRIPTION            VARCHAR(511));

create table client(
 CLIENT_NO        NUMERIC,
 LICENCEE               VARCHAR(201),
 TRADING_NAME           VARCHAR(100),
 ACN                    VARCHAR(100),
 ABN                    VARCHAR(14),
 POSTAL_STREET          VARCHAR(600),
 POSTAL_SUBURB          VARCHAR(480),
 POSTAL_STATE           VARCHAR(36),
 POSTAL_POSTCODE        VARCHAR(72),
 CAT_ID                 NUMERIC,
 CLIENT_TYPE_ID         NUMERIC,
 FEE_STATUS_ID          NUMERIC);

create table client_type(
 TYPE_ID        NUMERIC,
 NAME                   VARCHAR(240));

create table device_details(
 SDD_ID                   NUMERIC(10),
 LICENCE_NO                             VARCHAR(63),
 DEVICE_REGISTRATION_IDENTIFIER         VARCHAR(63),
 FORMER_DEVICE_IDENTIFIER               VARCHAR(63),
 AUTHORISATION_DATE                     DATE,
 CERTIFICATION_METHOD                   VARCHAR(255),
 GROUP_FLAG                             VARCHAR(255),
 SITE_RADIUS                            NUMERIC,
 FREQUENCY                              NUMERIC,
 BANDWIDTH                              NUMERIC,
 CARRIER_FREQ                           NUMERIC,
 EMISSION                               VARCHAR(63),
 DEVICE_TYPE                            VARCHAR(1),
 TRANSMITTER_POWER                      NUMERIC,
 TRANSMITTER_POWER_UNIT                 VARCHAR(31),
 SITE_ID                                VARCHAR(31),
 ANTENNA_ID                             VARCHAR(31),
 POLARISATION                           VARCHAR(3),
 AZIMUTH                                NUMERIC,
 HEIGHT                                 NUMERIC,
 TILT                                   NUMERIC,
 FEEDER_LOSS                            NUMERIC,
 LEVEL_OF_PROTECTION                    NUMERIC,
 EIRP                                   NUMERIC,
 EIRP_UNIT                              VARCHAR(31),
 SV_ID                                  NUMERIC(10),
 SS_ID                                  NUMERIC(10),
 EFL_ID                                 VARCHAR(40),
 EFL_FREQ_IDENT                         VARCHAR(31),
 EFL_SYSTEM                             VARCHAR(63),
 LEQD_MODE                              VARCHAR(1),
 RECEIVER_THRESHOLD                     NUMERIC,
 AREA_AREA_ID                           NUMERIC(10),
 CALL_SIGN                              VARCHAR(255),
 AREA_DESCRIPTION                       VARCHAR(9),
 AP_ID                                  NUMERIC(10),
 CLASS_OF_STATION_CODE                  VARCHAR(31),
 SUPPLIMENTAL_FLAG                      VARCHAR(199),
 EQ_FREQ_RANGE_MIN                      NUMERIC,
 EQ_FREQ_RANGE_MAX                      NUMERIC,
 NATURE_OF_SERVICE_ID                   VARCHAR(3),
 HOURS_OF_OPERATION                     VARCHAR(11),
 SA_ID                                  NUMERIC(10),
 RELATED_EFL_ID                         NUMERIC,
 EQP_ID                                 NUMERIC(10),
 ANTENNA_MULTI_MODE                     VARCHAR(3),
 POWER_IND                              VARCHAR(14),
 LPON_CENTER_LONGITUDE                  NUMERIC,
 LPON_CENTER_LATITUDE                   NUMERIC,
 TCS_ID                                 NUMERIC(10),
 TECH_SPEC_ID                           VARCHAR(63),
 DROPTHROUGH_ID                         VARCHAR(63),
 STATION_TYPE                           VARCHAR(511),
 STATION_NAME                           VARCHAR(63));

create table fee_status(
 FEE_STATUS_ID        NUMERIC,
 FEE_STATUS_TEXT        VARCHAR(100));

create table industry_cat(
 CAT_ID            NUMERIC,
 DESCRIPTION            VARCHAR(240),
 NAME                   VARCHAR(120));

create table licence(
 LICENCE_NO        VARCHAR(63),
 CLIENT_NO              NUMERIC,
 SV_ID                  NUMERIC(10),
 SS_ID                  NUMERIC(10),
 LICENCE_TYPE_NAME      VARCHAR(63),
 LICENCE_CATEGORY_NAME  VARCHAR(95),
 DATE_ISSUED            DATE,
 DATE_OF_EFFECT         DATE,
 DATE_OF_EXPIRY         DATE,
 STATUS                 VARCHAR(10),
 STATUS_TEXT            VARCHAR(256),
 AP_ID                  NUMERIC(10),
 AP_PRJ_IDENT           VARCHAR(511),
 SHIP_NAME              VARCHAR(255),
 BSL_NO                 VARCHAR(31));

create table licence_service(
 SV_ID            NUMERIC(10),
 SV_NAME                VARCHAR(63));

create table licence_status(
 STATUS            VARCHAR(10),
 STATUS_TEXT            VARCHAR(511));

create table licence_subservice(
 SS_ID            NUMERIC(10),
 SV_SV_ID               NUMERIC(10),
 SS_NAME                VARCHAR(95));

create table licensing_area(
 LICENSING_AREA_ID    VARCHAR(31),
 DESCRIPTION            VARCHAR(511));

create table nature_of_service(
 CODE            VARCHAR(31),
 DESCRIPTION            VARCHAR(511));

create table reports_text_block(
 RTB_ITEM        VARCHAR(15),
 RTB_CATEGORY           VARCHAR(255),
 RTB_DESCRIPTION        VARCHAR(255),
 RTB_START_DATE         DATE,
 RTB_END_DATE           DATE,
 RTB_TEXT               VARCHAR(4000));

create table satellite(
 SA_ID            NUMERIC(10),
 SA_SAT_NAME            VARCHAR(31),
 SA_SAT_LONG_NOM        NUMERIC,
 SA_SAT_INCEXC          NUMERIC,
 SA_SAT_GEO_POS         VARCHAR(1),
 SA_SAT_MERIT_G_T       NUMERIC);

create table site(
 SITE_ID        VARCHAR(31),
 LATITUDE               NUMERIC,
 LONGITUDE              NUMERIC,
 NAME                   VARCHAR(767),
 STATE                  VARCHAR(80),
 LICENSING_AREA_ID      NUMERIC,
 POSTCODE               VARCHAR(18),
 SITE_PRECISION         VARCHAR(31),
 ELEVATION              NUMERIC,
 HCIS_L2        VARCHAR(31));


.mode csv
.import spectra/access_area.csv access_area 
.import spectra/antenna.csv antenna 
.import spectra/antenna_pattern.csv antenna_pattern 
.import spectra/antenna_polarity.csv antenna_polarity 
.import spectra/applic_text_block.csv applic_text_block 
.import spectra/auth_spectrum_area.csv auth_spectrum_area 
.import spectra/auth_spectrum_freq.csv auth_spectrum_freq 
.import spectra/bsl.csv bsl 
.import spectra/bsl_area.csv bsl_area 
.import spectra/class_of_station.csv class_of_station 
.import spectra/client.csv client 
.import spectra/client_type.csv client_type 
.import spectra/device_details.csv device_details 
.import spectra/fee_status.csv fee_status 
.import spectra/industry_cat.csv industry_cat 
.import spectra/licence.csv licence 
.import spectra/licence_service.csv licence_service 
.import spectra/licence_status.csv licence_status 
.import spectra/licence_subservice.csv licence_subservice 
.import spectra/licensing_area.csv licensing_area 
.import spectra/nature_of_service.csv nature_of_service 
.import spectra/reports_text_block.csv reports_text_block 
.import spectra/satellite.csv satellite 
.import spectra/site.csv site 
