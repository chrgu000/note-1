CREATE TEMPORARY VIEW drops1mme USING csv
OPTIONS(
header true,
path '/data/volte/drops1mme/phour=2017122209/*')

CREATE TEMPORARY VIEW F_V_BXDR_DROP_S1MME_H USING parquet
OPTIONS(
path '/output/7200/parquet/TMP_TBX_100_0_F_V_BXDR_DROP_S1MME_H_SUMMARY/*.parquet')


CREATE TEMPORARY VIEW bigxdrcmccmr USING csv
OPTIONS(
--header true,
--inferSchema true,
sep '|',
path '/data/volte/cmccmr/phour=2017122209/*.CSV')




CREATE TEMPORARY VIEW celllist USING csv
OPTIONS(
header true,
path '/data/conf/celllist.csv')

CREATE TEMPORARY VIEW netconf USING csv
OPTIONS(
header true,
path '/data/conf/netconf.csv')

CREATE TEMPORARY VIEW ${tableName}
    AS (${sql})


ORACLE_HOME=/opt/oracle/product/11.2.0/db_1
export ORACLE_HOME
FLODER=/root/tmp/data/phour\=2017122209/
for f in `ls $FLODER`
do
   echo $FLODER$f

   sed -i s@/root/tmp/1.csv@$FLODER$f@ /root/tmp/input.ctl

   /opt/oracle/product/11.2.0/db_1/bin/sqlldr userid='daily/mdasil@192.168.7.107/daily' control=/root/tmp/input.ctl

   sed -i s@$FLODER$f@/root/tmp/1.csv@ /root/tmp/input.ctl
done










ALTER TABLE `VD_CITY_VDNET_H` ADD COLUMN vendor_net CHARACTER VARYING(60);