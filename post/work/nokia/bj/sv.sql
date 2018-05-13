select
  count(1) as SRVCC_ATTEMPT,
  sum(case when s.REQUEST_RESULT <> 16 then 1 else null end) as SRVCC_RESP_FAIL,
  sum(case when s.REQUEST_RESULT = 16 then 1 else null end) as SRVCC_RESP_SUCC,
  sum(case when s.REQUEST_RESULT = 16 then s.RESP_DELAY end) as SRVCC_RESP_LATENCY_ALL,
  sum(case when s.RESULT = 0 then 1 else null end) as SRVCC_COMP_SUCC,
  sum(case when s.RESULT <> 0 then 1 else null end ) as SRVCC_COMP_FAIL,
  sum(case when s.RESULT = 0 then s.SV_DELAY end ) as SRVCC_COMP_LATENCY_ALL,
  sum(case when s.RESULT = 16 then (s.SV_DELAY-s.RESP_DELAY) end ) as SRVCC_MEDIA_LATENCY_ALL
from sv as s;