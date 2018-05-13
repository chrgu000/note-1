小区问题点详表：符合条件的较差指标都列入，方便统计问题点数
f_do_vl_cel_problem_w

select
  sdate as sdate,
  a.city as city,
  a.county as county,
  a.network_type as network_type,
  a.grid as grid,
  a.lac as lac,
  concat('460-00-',a.ci) as CGI,
  a.Cell_Name as Cell_Name,
  a.long as long,
  a.Lat as Lat,
  f.problemtypes as problemtypes,
  f.indicator as indicator,
  (select b.indicatorvalue from residential_area_limited as b where b.indicator_en=f.indicator and b.ci=a.ci) as indicatorvalue,
  f.weight,
  f.solution
from
  grid_para a,
  cfg_vl_cel_prob_thr f





f_do_vl_cel_problem_open_w

select
  sdate as sdate,
  b.city as city,
  b.county as county,
  b.network_type as network_type,
  b.grid as grid,
  (select b.grid_type where b.grid_type in ('城市')) as grid_type,
  b.long_center as long_center,
  b.lat_center as lat_center,
  (select a.value_tag where a.value_tag in ('高','极高')) as value_tag,
  (select a.network_tag where a.network_tag in ('差','极差')) as network_tag,
  b.problemtypes as problemtypes,
  b.indicator as indicator,
  b.indicatorvalue as indicatorvalue,
  b.weight as weight,
  b.solution as solution,
  b.lac as lac,
  b.cgi as CGI,
  b.Cell_Name as Cell_Name,
  b.long as long,
  b.Lat as Lat,
  (case
    when count(c.*)>0 then '是'
    else '否'
  end) as planedsite_urging
  -- if  (count(c.*)>0,“是”,“否”） as planedsite_urging,
  count(c.*) as num_site_urging,
  first(c.planed_site_name) as nam_site_urging
from
  f_do_vl_score_tag_grid_w a,
  f_do_vl_cel_problem_w b,
  planed_site c
where
  1=1
  and eq3(a.city,b.city,c.city)
  and eq3(a.grid,b.grid,c.grid)
  and eq3(a.cgi,b.cgi,c.cgi)


派单栅格汇总：汇聚派单小区的栅格信息
f_do_vl_grid_problem_open_w

select
 sdate as sdate,
 b.city as city,
 b.county as county,
 b.grid as grid,
 b.long_center as long_center,
 b.lat_center as lat_center,
 value_score as value_score,
 (select a.value_tag where a.value_tag in ('高','极高')) as value_tag,
 --a.value_tag     in(高,极高) as value_tag,
 network_score as network_score,
 (select a.network_tag where a.network_tag in ('差','极差')) as network_tag,
 --a.network_tag   in（差，极差） as network_tag,
 (select count(d.*) where d.network_type='4G') as cel4ingrid,
 (select count(d.*) where d.network_type='2G') as cel2ingrid,
 (select count(distinct b.cgi) where b.network_type='4G') as badcel4ingrid,
 (select count(distinct b.cgi) where b.network_type='2G') as badcel2ingrid,
 (select count(b.*)) as num_problem,
 (case
    when count(c.*)>0 then '是'
    else '否'
 end) as planedsite_urging,
 -- if  (count(c.*)>0,“是”,“否”） as planedsite_urging,
 count(c.*) as num_site_urging
from
  f_do_vl_score_tag_grid_w a,
  f_do_vl_cel_problem_open_w b,
  planed_site c,
  grid_para d
where
  1=1
  and eq4(a.city,b.city,c.city,d.city)
  and eq4(a.grid,b.grid,c.grid,d.grid)

问题栅格汇总：汇聚统计问题小区的栅格信息
f_do_vl_grid_problem_w

select
  sdate as sdate,
  b.city as city,
  b.county as county,
  b.grid as grid,
  b.long_center as long_center,
  b.lat_center as lat_center,
  value_score as value_score,
  a.value_tag as value_tag,
  network_score as network_score,
  a.network_tag as network_tag,
  (select count(d.*) where d.network_type='4G') as cel4ingrid,
  (select count(d.*) where d.network_type='2G') as cel2ingrid,
  (select count(distinct b.cgi) where b.network_type='4G') as badcel4ingrid,
  (select count(distinct b.cgi) where b.network_type='2G') as badcel2ingrid,
  (select count(b.*)) as num_problem,
  (case
    when count(c.*)>0 then '是'
    else '否'
  end) as planedsite_urging,
  count(c.*) as num_site_urging
from
  f_do_vl_score_tag_grid_w a,
  f_do_vl_cel_problem_w b,
  planed_site c,
  grid_para d
where
  1=1
  and eq4(a.city,b.city,c.city,d.city)
  and eq4(a.grid,b.grid,c.grid,d.grid)



f_do_vl_cel_problem_dimension_w

select
  sdate as sdate,
  a.city as city,
  a.county as county,
  a.network_type as network_type,
  a.cgi as cgi,
  a.Cell_Name as Cell_Name,
  a.grid as grid,
  a.indicator as indicator,
  c.value_tag as value_tag,
  (select d.lev_rrc_conn_avg from f_do_vl_kpi_lte_lev_ci_w as d where d.ci=a.cgi and d.indicator=a.indicator) as rrc_conn_avg,
  (select d.lev_kpi_lev_w from f_do_vl_kpi_lte_lev_ci_w as d where d.ci=a.cgi and d.indicator=a.indicator) as indicatorscore,
  (select d.lev_std_kpi_std_lev_w from f_do_vl_kpi_lte_std_lev_w as d where d.ci=a.cgi and d.indicator=a.indicator) as indicatorvolatility,
  (select d.lev_kpi_days_w from f_do_vl_kpi_lte_days_w as d where d.ci=a.cgi and d.indicator=a.indicator) as persistence,
  (cs1(select d.nums from residential_area_limited as d where d.indicator_en=a.indicator and concat('460-00-',d.ci)=a.cgi)) as num_time
from
  v_vl_cel_problem_w a,
  f_do_vl_kpi_lte_w b,
  f_do_vl_score_tag_grid_w c
where
  1=1
  and eq3(a.city,b.city,c.city)
  and a.cgi=b.cgi
  and a.indicator=b.indicator
  and a.grid=c.grid


配置表

select
  indicator,
  indicator_en,
  relation,
  bad_thr,
  relation2,
  num_thr,
  relation3,
  days_thr,
  weight,
  problemtypes,
  solution
from cfg_vl_cel_prob_thr

