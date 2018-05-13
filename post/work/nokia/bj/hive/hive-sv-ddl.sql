USE RESULT;

DROP TABLE IF EXISTS F_VOLTE_SIP_SV_TERMINAL_H;
DROP TABLE IF EXISTS F_VOLTE_SIP_SV_CITY_AREA_VD_H;
DROP TABLE IF EXISTS F_VOLTE_SIP_SV_CITY_VD_H;
DROP TABLE IF EXISTS F_VOLTE_SIP_SV_CITY_AREA_H;
DROP TABLE IF EXISTS F_VOLTE_SIP_SV_CITY_H;
DROP TABLE IF EXISTS F_VOLTE_SIP_SV_PROV_AREA_VD_H;
DROP TABLE IF EXISTS F_VOLTE_SIP_SV_PROV_VD_H;
DROP TABLE IF EXISTS F_VOLTE_SIP_SV_PROV_AREA_H;
DROP TABLE IF EXISTS F_VOLTE_SIP_SV_PROV_H;
DROP TABLE IF EXISTS F_VOLTE_SIP_SV_NAT_AREA_VD_H;
DROP TABLE IF EXISTS F_VOLTE_SIP_SV_NAT_VD_H;
DROP TABLE IF EXISTS F_VOLTE_SIP_SV_NAT_AREA_H;
DROP TABLE IF EXISTS F_VOLTE_SIP_SV_NAT_H;

