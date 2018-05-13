USE result;

DROP TABLE IF EXISTS F_V_BXDR_DROP_ALL_H;
DROP TABLE IF EXISTS F_V_BXDR_DROP_PROV_CITY_CI_H;
DROP TABLE IF EXISTS F_V_BXDR_DROP_TERMINAL_H;
DROP TABLE IF EXISTS F_V_BXDR_DROP_IMSI_H;
DROP TABLE IF EXISTS F_V_BXDR_DROP_CITY_AREA_VD_H;
DROP TABLE IF EXISTS F_V_BXDR_DROP_CITY_VD_H;
DROP TABLE IF EXISTS F_V_BXDR_DROP_CITY_AREA_H;
DROP TABLE IF EXISTS F_V_BXDR_DROP_CITY_H;
DROP TABLE IF EXISTS F_V_BXDR_DROP_PROV_AREA_VD_H;
DROP TABLE IF EXISTS F_V_BXDR_DROP_PROV_VD_H;
DROP TABLE IF EXISTS F_V_BXDR_DROP_PROV_AREA_H;
DROP TABLE IF EXISTS F_V_BXDR_DROP_PROV_H;
DROP TABLE IF EXISTS F_V_BXDR_DROP_NAT_AREA_VD_H;
DROP TABLE IF EXISTS F_V_BXDR_DROP_NAT_VD_H;
DROP TABLE IF EXISTS F_V_BXDR_DROP_NAT_AREA_H;
DROP TABLE IF EXISTS F_V_BXDR_DROP_NAT_H;

