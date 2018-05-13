select
  a.`MR<-110dBm`
from
  f_do_vl_mr_poor_m a,
  f_do_vl_mr_poor_lev_m b,
  f_do_vl_mr_overlap_m c,
  f_do_vl_mr_overlap_lev_m d,
  cfg_vl_cel_prob_thr f
where
  1=1
  and gele(b.`lev_MR<-110dBm`,f.relation,f.bad_thr)
  and gele(c.mrnum,f.relation2,f.num_thr)
  and a.city=b.city=c.city=d.city
  and a.grid=b.grid=cigrid=d.grid
  and a.ci=b.ci=c.ci=d.ci

select
  c.overlap
from
  f_do_vl_mr_poor_m a,
  f_do_vl_mr_poor_lev_m b,
  f_do_vl_mr_overlap_m c,
  f_do_vl_mr_overlap_lev_m d,
  cfg_vl_cel_prob_thr f
where
  1=1
  and gele(d.overlap,f.relation,f.bad_thr)
  and gele(c.mrnum,f.relation2,f.num_thr)
  and a.city=b.city=c.city=d.city
  and a.grid=b.grid=cigrid=d.grid
  and a.ci=b.ci=c.ci=d.ci


select
  a.UL_interface
from
  f_do_vl_mr_poor_m a,
  f_do_vl_mr_poor_lev_m b,
  f_do_vl_mr_overlap_m c,
  f_do_vl_mr_overlap_lev_m d,
  cfg_vl_cel_prob_thr f
where
  1=1
  and gele(b.lev_UL_interface,f.relation,f.bad_thr)
  and gele(c.mrnum,f.relation2,f.num_thr)
  and a.city=b.city=c.city=d.city
  and a.grid=b.grid=cigrid=d.grid
  and a.ci=b.ci=c.ci=d.ci


select
  a.`UL_lost>1%`
from
  f_do_vl_mr_poor_m a,
  f_do_vl_mr_poor_lev_m b,
  f_do_vl_mr_overlap_m c,
  f_do_vl_mr_overlap_lev_m d,
  cfg_vl_cel_prob_thr f
where
  1=1
  and gele(b.`lev_UL_lost>1%`,f.relation,f.bad_thr)
  and gele(c.mrnum,f.relation2,f.num_thr)
  and a.city=b.city=c.city=d.city
  and a.grid=b.grid=cigrid=d.grid
  and a.ci=b.ci=c.ci=d.ci


select
  c.mrnum
from
  f_do_vl_mr_poor_m a,
  f_do_vl_mr_poor_lev_m b,
  f_do_vl_mr_overlap_m c,
  f_do_vl_mr_overlap_lev_m d,
  cfg_vl_cel_prob_thr f
where
  1=1
  and a.city=b.city=c.city=d.city
  and a.grid=b.grid=cigrid=d.grid
  and a.ci=b.ci=c.ci=d.ci


接入类

select
  a.wl_succ_rate
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and gele(b.lev_wl_succ_rate,f.relation,f.bad_thr)
  and gele(c.day_wl_succ_rate,f.relation3,f.day_thr)
  and gele(a.erab_conn_att,f.relation2,f.num_thr)
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci


select
  a.rrc_succ_rate
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_rrc_succ_rate||f.relation||f.bad_thr
  and c.days_rrc_succ_rate||f.relation3||f.day_thr
  and a.rrc_conn_att||f.relation2||f.num_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci


select
  a.erab_succ_rate
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_erab_succ_rate||f.relation||f.bad_thr
  and c.days_erab_succ_rate||f.relation3||f.day_thr
  and a.erab_conn_att||f.relation2||f.num_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci


select
  a.rrc_conn_att
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci


select
  a.erab_conn_att
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci


select
  a.wl_succ_rate_qci1
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_wl_succ_rate_qci1||f.relation||f.bad_thr
  and c.days_wl_succ_rate_qci1||f.relation3||f.day_thr
  and a.erab_att_qci1||f.relation2||f.num_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci


