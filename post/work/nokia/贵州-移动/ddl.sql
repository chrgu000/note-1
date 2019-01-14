USE default;
DROP TABLE IF EXISTS `bigxdrvtv`;
CREATE EXTERNAL TABLE `bigxdrvtv`(`xdr_id` string COMMENT 'from deserializer', `length` string COMMENT 'from deserializer', `icid` string COMMENT 'from deserializer', `local_province` string COMMENT 'from deserializer', `local_city` string COMMENT 'from deserializer', `owner_province` string COMMENT 'from deserializer', `owner_city` string COMMENT 'from deserializer', `roaming_type` string COMMENT 'from deserializer', `rat` string COMMENT 'from deserializer', `imsi` string COMMENT 'from deserializer', `imei` string COMMENT 'from deserializer', `msisdn` string COMMENT 'from deserializer', `procedure_type` string COMMENT 'from deserializer', `flow_starttime` string COMMENT 'from deserializer', `flow_endtime` string COMMENT 'from deserializer', `source_imsi` string COMMENT 'from deserializer', `dest_imsi` string COMMENT 'from deserializer', `calling_number` string COMMENT 'from deserializer', `called_number` string COMMENT 'from deserializer', `source_imei` string COMMENT 'from deserializer', `dest_imei` string COMMENT 'from deserializer', `eci` string COMMENT 'from deserializer', `tac` string COMMENT 'from deserializer', `source_ne_ip` string COMMENT 'from deserializer', `dest_ne_ip` string COMMENT 'from deserializer', `service_type` string COMMENT 'from deserializer', `redirecting_party_address` string COMMENT 'from deserializer', `original_party_address` string COMMENT 'from deserializer', `alerting_time` string COMMENT 'from deserializer', `answer_time` string COMMENT 'from deserializer', `call_duration` string COMMENT 'from deserializer', `xdr_id_mo` string COMMENT 'from deserializer', `procedure_start_time_mo` string COMMENT 'from deserializer', `procedure_end_time_mo` string COMMENT 'from deserializer', `alerting_time_mo` string COMMENT 'from deserializer', `answer_time_mo` string COMMENT 'from deserializer', `xdr_id_mt` string COMMENT 'from deserializer', `procedure_start_time_mt` string COMMENT 'from deserializer', `procedure_end_time_mt` string COMMENT 'from deserializer', `alerting_time_mt` string COMMENT 'from deserializer', `answer_time_mt` string COMMENT 'from deserializer')
PARTITIONED BY (`phour` string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  'separatorChar' = '|',
  'serialization.format' = '1',
  'serialization.null.format' = 'NULL'
)
STORED AS
  INPUTFORMAT 'org.apache.hadoop.mapred.TextInputFormat'
  OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION '/data/volte/vtv';