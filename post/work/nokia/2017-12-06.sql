select
  sum(1) as SRVCC_ATTEMPT,
  sum(case when s.REQUEST_RESULT <> 16 then 1 end) as SRVCC_RESP_FAIL,
  sum(case when s.REQUEST_RESULT = 16 then 1 end) as SRVCC_RESP_SUCC,
  sum(case when s.REQUEST_RESULT = 16 then s.RESP_DELAY end) as SRVCC_RESP_LATENCY_ALL,
  sum(case when s.RESULT = 0 then 1 end) as SRVCC_COMP_SUCC,
  sum(case when s.RESULT <> 0 then 1 end ) as SRVCC_COMP_FAIL,
  sum(case when s.RESULT = 0 then s.SV_DELAY end ) as SRVCC_COMP_LATENCY_ALL,
  sum(case when s.RESULT = 16 then (s.SV_DELAY-s.RESP_DELAY) end ) as SRVCC_MEDIA_LATENCY_ALL
from sv as s


explain select
  sum(case when b.ANSWER_TIME > 0 then 1 end) as CALL_ANS_SUCC,
  sum(case when b.ANSWER_TIME > 0 and b.TS_DROP>0 then 1 end) as NB_VOLTE_DROP,
  sum(case when b.ANSWER_TIME > 0 and b.SERVICE_TYPE=1 then 1 end) as CALL_ANS_A_SUCC,
  sum(case when b.ANSWER_TIME > 0 and b.TS_DROP>0 and b.SERVICE_TYPE=1 then 1 end) as NB_VOLTE_DROP_A,
  sum(case when b.ANSWER_TIME>0 and b.SERVICE_TYPE=2 > 0 then 1 end) as CALL_ANS_V_SUCC,

  sum(case when b.ANSWER_TIME>0 and b.TS_DROP>0 and b.SERVICE_TYPE=2 then 1 end) as NB_VOLTE_DROP_V,
  sum(case when b.ANSWER_TIME>0 and b.CALL_SIDE=1 then 1 end) as CALL_ANS_MO_SUCC,
  sum(case when b.ANSWER_TIME>0 and b.CALL_SIDE=1 and b.SERVICE_TYPE=1 then 1 end) as CALL_ANS_A_MO_SUCC,
  sum(case when b.ANSWER_TIME>0 and b.CALL_SIDE=1 and b.SERVICE_TYPE=2 then 1 end) as CALL_ANS_V_MO_SUCC,
  sum(case when b.ANSWER_TIME>0 and b.TS_DROP>0 and b.CALL_SIDE=1 then 1 end) as NB_VOLTE_DROP_MO,

  sum(case when b.ANSWER_TIME>0 and b.TS_DROP>0 and b.CALL_SIDE=1 and b.SERVICE_TYPE=1 then 1 end) as NB_VOLTE_DROP_A_MO,
  sum(case when b.ANSWER_TIME>0 and b.TS_DROP>0 and b.CALL_SIDE=1 and b.SERVICE_TYPE=2 then 1 end) as NB_VOLTE_DROP_V_MO,
  sum(case when b.ANSWER_TIME>0 and b.CALL_SIDE=2 then 1 end) as CALL_ANS_MT_SUCC,
  sum(case when b.ANSWER_TIME>0 and b.CALL_SIDE=2 and b.SERVICE_TYPE=1 then 1 end) as CALL_ANS_A_MT_SUCC,
  sum(case when b.ANSWER_TIME>0 and b.CALL_SIDE=2 and b.SERVICE_TYPE=2 then 1 end) as CALL_ANS_V_MT_SUCC,

  sum(case when b.ANSWER_TIME>0 and b.TS_DROP>0 and b.CALL_SIDE=2 then 1 end) as NB_VOLTE_DROP_MT,
  sum(case when b.ANSWER_TIME>0 and b.TS_DROP>0 and b.CALL_SIDE=2 and b.SERVICE_TYPE=1 then 1 end) as NB_VOLTE_DROP_A_MT,
  sum(case when b.ANSWER_TIME>0 and b.TS_DROP>0 and b.CALL_SIDE=2 and b.SERVICE_TYPE=2 then 1 end) as NB_VOLTE_DROP_V_MT,
  sum(case when b.ANSWER_TIME>0 and b.Rx_ABORT_CAUSE=0 then 1 end) as NB_ABORT_CAUSE0,
  sum(case when b.ANSWER_TIME>0 and b.Rx_ABORT_CAUSE=1 then 1 end) as NB_ABORT_CAUSE1,

  sum(case when b.ANSWER_TIME>0 and b.Rx_ABORT_CAUSE=2 then 1 end) as NB_ABORT_CAUSE2,
  sum(case when b.ANSWER_TIME>0 and b.Rx_ABORT_CAUSE=4 then 1 end) as NB_ABORT_CAUSE4,
  -- sum(case when b.ANSWER_TIME>0 and b.SOURCE_ACCESS_TYPE IN(1,2) and b.DEST_ACCESS_TYPE IN(1,2) then 1 end) as CALL_ANS_SUCC_VTV,
  -- sum(case when b.ANSWER_TIME>0 and b.TS_DROP>0 and b.SOURCE_ACCESS_TYPE IN(1,2) and b.DEST_ACCESS_TYPE IN(1,2) then 1 end) as NB_VOLTE_DROP_VTV,
  -- sum(case when b.ANSWER_TIME>0 and b.SOURCE_ACCESS_TYPE IN(1,2) and b.DEST_ACCESS_TYPE IN(1,2) and b.SERVICE_TYPE=1 then 1 end) as CALL_ANS_SUCC_A_VTV,

  -- sum(case when b.ANSWER_TIME>0 and b.TS_DROP>0 and b.SOURCE_ACCESS_TYPE IN(1,2) and b.DEST_ACCESS_TYPE IN(1,2) and b.SERVICE_TYPE=1 then 1 end) as NB_VOLTE_DROP_A_VTV,
  -- sum(case when ANSWER_TIME>0 and b.SOURCE_ACCESS_TYPE IN(1,2) and b.DEST_ACCESS_TYPE IN(1,2) and b.SERVICE_TYPE=2 then 1 end) as CALL_ANS_SUCC_V_VTV,
  -- sum(case when ANSWER_TIME>0 and b.TS_DROP>0 and b.SOURCE_ACCESS_TYPE IN(1,2) and b.DEST_ACCESS_TYPE IN(1,2) and b.SERVICE_TYPE=2 then 1 end) as NB_VOLTE_DROP_V_VTV,
  sum(case when ANSWER_TIME>0 and b.CALLED_NUMBER IN(10086,8610086) then 1 end) as CALL_ANS_SUCC_V_VT10086,
  sum(case when ANSWER_TIME>0 and b.TS_DROP>0 and b.CALLED_NUMBER IN(10086,8610086) then 1 end) as NB_VOLTE_DROP_V_VT10086

from bigxdrcmccdrop as b;

