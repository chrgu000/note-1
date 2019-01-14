
F_VOLTE_SIP_SV_ALL_H_SUMMARY

  select
    phour,province,scity,area,vendor,mme_ip,emsc_ip,ci,target_cell_id,terminal,
    COUNT(1) as SRVCC_ATTEMPT,
    sum(case when REQUEST_RESULT <> 16 then 1 ELSE 0 end) as SRVCC_RESP_FAIL,
    sum(case when REQUEST_RESULT = 16 then 1 ELSE 0  end) as SRVCC_RESP_SUCC,
    sum(case when REQUEST_RESULT = 16 then RESP_DELAY ELSE 0 end) as SRVCC_RESP_LATENCY_ALL,
    sum(case when RESULT = 0 then 1 ELSE 0 end) as SRVCC_COMP_SUCC,
    sum(case when RESULT <> 0 then 1 ELSE 0 end ) as SRVCC_COMP_FAIL,
    sum(case when RESULT = 0 then SV_DELAY ELSE 0 end ) as SRVCC_COMP_LATENCY_ALL,
    sum(case when RESULT = 16 then (SV_DELAY-RESP_DELAY) ELSE 0 end ) as SRVCC_MEDIA_LATENCY_ALL
  from ${SV_NET_CI_SUMMARY}
  GROUP BY phour,province,scity,area,vendor,mme_ip,emsc_ip,ci,target_cell_id,terminal




F_VOLTE_SIP_SV_TERMINAL_H
维度
    sdate   shour   province    scity
    <summary id="F_VOLTE_SIP_SV_TERMINAL_H_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
        select
          phour,province,scity,
          sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
          sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
          sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
          sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
          sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
          sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
          sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
          sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
        from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
        GROUP BY phour,province,scity
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_TERMINAL_H" for="F_VOLTE_SIP_SV_TERMINAL_H_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_CITY_AREA_VD_H
维度
  sdate   shour   province    scity   area    vendor

    <summary id="F_VOLTE_SIP_SV_CITY_AREA_VD_H_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            phour,province,scity,area,vendor,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY phour,province,scity,area,vendor
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_CITY_AREA_VD_H" for="F_VOLTE_SIP_SV_CITY_AREA_VD_H_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_CITY_VD_H
维度
  sdate shour province  scity   vendor

    <summary id="F_VOLTE_SIP_SV_CITY_VD_H_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            phour,province,scity,vendor,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY phour,province,scity,vendor
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_CITY_VD_H" for="F_VOLTE_SIP_SV_CITY_VD_H_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_CITY_AREA_H
维度
  sdate shour province  scity area

    <summary id="F_VOLTE_SIP_SV_CITY_AREA_H_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            phour,province,scity,area,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY phour,province,scity,area
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_CITY_AREA_H" for="F_VOLTE_SIP_SV_CITY_AREA_H_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_CITY_H
维度
  sdate shour province  scity

    <summary id="F_VOLTE_SIP_SV_CITY_H_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
        select
          phour,province,scity,
          sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
          sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
          sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
          sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
          sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
          sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
          sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
          sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
        from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
        GROUP BY phour,province,scity
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_CITY_H" for="F_VOLTE_SIP_SV_CITY_H_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_PROV_AREA_VD_H
sdate shour province    area  vendor

    <summary id="F_VOLTE_SIP_SV_PROV_AREA_VD_H_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            phour,province,area,vendor,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY phour,province,area,vendor
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_PROV_AREA_VD_H" for="F_VOLTE_SIP_SV_PROV_AREA_VD_H_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_PROV_VD_H
sdate shour province      vendor

    <summary id="F_VOLTE_SIP_SV_PROV_VD_H_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            phour,province,vendor,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY phour,province,vendor
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_PROV_VD_H" for="F_VOLTE_SIP_SV_PROV_VD_H_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_PROV_AREA_H
sdate shour province    area

    <summary id="F_VOLTE_SIP_SV_PROV_AREA_H_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            phour,province,area,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY phour,province,area
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_PROV_AREA_H" for="F_VOLTE_SIP_SV_PROV_AREA_H_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_PROV_H
sdate shour province

    <summary id="F_VOLTE_SIP_SV_PROV_H_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            phour,province,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY phour,province
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_PROV_H" for="F_VOLTE_SIP_SV_PROV_H_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_NAT_AREA_VD_H
sdate shour     area  vendor

    <summary id="F_VOLTE_SIP_SV_NAT_AREA_VD_H_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            phour,area,vendor,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY phour,area,vendor
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_NAT_AREA_VD_H" for="F_VOLTE_SIP_SV_NAT_AREA_VD_H_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_NAT_VD_H
sdate shour       vendor

    <summary id="F_VOLTE_SIP_SV_NAT_VD_H_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            phour,vendor,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY phour,vendor
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_NAT_VD_H" for="F_VOLTE_SIP_SV_NAT_VD_H_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_NAT_AREA_H
sdate shour     area

    <summary id="F_VOLTE_SIP_SV_NAT_AREA_H_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            phour,area,terminal,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY phour,area,terminal
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_NAT_AREA_H" for="F_VOLTE_SIP_SV_NAT_AREA_H_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_NAT_H
SDATE SHOUR

    <summary id="F_VOLTE_SIP_SV_NAT_H_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            phour,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY phour
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_NAT_H" for="F_VOLTE_SIP_SV_NAT_H_SUMMARY" to="spark1" title="spark1"/>