CREATE EXTERNAL TABLE IF NOT EXISTS F_VOLTE_SIP_SV_TERMINAL_H(
    phour STRING,
    province STRING,
    scity STRING,
    srvcc_attempt bigint,
    srvcc_resp_fail bigint,
    srvcc_resp_succ bigint,
    srvcc_resp_latency_all bigint,
    srvcc_comp_succ bigint,
    srvcc_comp_fail bigint,
    srvcc_comp_latency_all bigint,
    srvcc_media_latency_all bigint
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';

CREATE EXTERNAL TABLE IF NOT EXISTS F_VOLTE_SIP_SV_CITY_AREA_VD_H(
    phour STRING,
    province STRING,
    scity STRING,
    area STRING,
    vendor STRING,
    srvcc_attempt bigint,
    srvcc_resp_fail bigint,
    srvcc_resp_succ bigint,
    srvcc_resp_latency_all bigint,
    srvcc_comp_succ bigint,
    srvcc_comp_fail bigint,
    srvcc_comp_latency_all bigint,
    srvcc_media_latency_all bigint
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';

CREATE EXTERNAL TABLE IF NOT EXISTS F_VOLTE_SIP_SV_CITY_VD_H(
    phour STRING,
    province STRING,
    scity STRING,
    vendor STRING,
    srvcc_attempt bigint,
    srvcc_resp_fail bigint,
    srvcc_resp_succ bigint,
    srvcc_resp_latency_all bigint,
    srvcc_comp_succ bigint,
    srvcc_comp_fail bigint,
    srvcc_comp_latency_all bigint,
    srvcc_media_latency_all bigint
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';

CREATE EXTERNAL TABLE IF NOT EXISTS F_VOLTE_SIP_SV_CITY_AREA_H(
    phour STRING,
    province STRING,
    scity STRING,
    area STRING,
    srvcc_attempt bigint,
    srvcc_resp_fail bigint,
    srvcc_resp_succ bigint,
    srvcc_resp_latency_all bigint,
    srvcc_comp_succ bigint,
    srvcc_comp_fail bigint,
    srvcc_comp_latency_all bigint,
    srvcc_media_latency_all bigint
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';

CREATE EXTERNAL TABLE IF NOT EXISTS F_VOLTE_SIP_SV_CITY_H(
    phour STRING,
    province STRING,
    scity STRING,
    srvcc_attempt bigint,
    srvcc_resp_fail bigint,
    srvcc_resp_succ bigint,
    srvcc_resp_latency_all bigint,
    srvcc_comp_succ bigint,
    srvcc_comp_fail bigint,
    srvcc_comp_latency_all bigint,
    srvcc_media_latency_all bigint
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';

CREATE EXTERNAL TABLE IF NOT EXISTS F_VOLTE_SIP_SV_PROV_AREA_VD_H(
    phour STRING,
    province STRING,
    area STRING,
    vendor STRING,
    srvcc_attempt bigint,
    srvcc_resp_fail bigint,
    srvcc_resp_succ bigint,
    srvcc_resp_latency_all bigint,
    srvcc_comp_succ bigint,
    srvcc_comp_fail bigint,
    srvcc_comp_latency_all bigint,
    srvcc_media_latency_all bigint
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';

CREATE EXTERNAL TABLE IF NOT EXISTS F_VOLTE_SIP_SV_PROV_VD_H(
    phour STRING,
    province STRING,
    vendor STRING,
    srvcc_attempt bigint,
    srvcc_resp_fail bigint,
    srvcc_resp_succ bigint,
    srvcc_resp_latency_all bigint,
    srvcc_comp_succ bigint,
    srvcc_comp_fail bigint,
    srvcc_comp_latency_all bigint,
    srvcc_media_latency_all bigint
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';

CREATE EXTERNAL TABLE IF NOT EXISTS F_VOLTE_SIP_SV_PROV_AREA_H(
    phour STRING,
    province STRING,
    area STRING,
    srvcc_attempt bigint,
    srvcc_resp_fail bigint,
    srvcc_resp_succ bigint,
    srvcc_resp_latency_all bigint,
    srvcc_comp_succ bigint,
    srvcc_comp_fail bigint,
    srvcc_comp_latency_all bigint,
    srvcc_media_latency_all bigint
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';

CREATE EXTERNAL TABLE IF NOT EXISTS F_VOLTE_SIP_SV_PROV_H(
    phour STRING,
    province STRING,
    srvcc_attempt bigint,
    srvcc_resp_fail bigint,
    srvcc_resp_succ bigint,
    srvcc_resp_latency_all bigint,
    srvcc_comp_succ bigint,
    srvcc_comp_fail bigint,
    srvcc_comp_latency_all bigint,
    srvcc_media_latency_all bigint
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';

CREATE EXTERNAL TABLE IF NOT EXISTS F_VOLTE_SIP_SV_NAT_AREA_VD_H(
    phour STRING,
    area STRING,
    vendor STRING,
    srvcc_attempt bigint,
    srvcc_resp_fail bigint,
    srvcc_resp_succ bigint,
    srvcc_resp_latency_all bigint,
    srvcc_comp_succ bigint,
    srvcc_comp_fail bigint,
    srvcc_comp_latency_all bigint,
    srvcc_media_latency_all bigint
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';
CREATE EXTERNAL TABLE IF NOT EXISTS F_VOLTE_SIP_SV_NAT_VD_H(
    phour STRING,
    vendor STRING,
    srvcc_attempt bigint,
    srvcc_resp_fail bigint,
    srvcc_resp_succ bigint,
    srvcc_resp_latency_all bigint,
    srvcc_comp_succ bigint,
    srvcc_comp_fail bigint,
    srvcc_comp_latency_all bigint,
    srvcc_media_latency_all bigint
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';

CREATE EXTERNAL TABLE IF NOT EXISTS F_VOLTE_SIP_SV_NAT_AREA_H(
    phour STRING,
    area STRING,
    terminal STRING,
    srvcc_attempt bigint,
    srvcc_resp_fail bigint,
    srvcc_resp_succ bigint,
    srvcc_resp_latency_all bigint,
    srvcc_comp_succ bigint,
    srvcc_comp_fail bigint,
    srvcc_comp_latency_all bigint,
    srvcc_media_latency_all bigint
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';

CREATE EXTERNAL TABLE IF NOT EXISTS F_VOLTE_SIP_SV_NAT_H(
    phour STRING,
    srvcc_attempt bigint,
    srvcc_resp_fail bigint,
    srvcc_resp_succ bigint,
    srvcc_resp_latency_all bigint,
    srvcc_comp_succ bigint,
    srvcc_comp_fail bigint,
    srvcc_comp_latency_all bigint,
    srvcc_media_latency_all bigint
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';
