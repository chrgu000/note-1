select '区域(栅格/小区)性能' as type, 'MR覆盖类' as class, '弱覆盖' as indicator, 'MR<-110dBm' as indicator_en, a.`MR<-110dBm` as indicatorvalue, d.mrnum as nums, c.ci as ci  from f_do_vl_mr_poor_m a, f_do_vl_mr_poor_lev_m b, f_do_vl_mr_overlap_m c, f_do_vl_mr_overlap_lev_m d, cfg_vl_cel_prob_thr f where 1=1 and gele(b.`lev_MR<-110dBm`,f.relation,f.bad_thr) and gele(c.mrnum,f.relation2,f.num_thr) and eq4(a.city,b.city,c.city,d.city) and eq4(a.grid,b.grid,cigrid,d.grid) and eq4(a.ci,b.ci,c.ci,d.ci)
union all
select '区域(栅格/小区)性能' as type, 'MR覆盖类' as class, '重叠覆盖' as indicator, 'overlap' as indicator_en, c.overlap as indicatorvalue, d.mrnum as nums, c.ci as ci  from f_do_vl_mr_poor_m a, f_do_vl_mr_poor_lev_m b, f_do_vl_mr_overlap_m c, f_do_vl_mr_overlap_lev_m d, cfg_vl_cel_prob_thr f where 1=1 and gele(d.overlap,f.relation,f.bad_thr) and gele(c.mrnum,f.relation2,f.num_thr) and eq4(a.city,b.city,c.city,d.city) and eq4(a.grid,b.grid,cigrid,d.grid) and eq4(a.ci,b.ci,c.ci,d.ci)
union all
select '区域(栅格/小区)性能' as type, 'MR覆盖类' as class, '上行干扰比例' as indicator, 'UL_interface' as indicator_en, a.UL_interface as indicatorvalue, d.mrnum as nums, c.ci as ci  from f_do_vl_mr_poor_m a, f_do_vl_mr_poor_lev_m b, f_do_vl_mr_overlap_m c, f_do_vl_mr_overlap_lev_m d, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_UL_interface,f.relation,f.bad_thr) and gele(c.mrnum,f.relation2,f.num_thr) and eq4(a.city,b.city,c.city,d.city) and eq4(a.grid,b.grid,cigrid,d.grid) and eq4(a.ci,b.ci,c.ci,d.ci)
union all
select '区域(栅格/小区)性能' as type, 'MR覆盖类' as class, '丢包比例' as indicator, 'UL_lost>1%' as indicator_en, a.`UL_lost>1%` as indicatorvalue, d.mrnum as nums, c.ci as ci  from f_do_vl_mr_poor_m a, f_do_vl_mr_poor_lev_m b, f_do_vl_mr_overlap_m c, f_do_vl_mr_overlap_lev_m d, cfg_vl_cel_prob_thr f where 1=1 and gele(b.`lev_UL_lost>1%`,f.relation,f.bad_thr) and gele(c.mrnum,f.relation2,f.num_thr) and eq4(a.city,b.city,c.city,d.city) and eq4(a.grid,b.grid,cigrid,d.grid) and eq4(a.ci,b.ci,c.ci,d.ci)
union all
select '区域(栅格/小区)性能' as type, 'MR覆盖类' as class, '采样点个数' as indicator, 'mrnum' as indicator_en, c.mrnum as indicatorvalue, 5 as nums, c.ci as ci from f_do_vl_mr_poor_m a, f_do_vl_mr_poor_lev_m b, f_do_vl_mr_overlap_m c, f_do_vl_mr_overlap_lev_m d, cfg_vl_cel_prob_thr f where 1=1 and eq4(a.city,b.city,c.city,d.city) and eq4(a.grid,b.grid,cigrid,d.grid) and eq4(a.ci,b.ci,c.ci,d.ci)

接入类