select
  a.erab_succ_rate_qci1
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_erab_succ_rate_qci1||f.relation||f.bad_thr
  and c.days_erab_succ_rate_qci1||f.relation3||f.day_thr
  and a.erab_att_qci1||f.relation2||f.num_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci


select
  a.rrc_reconf_rate
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_rrc_reconf_rate||f.relation||f.bad_thr
  and c.days_rrc_reconf_rate||f.relation3||f.day_thr
  and a.rrc_reconf||f.relation2||f.num_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci


select
  a.ho_succ_rate
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_ho_succ_rate||f.relation||f.bad_thr
  and c.days_ho_succ_rate||f.relation3||f.day_thr
  and (a.interenb_ho_s1_out_att+a.interenb_ho_x2_out_att+a.intraenb_ho_out_att)||f.relation2||f.num_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci

select
  a.esrvcc_succ_rate
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_esrvcc_succ_rate||f.relation||f.bad_thr
  and c.days_esrvcc_succ_rate||f.relation3||f.day_thr
  and a.ho_to_2g_att||f.relation2||f.num_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci


select
  a.wl_drop_rate
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_wl_drop_rate||f.relation||f.bad_thr
  and c.days_wl_drop_rate||f.relation3||f.day_thr
  and a.erab_conn_succ||f.relation2||f.num_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci

select
  a.erab_drop_rate_qci1
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_erab_drop_rate_qci1||f.relation||f.bad_thr
  and c.days_erab_drop_rate_qci1||f.relation3||f.day_thr
  and a.erab_conn_succ||f.relation2||f.num_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci

select
  a.esRVCC_rate
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_esRVCC_rate||f.relation||f.bad_thr
  and c.days_esRVCC_rate||f.relation3||f.day_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci

驻留类

select
  a.data_resid_rate
from
  f_do_vl_fenliu_lte_m a,
  f_do_vl_fenliu_lte_lev_m b,
  f_do_vl_fenliu_gsm_m c,
  f_do_vl_fenliu_gsm_lev_m d,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_data_resid_rate||f.relation||f.bad_thr
  and a.city=b.city=c.city=d.city
  and a.grid=b.grid=cigrid=d.grid
  and a.ci=b.ci=c.ci=d.ci

select
  a.latency_resid_rate
from
  f_do_vl_fenliu_lte_m a,
  f_do_vl_fenliu_lte_lev_m b,
  f_do_vl_fenliu_gsm_m c,
  f_do_vl_fenliu_gsm_lev_m d,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_latency_resid_rate||f.relation||f.bad_thr
  and a.city=b.city=c.city=d.city
  and a.grid=b.grid=cigrid=d.grid
  and a.ci=b.ci=c.ci=d.ci

select
  c.back_traffic_rate
from
  f_do_vl_fenliu_lte_m a,
  f_do_vl_fenliu_lte_lev_m b,
  f_do_vl_fenliu_gsm_m c,
  f_do_vl_fenliu_gsm_lev_m d,
  cfg_vl_cel_prob_thr f
where
  1=1
  and d.lev_back_traffic_rate||f.relation||f.bad_thr
  and a.city=b.city=c.city=d.city
  and a.grid=b.grid=cigrid=d.grid
  and a.ci=b.ci=c.ci=d.ci

select
  c.back_traffic
from
  f_do_vl_fenliu_lte_m a,
  f_do_vl_fenliu_lte_lev_m b,
  f_do_vl_fenliu_gsm_m c,
  f_do_vl_fenliu_gsm_lev_m d,
  cfg_vl_cel_prob_thr f
where
  1=1
  and d.lev_back_traffic||f.relation||f.bad_thr
  and a.city=b.city=c.city=d.city
  and a.grid=b.grid=cigrid=d.grid
  and a.ci=b.ci=c.ci=d.ci

select
  c.total_traffic
from
  f_do_vl_fenliu_lte_m a,
  f_do_vl_fenliu_lte_lev_m b,
  f_do_vl_fenliu_gsm_m c,
  f_do_vl_fenliu_gsm_lev_m d,
  cfg_vl_cel_prob_thr f
