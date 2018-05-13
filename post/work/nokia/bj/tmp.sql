CREATE EXTERNAL TABLE IF NOT EXISTS partition_test(
    phour STRING,
    province STRING,
    scity STRING,
    srvcc_attempt bigint,
    srvcc_attempt2 bigint
)
PARTITIONED BY (p_hour STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/output/test/partition_test';

2017121201|北京|北京|01|1000
2017121202|北京|北京|01|1000
2017121203|北京|北京|01|1000
2017121204|北京|北京|01|1000
2017121205|北京|北京|01|1000

load data inpath '/output/dt3/34632/2017112403/F_VOLTE_SIP_Mw_ALL_H/*.csv' into table result.f_volte_sip_mw_h partition(p_hour='2017112403');


alter table test.partition_test add partition (p_hour='20171213');

alter table test.f_volte_sip_sv_terminal_h set location 'hdfs://vm73:8020/output/test/f_volte_sip_sv_terminal_h';

alter table sv drop if exists partition(phour='2017112417');

alter table sv add partition

alter table sv add partition (phour='2017112400');
alter table sv add partition (phour='2017112401');
alter table sv add partition (phour='2017112402');
alter table sv add partition (phour='2017112403');
alter table sv add partition (phour='2017112404');
alter table sv add partition (phour='2017112405');
alter table sv add partition (phour='2017112406');
alter table sv add partition (phour='2017112407');
alter table sv add partition (phour='2017112408');
alter table sv add partition (phour='2017112409');
alter table sv add partition (phour='2017112410');
alter table sv add partition (phour='2017112411');
alter table sv add partition (phour='2017112412');
alter table sv add partition (phour='2017112413');
alter table sv add partition (phour='2017112414');
alter table sv add partition (phour='2017112415');
alter table sv add partition (phour='2017112416');
alter table sv add partition (phour='2017112417');
alter table sv add partition (phour='2017112418');
alter table sv add partition (phour='2017112419');
alter table sv add partition (phour='2017112420');
alter table sv add partition (phour='2017112421');
alter table sv add partition (phour='2017112422');
alter table sv add partition (phour='2017112423');


-- /data/sv/phour=2017112417

-- hdfs dfs -cat /data/sv/phour=2017112417/* |wc -l
-- hive -e "select count(*) from test.partition_test where p_hour='20171212'"


-- /opt/hive-1.2.2/bin/hive -f hive-sv-w.sql

-- #!/bin/sh

-- /opt/hive-1.2.2/bin/hive -f hive-bigxdrcmcc-d.sql
-- /opt/hive-1.2.2/bin/hive -f hive-cmccdrop-h.sql
-- /opt/hive-1.2.2/bin/hive -f hive-mw-d.sql
-- /opt/hive-1.2.2/bin/hive -f hive-sv-h.sql
-- /opt/hive-1.2.2/bin/hive -f hive-bigxdrcmcc-h.sql
-- /opt/hive-1.2.2/bin/hive -f hive-cmccsrvcc-d.sql
-- /opt/hive-1.2.2/bin/hive -f hive-mw-h.sql
-- /opt/hive-1.2.2/bin/hive -f hive-bigxdrcmcc-w.sql
-- /opt/hive-1.2.2/bin/hive -f hive-cmccsrvcc-h.sql
-- /opt/hive-1.2.2/bin/hive -f hive-mw-w.sql
-- /opt/hive-1.2.2/bin/hive -f hive-cmccdrop-d.sql
-- /opt/hive-1.2.2/bin/hive -f hive-cmccsrvcc-w.sql
-- /opt/hive-1.2.2/bin/hive -f hive-sv-d.sql




cmcc_bigxdr_drop

CALL_ANS_SUCC_VT10086 V_Drop_CMCCXDR_029 u CALL_ANS_SUCC_V_VT10086
NB_VOLTE_DROP_VT10086 V_Drop_CMCCXDR_030 u NB_VOLTE_DROP_V_VT10086


answer_time >0 and called_number in (10086,8610086)
answer_time>0  and  ts_drop>0 and called_number in (10086,8610086)


cmcc_bigxdr
指标                               指标编码
MAR_ATTEMPT                        V_CMCC_BIGXDR_017 u  MAR_ATTEMPT
MAR_SUCC                           V_CMCC_BIGXDR_018 u  MAR_SUCC
INIT_REGISTER_FAIL_ALL             V_CMCC_BIGXDR_019 u  INIT_REGISTER_FAIL_ALL
INIT_REGFAIL_RAD_UE                V_CMCC_BIGXDR_026 u  INIT_REGFAIL_RAD_UE
CALL_ANS_MT_SUCC                   V_CMCC_BIGXDR_073 u  CALL_ANS_MT_SUCC
CALLSETUP_FAIL_MO_IMS_INCLUS       V_CMCC_BIGXDR_093 u  CALLSETUP_FAIL_MO_IMS_INCLUS
CALLSETUP_FAIL_MO_CS_USBUSY        V_CMCC_BIGXDR_103 u  CALLSETUP_FAIL_MO_CS_USBUSY
CALLSETUP_FAIL_MO_IMS_USEARLY      V_CMCC_BIGXDR_105 u  CALLSETUP_FAIL_MO_IMS_USEARLY
CALLSETUP_FAIL_MO_TEXPIRY_EPC      V_CMCC_BIGXDR_142 u  CALLSETUP_FAIL_MO_TEXPIRY_EPC
CALLSETUP_FAIL_MT_TEXPIRY_EPC      V_CMCC_BIGXDR_143 u  CALLSETUP_FAIL_MT_TEXPIRY_EPC
CALLSETUP_SUC_VTV                  V_CMCC_BIGXDR_149 a
CALLSETUP_VTV_LATENCY_ALL          V_CMCC_BIGXDR_150 a


MAR_ATTEMPT|
MAR_SUCC|
INIT_REGISTER_FAIL_ALL|
INIT_REGFAIL_RAD_UE|
CALL_ANS_MT_SUCC|
CALL_SETUP_FAIL_MO_IMS_INCLUS|
CALL_SETUP_FAIL_MO_CS_USBUSY|
CALL_SETUP_FAIL_MO_IMS_USEARLY|
CALL_SETUP_FAIL_MO_TEXPIRY_EPC|
CALL_SETUP_FAIL_MT_TEXPIRY_EPC|


MAR_ATTEMPT|
MAR_SUCC|
INIT_REGISTER_FAIL_ALL|
INIT_REGFAIL_RAD_UE|
CALL_ANS_MT_SUCC|
CALL_SETUP_FAIL_MO_IMS_INCLUS|
CALL_SETUP_FAIL_MO_CS_USBUSY|
CALL_SETUP_FAIL_MO_IMS_USEARLY|
CALL_SETUP_FAIL_MO_TEXPIRY_EPC|
CALL_SETUP_FAIL_MT_TEXPIRY_EPC|


explain select
  sum(case when procedure_type=1 and cx_mar_xdrid>0 then 1 else null end) as MAR_ATTEMPT,
  sum(case when procedure_type=1 and cx_mar_xdrid>0 and cx_mar_transaction_status=1 then 1 else null end) as MAR_SUCC,
  sum(case when procedure_type=1 and flow_status in (2,4) then 1 else null end) as INIT_REGISTER_FAIL_ALL,
  sum(case when (procedure_type=1  and (flow_status=2 and flow_firfail_interface in (0,1,8) and flow_firfail_netype in ('sbc','is_cscf') or flow_firfail_netype is  null) and flow_firfail_responsecode  in (400,401,408,500,403,404,421,503)) or (procedure_type=1 and flow_status=4 and flow_firfail_interface=13 and flow_firfail_netype<> 'mme'  and ((s1mme_ff_proceduretype<>20  or s1mme_ff_keyword1<>1)  and  (s1mme_ff_proceduretype<>21 or  s1mme_ff_keyword1<>1))) then 1 else null end) as INIT_REGFAIL_RAD_UE,
  sum(case when procedure_type=5  and  answer_time>0 and call_side=2 then 1 else null end) as CALL_ANS_MT_SUCC,
  sum(case when procedure_type=5 and call_side=1 and flow_status in (2,3,4) and ((flow_firfail_interface in (0,3,4,5,7,8,9,11) and flow_firfail_netype  in ('sbc','is_cscf','as')) or (flow_firfail_interface in (1,2))) and (flow_firfail_responsecode not in (503,400,403) or flow_firfail_responsecode is null) then 1 else null end) as CALL_SETUP_FAIL_MO_IMS_INCLUS,
  sum(case when procedure_type=5 and call_side=1 and flow_status in (2,3) and flow_firfail_interface in (3,4,5,8,11) and flow_firfail_netype  in ('mgcf','hss') and flow_firfail_responsecode=486 then 1 else null end) as CALL_SETUP_FAIL_MO_CS_USBUSY,
  sum(case when procedure_type=5 and call_side=1 and flow_status in (2,3) and ((flow_firfail_interface in (0,3,4,5,7,8,9,11) and flow_firfail_netype in ('sbc','is_cscf','as')) or flow_firfail_interface in (1,2)) and flow_firfail_transaction=6  and (flow_firfail_finishreasoncause=16 or flow_firfail_finishreasoncause=4294967295 or flow_firfail_finishreasoncause is null) then 1 else null end) as CALL_SETUP_FAIL_MO_IMS_USEARLY,
  sum(case when procedure_type=5 and call_side=1 and flow_firfail_interface in (9,10,13) and flow_status=4 and flow_firfail_netype in  ('mme'  , 'spgw' , 'pcrf') then 1 else null end) as CALL_SETUP_FAIL_MO_TEXPIRY_EPC,
  sum(case when procedure_type=5 and call_side=2 and flow_firfail_interface in (9,10,13) and flow_status=4 and flow_firfail_netype in  ('mme'  , 'spgw' , 'pcrf') then 1 else null end) as CALL_SETUP_FAIL_MT_TEXPIRY_EPC
from cmdi.bigxdrcmcc;

sum(case when procedure type=5 and call_side=1 and (alerting_time>0 or answer_time>0) and source_access_type in (1,2)  and dest_access_type in (1,2) then 1 else null end) as CALLSETUP_SUC_VTV,
sum(case when procedure_type=5 and  (alerting_time>0 or answer_time>0) and call_side=1 and called_number in (10086,8610086))  then (case when alerting_time>0 then 1 alerting_time else answer_time end) else null end) as CALLSETUP_VTV_LATENCY_ALL

Procedure_Type=5&& (ALERTING_TIME>0 OR ANSWER_TIME>0)&&CALL_SIDE=1&&CALLED_NUMBER IN (10086,8610086) THEN
THEN COUNTER=COUNTER + (IF (ALERTING_TIME>0) THEN ALERTING_TIME ELSE ANSWER_TIME

(case when alerting_time>0 then 1 alerting_time else answer_time end)

sum(CALLSETUP_SUC_VTV) as CALLSETUP_SUC_VTV,
sum(CALLS_ETUP_VTV_LATENCY_ALL) as CALLS_ETUP_VTV_LATENCY_ALL

    CALL_SETUP_SUC_VTV bigint,
    CALL_SETUP_VTV_LATENCY_ALL bigint,

show partitions result.F_V_BXDR_DROP_W;

select count(*) from result.F_V_BXDR_ALL_D;

select * from result.F_V_BXDR_DROP_CITY_AREA_W limit 5;


alter table result.F_V_BXDR_DROP_CITY_AREA_W drop if exists partition(p_hour='2017112400');