select '区域(栅格/小区)性能' as type, '接入类' as class, '无线接通率' as indicator, 'wl_succ_rate' as indicator_en, a.wl_succ_rate as indicatorvalue, b.erab_conn_att as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_wl_succ_rate,f.relation,f.bad_thr) and gele(c.day_wl_succ_rate,f.relation3,f.day_thr) and gele(a.erab_conn_att,f.relation2,f.num_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all
select '区域(栅格/小区)性能' as type, '接入类' as class, 'RRC成功率' as indicator, 'rrc_succ_rate' as indicator_en, a.rrc_succ_rate as indicatorvalue, b.rrc_conn_att as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_rrc_succ_rate,f.relation,f.bad_thr) and gele(c.days_rrc_succ_rate,f.relation3,f.day_thr) and gele(a.rrc_conn_att,f.relation2,f.num_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all
select '区域(栅格/小区)性能' as type, '接入类' as class, 'ERAB成功率' as indicator, 'erab_succ_rate' as indicator_en, a.erab_succ_rate as indicatorvalue, b.erab_conn_att as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_erab_succ_rate,f.relation,f.bad_thr) and gele(c.days_erab_succ_rate,f.relation3,f.day_thr) and gele(a.erab_conn_att,f.relation2,f.num_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all
select '区域(栅格/小区)性能' as type, '接入类' as class, 'QCI1无线接通率' as indicator, 'wl_succ_rate_qci1' as indicator_en, a.wl_succ_rate_qci1 as indicatorvalue, b.erab_att_qci1 as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_wl_succ_rate_qci1,f.relation,f.bad_thr) and gele(c.days_wl_succ_rate_qci1,f.relation3,f.day_thr) and gele(a.erab_att_qci1,f.relation2,f.num_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all
select '区域(栅格/小区)性能' as type, '接入类' as class, 'QCI1ERAB成功率' as indicator, 'erab_succ_rate_qci1' as indicator_en, a.erab_succ_rate_qci1 as indicatorvalue, b.erab_att_qci1 as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_erab_succ_rate_qci1,f.relation,f.bad_thr) and gele(c.days_erab_succ_rate_qci1,f.relation3,f.day_thr) and gele(a.erab_att_qci1,f.relation2,f.num_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all
select '区域(栅格/小区)性能' as type, '接入类' as class, 'RRC重建比例' as indicator, 'rrc_reconf_rate' as indicator_en, a.rrc_reconf_rate as indicatorvalue, b.rrc_reconf as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_rrc_reconf_rate,f.relation,f.bad_thr) and gele(c.days_rrc_reconf_rate,f.relation3,f.day_thr) and gele(a.rrc_reconf,f.relation2,f.num_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all

select '区域(栅格/小区)性能' as type, '移动性' as class, '切换成功率' as indicator, 'ho_succ_rate' as indicator_en, a.ho_succ_rate as indicatorvalue, (b.interenb_ho_s1_out_att+b.interenb_ho_x2_out_att+b.intraenb_ho_out_att) as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_ho_succ_rate,f.relation,f.bad_thr) and gele(c.days_ho_succ_rate,f.relation3,f.day_thr) and gele((a.interenb_ho_s1_out_att+a.interenb_ho_x2_out_att+a.intraenb_ho_out_att),f.relation2,f.num_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all
select '区域(栅格/小区)性能' as type, '移动性' as class, 'eSRVCC成功率' as indicator, 'esrvcc_succ_rate' as indicator_en, a.esrvcc_succ_rate as indicatorvalue, b.ho_to_2g_att as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_esrvcc_succ_rate,f.relation,f.bad_thr) and gele(c.days_esrvcc_succ_rate,f.relation3,f.day_thr) and gele(a.ho_to_2g_att,f.relation2,f.num_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all

select '区域(栅格/小区)性能' as type, '保持类' as class, '无线掉话率' as indicator, 'wl_drop_rate' as indicator_en, a.wl_drop_rate as indicatorvalue, b.erab_conn_succ as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_wl_drop_rate,f.relation,f.bad_thr) and gele(c.days_wl_drop_rate,f.relation3,f.day_thr) and gele(a.erab_conn_succ,f.relation2,f.num_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all
select '区域(栅格/小区)性能' as type, '保持类' as class, 'VoLTE掉话率' as indicator, 'erab_drop_rate_qci1' as indicator_en, a.erab_drop_rate_qci1 as indicatorvalue, b.erab_conn_succ as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_erab_drop_rate_qci1,f.relation,f.bad_thr) and gele(c.days_erab_drop_rate_qci1,f.relation3,f.day_thr) and gele(a.erab_conn_succ,f.relation2,f.num_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all
select '区域(栅格/小区)性能' as type, '保持类' as class, 'ESRVCC比例' as indicator, 'esRVCC_rate' as indicator_en, a.esRVCC_rate as indicatorvalue, b.lev_ho_to_2g_att as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_esRVCC_rate,f.relation,f.bad_thr) and gele(c.days_esRVCC_rate,f.relation3,f.day_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all


驻留类

select '区域(栅格/小区)性能' as type, '驻留类' as class, '数据驻留比例' as indicator, 'data_resid_rate' as indicator_en, a.data_resid_rate as indicatorvalue, 5 as nums, c.ci as ci from f_do_vl_fenliu_lte_m a, f_do_vl_fenliu_lte_lev_m b, f_do_vl_fenliu_gsm_m c, f_do_vl_fenliu_gsm_lev_m d, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_data_resid_rate,f.relation,f.bad_thr) and eq4(a.city,b.city,c.city,d.city) and eq4(a.grid,b.grid,cigrid,d.grid) and eq4(a.ci,b.ci,c.ci,d.ci)
union all
select '区域(栅格/小区)性能' as type, '驻留类' as class, '时间驻留比例' as indicator, 'latency_resid_rate' as indicator_en, a.latency_resid_rate as indicatorvalue, 5 as nums, c.ci as ci from f_do_vl_fenliu_lte_m a, f_do_vl_fenliu_lte_lev_m b, f_do_vl_fenliu_gsm_m c, f_do_vl_fenliu_gsm_lev_m d, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_latency_resid_rate,f.relation,f.bad_thr) and eq4(a.city,b.city,c.city,d.city) and eq4(a.grid,b.grid,cigrid,d.grid) and eq4(a.ci,b.ci,c.ci,d.ci)
union all
select '区域(栅格/小区)性能' as type, '驻留类' as class, '倒流流量比例' as indicator, 'back_traffic_rate' as indicator_en, c.back_traffic_rate as indicatorvalue, 5 as nums, c.ci as ci from f_do_vl_fenliu_lte_m a, f_do_vl_fenliu_lte_lev_m b, f_do_vl_fenliu_gsm_m c, f_do_vl_fenliu_gsm_lev_m d, cfg_vl_cel_prob_thr f where 1=1 and gele(d.lev_back_traffic_rate,f.relation,f.bad_thr) and eq4(a.city,b.city,c.city,d.city) and eq4(a.grid,b.grid,cigrid,d.grid) and eq4(a.ci,b.ci,c.ci,d.ci)
union all
select '区域(栅格/小区)性能' as type, '驻留类' as class, '倒流流量' as indicator, 'back_traffic' as indicator_en, c.back_traffic as indicatorvalue, 5 as nums, c.ci as ci from f_do_vl_fenliu_lte_m a, f_do_vl_fenliu_lte_lev_m b, f_do_vl_fenliu_gsm_m c, f_do_vl_fenliu_gsm_lev_m d, cfg_vl_cel_prob_thr f where 1=1 and gele(d.lev_back_traffic,f.relation,f.bad_thr) and eq4(a.city,b.city,c.city,d.city) and eq4(a.grid,b.grid,cigrid,d.grid) and eq4(a.ci,b.ci,c.ci,d.ci)
union all
select '区域(栅格/小区)性能' as type, '驻留类' as class, '高倒流用户数' as indicator, '4g_low_resid_users' as indicator_en, c.4g_low_resid_users as indicatorvalue, 5 as nums, c.ci as ci from f_do_vl_fenliu_lte_m a, f_do_vl_fenliu_lte_lev_m b, f_do_vl_fenliu_gsm_m c, f_do_vl_fenliu_gsm_lev_m d, cfg_vl_cel_prob_thr f where 1=1 and gele(d.lev_4g_low_resid_users,f.relation,f.bad_thr) and eq4(a.city,b.city,c.city,d.city) and eq4(a.grid,b.grid,cigrid,d.grid) and eq4(a.ci,b.ci,c.ci,d.ci)
union all