where
  1=1
  and d.lev_total_traffic in(1,2)
  and a.city=b.city=c.city=d.city
  and a.grid=b.grid=cigrid=d.grid
  and a.ci=b.ci=c.ci=d.ci

select
  c.4g_low_resid_users
from
  f_do_vl_fenliu_lte_m a,
  f_do_vl_fenliu_lte_lev_m b,
  f_do_vl_fenliu_gsm_m c,
  f_do_vl_fenliu_gsm_lev_m d,
  cfg_vl_cel_prob_thr f
where
  1=1
  and d.lev_4g_low_resid_users||f.relation||f.bad_thr
  and a.city=b.city=c.city=d.city
  and a.grid=b.grid=cigrid=d.grid
  and a.ci=b.ci=c.ci=d.ci

容量类


select
  a.prb_ul_utiliz
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_prb_ul_utiliz||f.relation||f.bad_thr
  and c.days_prb_ul_utiliz||f.relation3||f.day_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci

select
  a.prb_dl_utiliz
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_prb_dl_utiliz||f.relation||f.bad_thr
  and c.days_prb_dl_utiliz||f.relation3||f.day_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci

select
  a.rrc_conn_avg
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_rrc_conn_avg||f.relation||f.bad_thr
  and c.days_rrc_conn_avg||f.relation3||f.day_thr
  and b.lev_rrc_conn_max||f.relation||f.bad_thr
  and c.days_rrc_conn_max||f.relation3||f.day_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci

select
  a.rrc_conn_occu
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  b.lev_rrc_conn_occu||f.relation||f.bad_thr
  and c.days_rrc_conn_occu||f.relation3||f.day_thr
  where f.indicator_en=rrc_conn_occu
  and b.lev_rrc_conn_occu_max=||f.relation||f.bad_thr
  and c.days_rrc_conn_occu_max||f.relation3||f.day_thr
  where f.indicator_en=rrc_conn_occu_max
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci


select
  a.wl_ul_bytes
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_wl_ul_bytes||f.relation||f.bad_thr
  and c.days_wl_ul_bytes||f.relation3||f.day_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci

select
  a.wl_dl_bytes
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_wl_dl_bytes||f.relation||f.bad_thr
  and c.days_wl_dl_bytes||f.relation3||f.day_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci

2G类

select
  a.DISTURB
from
  f_do_vl_kpi_gsm_w a,
  f_do_vl_kpi_gsm_lev_w b,
  f_do_vl_kpi_gsm_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_DISTURB||f.relation||f.bad_thr
  and c.days_DISTURB||f.relation3||f.day_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci


select
  a.SD_BLK
from
  f_do_vl_kpi_gsm_w a,
  f_do_vl_kpi_gsm_lev_w b,
  f_do_vl_kpi_gsm_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_poor_cov||f.relation||f.bad_thr
  and c.days_poor_cov||f.relation3||f.day_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci


select
  a.poor_cov
from
  f_do_vl_kpi_gsm_w a,
  f_do_vl_kpi_gsm_lev_w b,
  f_do_vl_kpi_gsm_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_poor_cov||f.relation||f.bad_thr
  and c.days_poor_cov||f.relation3||f.day_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci

感知类

select
  a.up_dl_latency
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_up_dl_latency||f.relation||f.bad_thr
  and c.days_up_dl_latency||f.relation3||f.day_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci

select
  a.up_ul_pklost_rate
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_up_ul_pklost_rate||f.relation||f.bad_thr
  and c.days_up_ul_pklost_rate||f.relation3||f.day_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci

select
  a.up_dl_pklost_rate
from
  f_do_vl_kpi_lte_w a,
  f_do_vl_kpi_lte_lev_ci_w b,
  f_do_vl_kpi_lte_days_w c,
  cfg_vl_cel_prob_thr f
where
  1=1
  and b.lev_up_dl_pklost_rate||f.relation||f.bad_thr
  and c.days_up_dl_pklost_rate||f.relation3||f.day_thr
  and a.city=b.city=c.city
  and a.grid=b.grid=cigrid
  and a.ci=b.ci=c.ci



