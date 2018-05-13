select
  sum(1) as SRVCC_ATTEMPT,
  sum(case
      when s.REQUEST_RESULT <> 16 then 1
  end) as SRVCC_RESP_FAIL,
  sum(case
    when s.REQUEST_RESULT = 16 then 1
  end) as SRVCC_RESP_SUCC,
  (sum(case
    when s.REQUEST_RESULT = 16 then 1
  end)+sum(s.RESP_DELAY)) as SRVCC_RESP_LATENCY_ALL,
  sum(case
    when s.RESULT = 0 then 1
  end) as SRVCC_COMP_SUCC,
  sum(
    case
      when s.RESULT <> 0 then 1
    end
  ) as SRVCC_COMP_FAIL,
  (sum(
    case
      when s.RESULT = 0 then 1
    end
  )+sum(s.SV_DELAY)) as SRVCC_COMP_LATENCY_ALL,
  (sum(
       case
         when s.RESULT = 16 then 1
       end
  )+(sum(s.SV_DELAY)-sum(s.RESP_DELAY))) as SRVCC_MEDIA_LATENCY_ALL
from sv as s