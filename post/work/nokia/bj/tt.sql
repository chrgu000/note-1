    <summary id="F_V_BXDR_DROP_ALL_H_SUMMARY" in="CMCCDROP_KPI_ALL_SUMMARY">
        <body><![CDATA[
            select
              phour,province,scity,area,vendor,pcrf_ip,ci,rx_abort_cause,
              sum(CALL_ANS_SUCC) as CALL_ANS_SUCC,
              sum(NB_VOLTE_DROP) as NB_VOLTE_DROP,
              sum(CALL_ANS_A_SUCC) as CALL_ANS_A_SUCC,
              sum(NB_VOLTE_DROP_A) as NB_VOLTE_DROP_A,
              sum(CALL_ANS_V_SUCC) as CALL_ANS_V_SUCC,
              sum(NB_VOLTE_DROP_V) as NB_VOLTE_DROP_V,
              sum(CALL_ANS_MO_SUCC) as CALL_ANS_MO_SUCC,
              sum(CALL_ANS_A_MO_SUCC) as CALL_ANS_A_MO_SUCC,
              sum(CALL_ANS_V_MO_SUCC) as CALL_ANS_V_MO_SUCC,
              sum(NB_VOLTE_DROP_MO) as NB_VOLTE_DROP_MO,
              sum(NB_VOLTE_DROP_A_MO) as NB_VOLTE_DROP_A_MO,
              sum(NB_VOLTE_DROP_V_MO) as NB_VOLTE_DROP_V_MO,
              sum(CALL_ANS_MT_SUCC) as CALL_ANS_MT_SUCC,
              sum(CALL_ANS_A_MT_SUCC) as CALL_ANS_A_MT_SUCC,
              sum(CALL_ANS_V_MT_SUCC) as CALL_ANS_V_MT_SUCC,
              sum(NB_VOLTE_DROP_MT) as NB_VOLTE_DROP_MT,
              sum(NB_VOLTE_DROP_A_MT) as NB_VOLTE_DROP_A_MT,
              sum(NB_VOLTE_DROP_V_MT) as NB_VOLTE_DROP_V_MT,
              sum(NB_ABORT_CAUSE0) as NB_ABORT_CAUSE0,
              sum(NB_ABORT_CAUSE1) as NB_ABORT_CAUSE1,
              sum(NB_ABORT_CAUSE2) as NB_ABORT_CAUSE2,
              sum(NB_ABORT_CAUSE4) as NB_ABORT_CAUSE4,
              sum(CALL_ANS_SUCC_VTV) as CALL_ANS_SUCC_VTV,
              sum(NB_VOLTE_DROP_VTV) as NB_VOLTE_DROP_VTV,
              sum(CALL_ANS_SUCC_A_VTV) as CALL_ANS_SUCC_A_VTV,
              sum(NB_VOLTE_DROP_A_VTV) as NB_VOLTE_DROP_A_VTV,
              sum(CALL_ANS_SUCC_V_VTV) as CALL_ANS_SUCC_V_VTV,
              sum(NB_VOLTE_DROP_V_VTV) as NB_VOLTE_DROP_V_VTV,
              sum(CALL_ANS_SUCC_V_VT10086) as CALL_ANS_SUCC_V_VT10086,
              sum(NB_VOLTE_DROP_V_VT10086) as NB_VOLTE_DROP_V_VT10086
            from ${CMCCDROP_KPI_ALL_SUMMARY}
              GROUP BY phour,province,scity,area,vendor,pcrf_ip,ci,rx_abort_cause
        ]]></body>
    </summary>
    <result id="F_V_BXDR_DROP_ALL_H" for="F_V_BXDR_DROP_ALL_H_SUMMARY" to="spark1" title="spark1"/>

    <summary id="F_V_BXDR_DROP_PROV_CITY_CI_H_SUMMARY" in="CMCCDROP_KPI_ALL_SUMMARY">
        <body><![CDATA[
            select
              phour,province,scity,ci,
              sum(CALL_ANS_SUCC) as CALL_ANS_SUCC,
              sum(NB_VOLTE_DROP) as NB_VOLTE_DROP,
              sum(CALL_ANS_A_SUCC) as CALL_ANS_A_SUCC,
              sum(NB_VOLTE_DROP_A) as NB_VOLTE_DROP_A,
              sum(CALL_ANS_V_SUCC) as CALL_ANS_V_SUCC,
              sum(NB_VOLTE_DROP_V) as NB_VOLTE_DROP_V,
              sum(CALL_ANS_MO_SUCC) as CALL_ANS_MO_SUCC,
              sum(CALL_ANS_A_MO_SUCC) as CALL_ANS_A_MO_SUCC,
              sum(CALL_ANS_V_MO_SUCC) as CALL_ANS_V_MO_SUCC,
              sum(NB_VOLTE_DROP_MO) as NB_VOLTE_DROP_MO,
              sum(NB_VOLTE_DROP_A_MO) as NB_VOLTE_DROP_A_MO,
              sum(NB_VOLTE_DROP_V_MO) as NB_VOLTE_DROP_V_MO,
              sum(CALL_ANS_MT_SUCC) as CALL_ANS_MT_SUCC,
              sum(CALL_ANS_A_MT_SUCC) as CALL_ANS_A_MT_SUCC,
              sum(CALL_ANS_V_MT_SUCC) as CALL_ANS_V_MT_SUCC,
              sum(NB_VOLTE_DROP_MT) as NB_VOLTE_DROP_MT,
              sum(NB_VOLTE_DROP_A_MT) as NB_VOLTE_DROP_A_MT,
              sum(NB_VOLTE_DROP_V_MT) as NB_VOLTE_DROP_V_MT,
              sum(NB_ABORT_CAUSE0) as NB_ABORT_CAUSE0,
              sum(NB_ABORT_CAUSE1) as NB_ABORT_CAUSE1,
              sum(NB_ABORT_CAUSE2) as NB_ABORT_CAUSE2,
              sum(NB_ABORT_CAUSE4) as NB_ABORT_CAUSE4,
              sum(CALL_ANS_SUCC_VTV) as CALL_ANS_SUCC_VTV,
              sum(NB_VOLTE_DROP_VTV) as NB_VOLTE_DROP_VTV,
              sum(CALL_ANS_SUCC_A_VTV) as CALL_ANS_SUCC_A_VTV,
              sum(NB_VOLTE_DROP_A_VTV) as NB_VOLTE_DROP_A_VTV,
              sum(CALL_ANS_SUCC_V_VTV) as CALL_ANS_SUCC_V_VTV,
              sum(NB_VOLTE_DROP_V_VTV) as NB_VOLTE_DROP_V_VTV,
              sum(CALL_ANS_SUCC_V_VT10086) as CALL_ANS_SUCC_V_VT10086,
              sum(NB_VOLTE_DROP_V_VT10086) as NB_VOLTE_DROP_V_VT10086
            from ${CMCCDROP_KPI_ALL_SUMMARY}
              GROUP BY phour,province,scity,ci
        ]]></body>
    </summary>
    <result id="F_V_BXDR_DROP_PROV_CITY_CI_H" for="F_V_BXDR_DROP_PROV_CITY_CI_H_SUMMARY" to="spark1" title="spark1"/>

    <summary id="F_V_BXDR_DROP_TERMINAL_H_SUMMARY" in="CMCCDROP_KPI_ALL_SUMMARY">
        <body><![CDATA[
            select
              phour,province,scity,terminal,
              sum(CALL_ANS_SUCC) as CALL_ANS_SUCC,
              sum(NB_VOLTE_DROP) as NB_VOLTE_DROP,
              sum(CALL_ANS_A_SUCC) as CALL_ANS_A_SUCC,
              sum(NB_VOLTE_DROP_A) as NB_VOLTE_DROP_A,
              sum(CALL_ANS_V_SUCC) as CALL_ANS_V_SUCC,
              sum(NB_VOLTE_DROP_V) as NB_VOLTE_DROP_V,
              sum(CALL_ANS_MO_SUCC) as CALL_ANS_MO_SUCC,
              sum(CALL_ANS_A_MO_SUCC) as CALL_ANS_A_MO_SUCC,
              sum(CALL_ANS_V_MO_SUCC) as CALL_ANS_V_MO_SUCC,
              sum(NB_VOLTE_DROP_MO) as NB_VOLTE_DROP_MO,
              sum(NB_VOLTE_DROP_A_MO) as NB_VOLTE_DROP_A_MO,
              sum(NB_VOLTE_DROP_V_MO) as NB_VOLTE_DROP_V_MO,
              sum(CALL_ANS_MT_SUCC) as CALL_ANS_MT_SUCC,
              sum(CALL_ANS_A_MT_SUCC) as CALL_ANS_A_MT_SUCC,
              sum(CALL_ANS_V_MT_SUCC) as CALL_ANS_V_MT_SUCC,
              sum(NB_VOLTE_DROP_MT) as NB_VOLTE_DROP_MT,
              sum(NB_VOLTE_DROP_A_MT) as NB_VOLTE_DROP_A_MT,
              sum(NB_VOLTE_DROP_V_MT) as NB_VOLTE_DROP_V_MT,
              sum(NB_ABORT_CAUSE0) as NB_ABORT_CAUSE0,
              sum(NB_ABORT_CAUSE1) as NB_ABORT_CAUSE1,
              sum(NB_ABORT_CAUSE2) as NB_ABORT_CAUSE2,
              sum(NB_ABORT_CAUSE4) as NB_ABORT_CAUSE4,
              sum(CALL_ANS_SUCC_VTV) as CALL_ANS_SUCC_VTV,
              sum(NB_VOLTE_DROP_VTV) as NB_VOLTE_DROP_VTV,
              sum(CALL_ANS_SUCC_A_VTV) as CALL_ANS_SUCC_A_VTV,
              sum(NB_VOLTE_DROP_A_VTV) as NB_VOLTE_DROP_A_VTV,
              sum(CALL_ANS_SUCC_V_VTV) as CALL_ANS_SUCC_V_VTV,
              sum(NB_VOLTE_DROP_V_VTV) as NB_VOLTE_DROP_V_VTV,
              sum(CALL_ANS_SUCC_V_VT10086) as CALL_ANS_SUCC_V_VT10086,
              sum(NB_VOLTE_DROP_V_VT10086) as NB_VOLTE_DROP_V_VT10086
            from ${CMCCDROP_KPI_ALL_SUMMARY}
              GROUP BY phour,province,scity,terminal
        ]]></body>
    </summary>
    <result id="F_V_BXDR_DROP_TERMINAL_H" for="F_V_BXDR_DROP_TERMINAL_H_SUMMARY" to="spark1" title="spark1"/>

province,scity,area,vendor,terminal,ims
province,scity,area,vendor
province,scity,vendor
province,scity,area
province,scity
province,area,vendor
province,vendor
province,area
province
area,vendor
vendor
area