容量类


select '区域(栅格/小区)性能' as type, '容量类' as class, 'PRB上行无线利用率' as indicator, 'prb_ul_utiliz' as indicator_en, a.prb_ul_utiliz as indicatorvalue, 5 as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_prb_ul_utiliz,f.relation,f.bad_thr) and gele(c.days_prb_ul_utiliz,f.relation3,f.day_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all
select '区域(栅格/小区)性能' as type, '容量类' as class, 'PRB下行无线利用率' as indicator, 'prb_dl_utiliz' as indicator_en, a.prb_dl_utiliz as indicatorvalue, 5 as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_prb_dl_utiliz,f.relation,f.bad_thr) and gele(c.days_prb_dl_utiliz,f.relation3,f.day_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all
select '区域(栅格/小区)性能' as type, '容量类' as class, '有效RRC连接平均数' as indicator, 'rrc_conn_avg' as indicator_en, a.rrc_conn_avg as indicatorvalue, 5 as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_rrc_conn_avg,f.relation,f.bad_thr) and gele(c.days_rrc_conn_avg,f.relation3,f.day_thr) and gele(b.lev_rrc_conn_max,f.relation,f.bad_thr) and gele(c.days_rrc_conn_max,f.relation3,f.day_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all
select '区域(栅格/小区)性能' as type, '容量类' as class, '空口上行业务字节数' as indicator, 'wl_ul_bytes' as indicator_en, a.wl_ul_bytes as indicatorvalue, 5 as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_wl_ul_bytes,f.relation,f.bad_thr) and gele(c.days_wl_ul_bytes,f.relation3,f.day_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all
select '区域(栅格/小区)性能' as type, '容量类' as class, '空口下行业务字节数' as indicator, 'wl_dl_bytes' as indicator_en, a.wl_dl_bytes as indicatorvalue, 5 as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_wl_dl_bytes,f.relation,f.bad_thr) and gele(c.days_wl_dl_bytes,f.relation3,f.day_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all

2G类

select '区域(栅格/小区)性能' as type, '2G类' as class, '拥塞GSM' as indicator, 'DISTURB' as indicator_en, a.DISTURB as indicatorvalue, 5 as nums, c.ci as ci from f_do_vl_kpi_gsm_w a, f_do_vl_kpi_gsm_lev_w b, f_do_vl_kpi_gsm_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_DISTURB,f.relation,f.bad_thr) and gele(c.days_DISTURB,f.relation3,f.day_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all
select '区域(栅格/小区)性能' as type, '2G类' as class, '干扰比例GSM' as indicator, 'SD_BLK' as indicator_en, a.SD_BLK as indicatorvalue, 5 as nums, c.ci as ci from f_do_vl_kpi_gsm_w a, f_do_vl_kpi_gsm_lev_w b, f_do_vl_kpi_gsm_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_poor_cov,f.relation,f.bad_thr) and gele(c.days_poor_cov,f.relation3,f.day_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all
select '区域(栅格/小区)性能' as type, '2G类' as class, '弱覆盖比例GSM' as indicator, 'poor_cov' as indicator_en, a.poor_cov as indicatorvalue, 5 as nums, c.ci as ci from f_do_vl_kpi_gsm_w a, f_do_vl_kpi_gsm_lev_w b, f_do_vl_kpi_gsm_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_poor_cov,f.relation,f.bad_thr) and gele(c.days_poor_cov,f.relation3,f.day_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all

感知类

select '区域(栅格/小区)性能' as type, '感知类' as class, '用户面下行平均时延' as indicator, 'up_dl_latency' as indicator_en, a.up_dl_latency as indicatorvalue, 5 as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_up_dl_latency,f.relation,f.bad_thr) and gele(c.days_up_dl_latency,f.relation3,f.day_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all
select '区域(栅格/小区)性能' as type, '感知类' as class, '用户面上行丢包率' as indicator, 'up_ul_pklost_rate' as indicator_en, a.up_ul_pklost_rate as indicatorvalue, 5 as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_up_ul_pklost_rate,f.relation,f.bad_thr) and gele(c.days_up_ul_pklost_rate,f.relation3,f.day_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)
union all
select '区域(栅格/小区)性能' as type, '感知类' as class, '用户面下行丢包率' as indicator, 'up_dl_pklost_rate' as indicator_en, a.up_dl_pklost_rate as indicatorvalue, 5 as nums, c.ci as ci from f_do_vl_kpi_lte_w a, f_do_vl_kpi_lte_lev_ci_w b, f_do_vl_kpi_lte_days_w c, cfg_vl_cel_prob_thr f where 1=1 and gele(b.lev_up_dl_pklost_rate,f.relation,f.bad_thr) and gele(c.days_up_dl_pklost_rate,f.relation3,f.day_thr) and eq3(a.city,b.city,c.city) and eq3(a.grid,b.grid,cigrid) and eq3(a.ci,b.ci,c.ci)