CREATE EXTERNAL TABLE IF NOT EXISTS F_V_BXDR_DROP_ALL_H(
    phour STRING,province STRING,scity STRING,area STRING,vendor STRING,pcrf_ip STRING,ci STRING,rx_abort_cause STRING,
    CALL_ANS_SUCC BIGINT,
    NB_VOLTE_DROP BIGINT,
    CALL_ANS_A_SUCC BIGINT,
    NB_VOLTE_DROP_A BIGINT,
    CALL_ANS_V_SUCC BIGINT,
    NB_VOLTE_DROP_V BIGINT,
    CALL_ANS_MO_SUCC BIGINT,
    CALL_ANS_A_MO_SUCC BIGINT,
    CALL_ANS_V_MO_SUCC BIGINT,
    NB_VOLTE_DROP_MO BIGINT,
    NB_VOLTE_DROP_A_MO BIGINT,
    NB_VOLTE_DROP_V_MO BIGINT,
    CALL_ANS_MT_SUCC BIGINT,
    CALL_ANS_A_MT_SUCC BIGINT,
    CALL_ANS_V_MT_SUCC BIGINT,
    NB_VOLTE_DROP_MT BIGINT,
    NB_VOLTE_DROP_A_MT BIGINT,
    NB_VOLTE_DROP_V_MT BIGINT,
    NB_ABORT_CAUSE0 BIGINT,
    NB_ABORT_CAUSE1 BIGINT,
    NB_ABORT_CAUSE2 BIGINT,
    NB_ABORT_CAUSE4 BIGINT,
    CALL_ANS_SUCC_VTV BIGINT,
    NB_VOLTE_DROP_VTV BIGINT,
    CALL_ANS_SUCC_A_VTV BIGINT,
    NB_VOLTE_DROP_A_VTV BIGINT,
    CALL_ANS_SUCC_V_VTV BIGINT,
    NB_VOLTE_DROP_V_VTV BIGINT,
    CALL_ANS_SUCC_V_VT10086 BIGINT,
    NB_VOLTE_DROP_V_VT10086 BIGINT
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';
CREATE EXTERNAL TABLE IF NOT EXISTS F_V_BXDR_DROP_PROV_CITY_CI_H(
    phour STRING,province STRING,scity STRING,ci STRING,
    CALL_ANS_SUCC BIGINT,
    NB_VOLTE_DROP BIGINT,
    CALL_ANS_A_SUCC BIGINT,
    NB_VOLTE_DROP_A BIGINT,
    CALL_ANS_V_SUCC BIGINT,
    NB_VOLTE_DROP_V BIGINT,
    CALL_ANS_MO_SUCC BIGINT,
    CALL_ANS_A_MO_SUCC BIGINT,
    CALL_ANS_V_MO_SUCC BIGINT,
    NB_VOLTE_DROP_MO BIGINT,
    NB_VOLTE_DROP_A_MO BIGINT,
    NB_VOLTE_DROP_V_MO BIGINT,
    CALL_ANS_MT_SUCC BIGINT,
    CALL_ANS_A_MT_SUCC BIGINT,
    CALL_ANS_V_MT_SUCC BIGINT,
    NB_VOLTE_DROP_MT BIGINT,
    NB_VOLTE_DROP_A_MT BIGINT,
    NB_VOLTE_DROP_V_MT BIGINT,
    NB_ABORT_CAUSE0 BIGINT,
    NB_ABORT_CAUSE1 BIGINT,
    NB_ABORT_CAUSE2 BIGINT,
    NB_ABORT_CAUSE4 BIGINT,
    CALL_ANS_SUCC_VTV BIGINT,
    NB_VOLTE_DROP_VTV BIGINT,
    CALL_ANS_SUCC_A_VTV BIGINT,
    NB_VOLTE_DROP_A_VTV BIGINT,
    CALL_ANS_SUCC_V_VTV BIGINT,
    NB_VOLTE_DROP_V_VTV BIGINT,
    CALL_ANS_SUCC_V_VT10086 BIGINT,
    NB_VOLTE_DROP_V_VT10086 BIGINT
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';
CREATE EXTERNAL TABLE IF NOT EXISTS F_V_BXDR_DROP_TERMINAL_H(
    phour STRING,province STRING,scity STRING,terminal STRING,
    CALL_ANS_SUCC BIGINT,
    NB_VOLTE_DROP BIGINT,
    CALL_ANS_A_SUCC BIGINT,
    NB_VOLTE_DROP_A BIGINT,
    CALL_ANS_V_SUCC BIGINT,
    NB_VOLTE_DROP_V BIGINT,
    CALL_ANS_MO_SUCC BIGINT,
    CALL_ANS_A_MO_SUCC BIGINT,
    CALL_ANS_V_MO_SUCC BIGINT,
    NB_VOLTE_DROP_MO BIGINT,
    NB_VOLTE_DROP_A_MO BIGINT,
    NB_VOLTE_DROP_V_MO BIGINT,
    CALL_ANS_MT_SUCC BIGINT,
    CALL_ANS_A_MT_SUCC BIGINT,
    CALL_ANS_V_MT_SUCC BIGINT,
    NB_VOLTE_DROP_MT BIGINT,
    NB_VOLTE_DROP_A_MT BIGINT,
    NB_VOLTE_DROP_V_MT BIGINT,
    NB_ABORT_CAUSE0 BIGINT,
    NB_ABORT_CAUSE1 BIGINT,
    NB_ABORT_CAUSE2 BIGINT,
    NB_ABORT_CAUSE4 BIGINT,
    CALL_ANS_SUCC_VTV BIGINT,
    NB_VOLTE_DROP_VTV BIGINT,
    CALL_ANS_SUCC_A_VTV BIGINT,
    NB_VOLTE_DROP_A_VTV BIGINT,
    CALL_ANS_SUCC_V_VTV BIGINT,
    NB_VOLTE_DROP_V_VTV BIGINT,
    CALL_ANS_SUCC_V_VT10086 BIGINT,
    NB_VOLTE_DROP_V_VT10086 BIGINT
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';
CREATE EXTERNAL TABLE IF NOT EXISTS F_V_BXDR_DROP_IMSI_H(
    phour STRING,province STRING,scity STRING,area STRING,vendor STRING,terminal STRING,imsi STRING,
    CALL_ANS_SUCC BIGINT,
    NB_VOLTE_DROP BIGINT,
    CALL_ANS_A_SUCC BIGINT,
    NB_VOLTE_DROP_A BIGINT,
    CALL_ANS_V_SUCC BIGINT,
    NB_VOLTE_DROP_V BIGINT,
    CALL_ANS_MO_SUCC BIGINT,
    CALL_ANS_A_MO_SUCC BIGINT,
    CALL_ANS_V_MO_SUCC BIGINT,
    NB_VOLTE_DROP_MO BIGINT,
    NB_VOLTE_DROP_A_MO BIGINT,
    NB_VOLTE_DROP_V_MO BIGINT,
    CALL_ANS_MT_SUCC BIGINT,
    CALL_ANS_A_MT_SUCC BIGINT,
    CALL_ANS_V_MT_SUCC BIGINT,
    NB_VOLTE_DROP_MT BIGINT,
    NB_VOLTE_DROP_A_MT BIGINT,
    NB_VOLTE_DROP_V_MT BIGINT,
    NB_ABORT_CAUSE0 BIGINT,
    NB_ABORT_CAUSE1 BIGINT,
    NB_ABORT_CAUSE2 BIGINT,
    NB_ABORT_CAUSE4 BIGINT,
    CALL_ANS_SUCC_VTV BIGINT,
    NB_VOLTE_DROP_VTV BIGINT,
    CALL_ANS_SUCC_A_VTV BIGINT,
    NB_VOLTE_DROP_A_VTV BIGINT,
    CALL_ANS_SUCC_V_VTV BIGINT,
    NB_VOLTE_DROP_V_VTV BIGINT,
    CALL_ANS_SUCC_V_VT10086 BIGINT,
    NB_VOLTE_DROP_V_VT10086 BIGINT
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';
CREATE EXTERNAL TABLE IF NOT EXISTS F_V_BXDR_DROP_CITY_AREA_VD_H(
    phour STRING,province STRING,scity STRING,area STRING,vendor STRING,
    CALL_ANS_SUCC BIGINT,
    NB_VOLTE_DROP BIGINT,
    CALL_ANS_A_SUCC BIGINT,
    NB_VOLTE_DROP_A BIGINT,
    CALL_ANS_V_SUCC BIGINT,
    NB_VOLTE_DROP_V BIGINT,
    CALL_ANS_MO_SUCC BIGINT,
    CALL_ANS_A_MO_SUCC BIGINT,
    CALL_ANS_V_MO_SUCC BIGINT,
    NB_VOLTE_DROP_MO BIGINT,
    NB_VOLTE_DROP_A_MO BIGINT,
    NB_VOLTE_DROP_V_MO BIGINT,
    CALL_ANS_MT_SUCC BIGINT,
    CALL_ANS_A_MT_SUCC BIGINT,
    CALL_ANS_V_MT_SUCC BIGINT,
    NB_VOLTE_DROP_MT BIGINT,
    NB_VOLTE_DROP_A_MT BIGINT,
    NB_VOLTE_DROP_V_MT BIGINT,
    NB_ABORT_CAUSE0 BIGINT,
    NB_ABORT_CAUSE1 BIGINT,
    NB_ABORT_CAUSE2 BIGINT,
    NB_ABORT_CAUSE4 BIGINT,
    CALL_ANS_SUCC_VTV BIGINT,
    NB_VOLTE_DROP_VTV BIGINT,
    CALL_ANS_SUCC_A_VTV BIGINT,
    NB_VOLTE_DROP_A_VTV BIGINT,
    CALL_ANS_SUCC_V_VTV BIGINT,
    NB_VOLTE_DROP_V_VTV BIGINT,
    CALL_ANS_SUCC_V_VT10086 BIGINT,
    NB_VOLTE_DROP_V_VT10086 BIGINT
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';
CREATE EXTERNAL TABLE IF NOT EXISTS F_V_BXDR_DROP_CITY_VD_H(
    phour STRING,province STRING,scity STRING,vendor STRING,
    CALL_ANS_SUCC BIGINT,
    NB_VOLTE_DROP BIGINT,
    CALL_ANS_A_SUCC BIGINT,
    NB_VOLTE_DROP_A BIGINT,
    CALL_ANS_V_SUCC BIGINT,
    NB_VOLTE_DROP_V BIGINT,
    CALL_ANS_MO_SUCC BIGINT,
    CALL_ANS_A_MO_SUCC BIGINT,
    CALL_ANS_V_MO_SUCC BIGINT,
    NB_VOLTE_DROP_MO BIGINT,
    NB_VOLTE_DROP_A_MO BIGINT,
    NB_VOLTE_DROP_V_MO BIGINT,
    CALL_ANS_MT_SUCC BIGINT,
    CALL_ANS_A_MT_SUCC BIGINT,
    CALL_ANS_V_MT_SUCC BIGINT,
    NB_VOLTE_DROP_MT BIGINT,
    NB_VOLTE_DROP_A_MT BIGINT,
    NB_VOLTE_DROP_V_MT BIGINT,
    NB_ABORT_CAUSE0 BIGINT,
    NB_ABORT_CAUSE1 BIGINT,
    NB_ABORT_CAUSE2 BIGINT,
    NB_ABORT_CAUSE4 BIGINT,
    CALL_ANS_SUCC_VTV BIGINT,
    NB_VOLTE_DROP_VTV BIGINT,
    CALL_ANS_SUCC_A_VTV BIGINT,
    NB_VOLTE_DROP_A_VTV BIGINT,
    CALL_ANS_SUCC_V_VTV BIGINT,
    NB_VOLTE_DROP_V_VTV BIGINT,
    CALL_ANS_SUCC_V_VT10086 BIGINT,
    NB_VOLTE_DROP_V_VT10086 BIGINT
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';
CREATE EXTERNAL TABLE IF NOT EXISTS F_V_BXDR_DROP_CITY_AREA_H(
    phour STRING,province STRING,scity STRING,area STRING,
    CALL_ANS_SUCC BIGINT,
    NB_VOLTE_DROP BIGINT,
    CALL_ANS_A_SUCC BIGINT,
    NB_VOLTE_DROP_A BIGINT,
    CALL_ANS_V_SUCC BIGINT,
    NB_VOLTE_DROP_V BIGINT,
    CALL_ANS_MO_SUCC BIGINT,
    CALL_ANS_A_MO_SUCC BIGINT,
    CALL_ANS_V_MO_SUCC BIGINT,
    NB_VOLTE_DROP_MO BIGINT,
    NB_VOLTE_DROP_A_MO BIGINT,
    NB_VOLTE_DROP_V_MO BIGINT,
    CALL_ANS_MT_SUCC BIGINT,
    CALL_ANS_A_MT_SUCC BIGINT,
    CALL_ANS_V_MT_SUCC BIGINT,
    NB_VOLTE_DROP_MT BIGINT,
    NB_VOLTE_DROP_A_MT BIGINT,
    NB_VOLTE_DROP_V_MT BIGINT,
    NB_ABORT_CAUSE0 BIGINT,
    NB_ABORT_CAUSE1 BIGINT,
    NB_ABORT_CAUSE2 BIGINT,
    NB_ABORT_CAUSE4 BIGINT,
    CALL_ANS_SUCC_VTV BIGINT,
    NB_VOLTE_DROP_VTV BIGINT,
    CALL_ANS_SUCC_A_VTV BIGINT,
    NB_VOLTE_DROP_A_VTV BIGINT,
    CALL_ANS_SUCC_V_VTV BIGINT,
    NB_VOLTE_DROP_V_VTV BIGINT,
    CALL_ANS_SUCC_V_VT10086 BIGINT,
    NB_VOLTE_DROP_V_VT10086 BIGINT
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';
CREATE EXTERNAL TABLE IF NOT EXISTS F_V_BXDR_DROP_CITY_H(
    phour STRING,province STRING,scity STRING,
    CALL_ANS_SUCC BIGINT,
    NB_VOLTE_DROP BIGINT,
    CALL_ANS_A_SUCC BIGINT,
    NB_VOLTE_DROP_A BIGINT,
    CALL_ANS_V_SUCC BIGINT,
    NB_VOLTE_DROP_V BIGINT,
    CALL_ANS_MO_SUCC BIGINT,
    CALL_ANS_A_MO_SUCC BIGINT,
    CALL_ANS_V_MO_SUCC BIGINT,
    NB_VOLTE_DROP_MO BIGINT,
    NB_VOLTE_DROP_A_MO BIGINT,
    NB_VOLTE_DROP_V_MO BIGINT,
    CALL_ANS_MT_SUCC BIGINT,
    CALL_ANS_A_MT_SUCC BIGINT,
    CALL_ANS_V_MT_SUCC BIGINT,
    NB_VOLTE_DROP_MT BIGINT,
    NB_VOLTE_DROP_A_MT BIGINT,
    NB_VOLTE_DROP_V_MT BIGINT,
    NB_ABORT_CAUSE0 BIGINT,
    NB_ABORT_CAUSE1 BIGINT,
    NB_ABORT_CAUSE2 BIGINT,
    NB_ABORT_CAUSE4 BIGINT,
    CALL_ANS_SUCC_VTV BIGINT,
    NB_VOLTE_DROP_VTV BIGINT,
    CALL_ANS_SUCC_A_VTV BIGINT,
    NB_VOLTE_DROP_A_VTV BIGINT,
    CALL_ANS_SUCC_V_VTV BIGINT,
    NB_VOLTE_DROP_V_VTV BIGINT,
    CALL_ANS_SUCC_V_VT10086 BIGINT,
    NB_VOLTE_DROP_V_VT10086 BIGINT
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';
CREATE EXTERNAL TABLE IF NOT EXISTS F_V_BXDR_DROP_PROV_AREA_VD_H(
    phour STRING,province STRING,area STRING,vendor STRING,
    CALL_ANS_SUCC BIGINT,
    NB_VOLTE_DROP BIGINT,
    CALL_ANS_A_SUCC BIGINT,
    NB_VOLTE_DROP_A BIGINT,
    CALL_ANS_V_SUCC BIGINT,
    NB_VOLTE_DROP_V BIGINT,
    CALL_ANS_MO_SUCC BIGINT,
    CALL_ANS_A_MO_SUCC BIGINT,
    CALL_ANS_V_MO_SUCC BIGINT,
    NB_VOLTE_DROP_MO BIGINT,
    NB_VOLTE_DROP_A_MO BIGINT,
    NB_VOLTE_DROP_V_MO BIGINT,
    CALL_ANS_MT_SUCC BIGINT,
    CALL_ANS_A_MT_SUCC BIGINT,
    CALL_ANS_V_MT_SUCC BIGINT,
    NB_VOLTE_DROP_MT BIGINT,
    NB_VOLTE_DROP_A_MT BIGINT,
    NB_VOLTE_DROP_V_MT BIGINT,
    NB_ABORT_CAUSE0 BIGINT,
    NB_ABORT_CAUSE1 BIGINT,
    NB_ABORT_CAUSE2 BIGINT,
    NB_ABORT_CAUSE4 BIGINT,
    CALL_ANS_SUCC_VTV BIGINT,
    NB_VOLTE_DROP_VTV BIGINT,
    CALL_ANS_SUCC_A_VTV BIGINT,
    NB_VOLTE_DROP_A_VTV BIGINT,
    CALL_ANS_SUCC_V_VTV BIGINT,
    NB_VOLTE_DROP_V_VTV BIGINT,
    CALL_ANS_SUCC_V_VT10086 BIGINT,
    NB_VOLTE_DROP_V_VT10086 BIGINT
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';
CREATE EXTERNAL TABLE IF NOT EXISTS F_V_BXDR_DROP_PROV_VD_H(
    phour STRING,province STRING,vendor STRING,
    CALL_ANS_SUCC BIGINT,
    NB_VOLTE_DROP BIGINT,
    CALL_ANS_A_SUCC BIGINT,
    NB_VOLTE_DROP_A BIGINT,
    CALL_ANS_V_SUCC BIGINT,
    NB_VOLTE_DROP_V BIGINT,
    CALL_ANS_MO_SUCC BIGINT,
    CALL_ANS_A_MO_SUCC BIGINT,
    CALL_ANS_V_MO_SUCC BIGINT,
    NB_VOLTE_DROP_MO BIGINT,
    NB_VOLTE_DROP_A_MO BIGINT,
    NB_VOLTE_DROP_V_MO BIGINT,
    CALL_ANS_MT_SUCC BIGINT,
    CALL_ANS_A_MT_SUCC BIGINT,
    CALL_ANS_V_MT_SUCC BIGINT,
    NB_VOLTE_DROP_MT BIGINT,
    NB_VOLTE_DROP_A_MT BIGINT,
    NB_VOLTE_DROP_V_MT BIGINT,
    NB_ABORT_CAUSE0 BIGINT,
    NB_ABORT_CAUSE1 BIGINT,
    NB_ABORT_CAUSE2 BIGINT,
    NB_ABORT_CAUSE4 BIGINT,
    CALL_ANS_SUCC_VTV BIGINT,
    NB_VOLTE_DROP_VTV BIGINT,
    CALL_ANS_SUCC_A_VTV BIGINT,
    NB_VOLTE_DROP_A_VTV BIGINT,
    CALL_ANS_SUCC_V_VTV BIGINT,
    NB_VOLTE_DROP_V_VTV BIGINT,
    CALL_ANS_SUCC_V_VT10086 BIGINT,
    NB_VOLTE_DROP_V_VT10086 BIGINT
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';
CREATE EXTERNAL TABLE IF NOT EXISTS F_V_BXDR_DROP_PROV_AREA_H(
    phour STRING,province STRING,area STRING,
    CALL_ANS_SUCC BIGINT,
    NB_VOLTE_DROP BIGINT,
    CALL_ANS_A_SUCC BIGINT,
    NB_VOLTE_DROP_A BIGINT,
    CALL_ANS_V_SUCC BIGINT,
    NB_VOLTE_DROP_V BIGINT,
    CALL_ANS_MO_SUCC BIGINT,
    CALL_ANS_A_MO_SUCC BIGINT,
    CALL_ANS_V_MO_SUCC BIGINT,
    NB_VOLTE_DROP_MO BIGINT,
    NB_VOLTE_DROP_A_MO BIGINT,
    NB_VOLTE_DROP_V_MO BIGINT,
    CALL_ANS_MT_SUCC BIGINT,
    CALL_ANS_A_MT_SUCC BIGINT,
    CALL_ANS_V_MT_SUCC BIGINT,
    NB_VOLTE_DROP_MT BIGINT,
    NB_VOLTE_DROP_A_MT BIGINT,
    NB_VOLTE_DROP_V_MT BIGINT,
    NB_ABORT_CAUSE0 BIGINT,
    NB_ABORT_CAUSE1 BIGINT,
    NB_ABORT_CAUSE2 BIGINT,
    NB_ABORT_CAUSE4 BIGINT,
    CALL_ANS_SUCC_VTV BIGINT,
    NB_VOLTE_DROP_VTV BIGINT,
    CALL_ANS_SUCC_A_VTV BIGINT,
    NB_VOLTE_DROP_A_VTV BIGINT,
    CALL_ANS_SUCC_V_VTV BIGINT,
    NB_VOLTE_DROP_V_VTV BIGINT,
    CALL_ANS_SUCC_V_VT10086 BIGINT,
    NB_VOLTE_DROP_V_VT10086 BIGINT
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';
CREATE EXTERNAL TABLE IF NOT EXISTS F_V_BXDR_DROP_PROV_H(
    phour STRING,province STRING,
    CALL_ANS_SUCC BIGINT,
    NB_VOLTE_DROP BIGINT,
    CALL_ANS_A_SUCC BIGINT,
    NB_VOLTE_DROP_A BIGINT,
    CALL_ANS_V_SUCC BIGINT,
    NB_VOLTE_DROP_V BIGINT,
    CALL_ANS_MO_SUCC BIGINT,
    CALL_ANS_A_MO_SUCC BIGINT,
    CALL_ANS_V_MO_SUCC BIGINT,
    NB_VOLTE_DROP_MO BIGINT,
    NB_VOLTE_DROP_A_MO BIGINT,
    NB_VOLTE_DROP_V_MO BIGINT,
    CALL_ANS_MT_SUCC BIGINT,
    CALL_ANS_A_MT_SUCC BIGINT,
    CALL_ANS_V_MT_SUCC BIGINT,
    NB_VOLTE_DROP_MT BIGINT,
    NB_VOLTE_DROP_A_MT BIGINT,
    NB_VOLTE_DROP_V_MT BIGINT,
    NB_ABORT_CAUSE0 BIGINT,
    NB_ABORT_CAUSE1 BIGINT,
    NB_ABORT_CAUSE2 BIGINT,
    NB_ABORT_CAUSE4 BIGINT,
    CALL_ANS_SUCC_VTV BIGINT,
    NB_VOLTE_DROP_VTV BIGINT,
    CALL_ANS_SUCC_A_VTV BIGINT,
    NB_VOLTE_DROP_A_VTV BIGINT,
    CALL_ANS_SUCC_V_VTV BIGINT,
    NB_VOLTE_DROP_V_VTV BIGINT,
    CALL_ANS_SUCC_V_VT10086 BIGINT,
    NB_VOLTE_DROP_V_VT10086 BIGINT
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';
CREATE EXTERNAL TABLE IF NOT EXISTS F_V_BXDR_DROP_NAT_AREA_VD_H(
    phour STRING,area STRING,vendor STRING,
    CALL_ANS_SUCC BIGINT,
    NB_VOLTE_DROP BIGINT,
    CALL_ANS_A_SUCC BIGINT,
    NB_VOLTE_DROP_A BIGINT,
    CALL_ANS_V_SUCC BIGINT,
    NB_VOLTE_DROP_V BIGINT,
    CALL_ANS_MO_SUCC BIGINT,
    CALL_ANS_A_MO_SUCC BIGINT,
    CALL_ANS_V_MO_SUCC BIGINT,
    NB_VOLTE_DROP_MO BIGINT,
    NB_VOLTE_DROP_A_MO BIGINT,
    NB_VOLTE_DROP_V_MO BIGINT,
    CALL_ANS_MT_SUCC BIGINT,
    CALL_ANS_A_MT_SUCC BIGINT,
    CALL_ANS_V_MT_SUCC BIGINT,
    NB_VOLTE_DROP_MT BIGINT,
    NB_VOLTE_DROP_A_MT BIGINT,
    NB_VOLTE_DROP_V_MT BIGINT,
    NB_ABORT_CAUSE0 BIGINT,
    NB_ABORT_CAUSE1 BIGINT,
    NB_ABORT_CAUSE2 BIGINT,
    NB_ABORT_CAUSE4 BIGINT,
    CALL_ANS_SUCC_VTV BIGINT,
    NB_VOLTE_DROP_VTV BIGINT,
    CALL_ANS_SUCC_A_VTV BIGINT,
    NB_VOLTE_DROP_A_VTV BIGINT,
    CALL_ANS_SUCC_V_VTV BIGINT,
    NB_VOLTE_DROP_V_VTV BIGINT,
    CALL_ANS_SUCC_V_VT10086 BIGINT,
    NB_VOLTE_DROP_V_VT10086 BIGINT
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';
CREATE EXTERNAL TABLE IF NOT EXISTS F_V_BXDR_DROP_NAT_VD_H(
    phour STRING,vendor STRING,
    CALL_ANS_SUCC BIGINT,
    NB_VOLTE_DROP BIGINT,
    CALL_ANS_A_SUCC BIGINT,
    NB_VOLTE_DROP_A BIGINT,
    CALL_ANS_V_SUCC BIGINT,
    NB_VOLTE_DROP_V BIGINT,
    CALL_ANS_MO_SUCC BIGINT,
    CALL_ANS_A_MO_SUCC BIGINT,
    CALL_ANS_V_MO_SUCC BIGINT,
    NB_VOLTE_DROP_MO BIGINT,
    NB_VOLTE_DROP_A_MO BIGINT,
    NB_VOLTE_DROP_V_MO BIGINT,
    CALL_ANS_MT_SUCC BIGINT,
    CALL_ANS_A_MT_SUCC BIGINT,
    CALL_ANS_V_MT_SUCC BIGINT,
    NB_VOLTE_DROP_MT BIGINT,
    NB_VOLTE_DROP_A_MT BIGINT,
    NB_VOLTE_DROP_V_MT BIGINT,
    NB_ABORT_CAUSE0 BIGINT,
    NB_ABORT_CAUSE1 BIGINT,
    NB_ABORT_CAUSE2 BIGINT,
    NB_ABORT_CAUSE4 BIGINT,
    CALL_ANS_SUCC_VTV BIGINT,
    NB_VOLTE_DROP_VTV BIGINT,
    CALL_ANS_SUCC_A_VTV BIGINT,
    NB_VOLTE_DROP_A_VTV BIGINT,
    CALL_ANS_SUCC_V_VTV BIGINT,
    NB_VOLTE_DROP_V_VTV BIGINT,
    CALL_ANS_SUCC_V_VT10086 BIGINT,
    NB_VOLTE_DROP_V_VT10086 BIGINT
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';
CREATE EXTERNAL TABLE IF NOT EXISTS F_V_BXDR_DROP_NAT_AREA_H(
    phour STRING,area STRING,
    CALL_ANS_SUCC BIGINT,
    NB_VOLTE_DROP BIGINT,
    CALL_ANS_A_SUCC BIGINT,
    NB_VOLTE_DROP_A BIGINT,
    CALL_ANS_V_SUCC BIGINT,
    NB_VOLTE_DROP_V BIGINT,
    CALL_ANS_MO_SUCC BIGINT,
    CALL_ANS_A_MO_SUCC BIGINT,
    CALL_ANS_V_MO_SUCC BIGINT,
    NB_VOLTE_DROP_MO BIGINT,
    NB_VOLTE_DROP_A_MO BIGINT,
    NB_VOLTE_DROP_V_MO BIGINT,
    CALL_ANS_MT_SUCC BIGINT,
    CALL_ANS_A_MT_SUCC BIGINT,
    CALL_ANS_V_MT_SUCC BIGINT,
    NB_VOLTE_DROP_MT BIGINT,
    NB_VOLTE_DROP_A_MT BIGINT,
    NB_VOLTE_DROP_V_MT BIGINT,
    NB_ABORT_CAUSE0 BIGINT,
    NB_ABORT_CAUSE1 BIGINT,
    NB_ABORT_CAUSE2 BIGINT,
    NB_ABORT_CAUSE4 BIGINT,
    CALL_ANS_SUCC_VTV BIGINT,
    NB_VOLTE_DROP_VTV BIGINT,
    CALL_ANS_SUCC_A_VTV BIGINT,
    NB_VOLTE_DROP_A_VTV BIGINT,
    CALL_ANS_SUCC_V_VTV BIGINT,
    NB_VOLTE_DROP_V_VTV BIGINT,
    CALL_ANS_SUCC_V_VT10086 BIGINT,
    NB_VOLTE_DROP_V_VT10086 BIGINT
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';
CREATE EXTERNAL TABLE IF NOT EXISTS F_V_BXDR_DROP_NAT_H(
    phour STRING,
    CALL_ANS_SUCC BIGINT,
    NB_VOLTE_DROP BIGINT,
    CALL_ANS_A_SUCC BIGINT,
    NB_VOLTE_DROP_A BIGINT,
    CALL_ANS_V_SUCC BIGINT,
    NB_VOLTE_DROP_V BIGINT,
    CALL_ANS_MO_SUCC BIGINT,
    CALL_ANS_A_MO_SUCC BIGINT,
    CALL_ANS_V_MO_SUCC BIGINT,
    NB_VOLTE_DROP_MO BIGINT,
    NB_VOLTE_DROP_A_MO BIGINT,
    NB_VOLTE_DROP_V_MO BIGINT,
    CALL_ANS_MT_SUCC BIGINT,
    CALL_ANS_A_MT_SUCC BIGINT,
    CALL_ANS_V_MT_SUCC BIGINT,
    NB_VOLTE_DROP_MT BIGINT,
    NB_VOLTE_DROP_A_MT BIGINT,
    NB_VOLTE_DROP_V_MT BIGINT,
    NB_ABORT_CAUSE0 BIGINT,
    NB_ABORT_CAUSE1 BIGINT,
    NB_ABORT_CAUSE2 BIGINT,
    NB_ABORT_CAUSE4 BIGINT,
    CALL_ANS_SUCC_VTV BIGINT,
    NB_VOLTE_DROP_VTV BIGINT,
    CALL_ANS_SUCC_A_VTV BIGINT,
    NB_VOLTE_DROP_A_VTV BIGINT,
    CALL_ANS_SUCC_V_VTV BIGINT,
    NB_VOLTE_DROP_V_VTV BIGINT,
    CALL_ANS_SUCC_V_VT10086 BIGINT,
    NB_VOLTE_DROP_V_VT10086 BIGINT
)
PARTITIONED BY (pdate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/result';