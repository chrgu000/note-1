F_VOLTE_SIP_SV_ALL_D
sdate       province    scity   area    vendor  mme_ip  emsc_ip ci

    <summary id="F_VOLTE_SIP_SV_ALL_D_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            substr(phour,1,8),province,scity,area,vendor,mme_ip,emsc_ip,ci,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY substr(phour,1,8),province,scity,area,vendor,mme_ip,emsc_ip,ci
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_ALL_D" for="F_VOLTE_SIP_SV_ALL_D_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_TERMINAL_D
sdate       province    scity

    <summary id="F_VOLTE_SIP_SV_TERMINAL_D_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            substr(phour,1,8),province,scity,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY substr(phour,1,8),province,scity
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_TERMINAL_D" for="F_VOLTE_SIP_SV_TERMINAL_D_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_CITY_AREA_VD_D
sdate       province    scity   area    vendor

    <summary id="F_VOLTE_SIP_SV_CITY_AREA_VD_D_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            substr(phour,1,8),province,scity,area,vendor,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY substr(phour,1,8),province,scity,area,vendor
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_CITY_AREA_VD_D" for="F_VOLTE_SIP_SV_CITY_AREA_VD_D_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_CITY_VD_D
sdate       province    scity       vendor

    <summary id="F_VOLTE_SIP_SV_CITY_VD_D_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            substr(phour,1,8),province,scity,vendor,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY substr(phour,1,8),province,scity,vendor
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_CITY_VD_D" for="F_VOLTE_SIP_SV_CITY_VD_D_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_CITY_AREA_D
sdate       province    scity   area

    <summary id="F_VOLTE_SIP_SV_CITY_AREA_D_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            substr(phour,1,8),province,scity,area,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY substr(phour,1,8),province,scity,area
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_CITY_AREA_D" for="F_VOLTE_SIP_SV_CITY_AREA_D_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_CITY_D
sdate       province    scity

    <summary id="F_VOLTE_SIP_SV_CITY_D_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            substr(phour,1,8),province,scity,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY substr(phour,1,8),province,scity
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_CITY_D" for="F_VOLTE_SIP_SV_CITY_D_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_PROV_AREA_VD_D
sdate       province        area    vendor

    <summary id="F_VOLTE_SIP_SV_PROV_AREA_VD_D_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            substr(phour,1,8),province,area,vendor,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY substr(phour,1,8),province,area,vendor
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_PROV_AREA_VD_D" for="F_VOLTE_SIP_SV_PROV_AREA_VD_D_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_PROV_VD_D
sdate       province            vendor

    <summary id="F_VOLTE_SIP_SV_PROV_VD_D_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            substr(phour,1,8),province,vendor,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY substr(phour,1,8),province,vendor
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_PROV_VD_D" for="F_VOLTE_SIP_SV_PROV_VD_D_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_PROV_AREA_D
sdate       province        area

    <summary id="F_VOLTE_SIP_SV_PROV_AREA_D_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            substr(phour,1,8),province,area,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY substr(phour,1,8),province,area
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_PROV_AREA_D" for="F_VOLTE_SIP_SV_PROV_AREA_D_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_PROV_D
sdate       province

    <summary id="F_VOLTE_SIP_SV_PROV_D_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            substr(phour,1,8),province,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY substr(phour,1,8),province
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_PROV_D" for="F_VOLTE_SIP_SV_PROV_D_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_NAT_VD_D
sdate                   vendor

    <summary id="F_VOLTE_SIP_SV_NAT_VD_D_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            substr(phour,1,8),vendor,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY substr(phour,1,8),vendor
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_NAT_VD_D" for="F_VOLTE_SIP_SV_NAT_VD_D_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_NAT_AREA_D
sdate               area

    <summary id="F_VOLTE_SIP_SV_NAT_AREA_D_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            substr(phour,1,8),area,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY substr(phour,1,8),area
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_NAT_AREA_D" for="F_VOLTE_SIP_SV_NAT_AREA_D_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_NAT_AREA_VD_D
sdate               area    vendor

    <summary id="F_VOLTE_SIP_SV_NAT_AREA_VD_D_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            substr(phour,1,8),area,vendor,
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY substr(phour,1,8),area,vendor
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_NAT_AREA_VD_D" for="F_VOLTE_SIP_SV_NAT_AREA_VD_D_SUMMARY" to="spark1" title="spark1"/>

F_VOLTE_SIP_SV_NAT_D
sdate

    <summary id="F_VOLTE_SIP_SV_NAT_D_SUMMARY" in="F_VOLTE_SIP_SV_ALL_H_SUMMARY">
        <body><![CDATA[
          select
            substr(phour,1,8),
            sum(SRVCC_RESP_FAIL) as SRVCC_ATTEMPT,
            sum(SRVCC_RESP_FAIL) as SRVCC_RESP_FAIL,
            sum(SRVCC_RESP_SUCC) as SRVCC_RESP_SUCC,
            sum(SRVCC_RESP_LATENCY_ALL) as SRVCC_RESP_LATENCY_ALL,
            sum(SRVCC_COMP_SUCC) as SRVCC_COMP_SUCC,
            sum(SRVCC_COMP_FAIL) as SRVCC_COMP_FAIL,
            sum(SRVCC_COMP_LATENCY_ALL) as SRVCC_COMP_LATENCY_ALL,
            sum(SRVCC_MEDIA_LATENCY_ALL) as SRVCC_MEDIA_LATENCY_ALL
          from ${F_VOLTE_SIP_SV_ALL_H_SUMMARY}
          GROUP BY substr(phour,1,8)
        ]]></body>
    </summary>
    <result id="F_VOLTE_SIP_SV_NAT_D" for="F_VOLTE_SIP_SV_NAT_D_SUMMARY" to="spark1" title="spark1"/>
