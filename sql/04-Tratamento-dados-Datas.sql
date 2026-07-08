
select current_date + 10;
select (current_date + interval '10 weeks')::date;
select (current_date + interval '10 months')::date;
select current_date + interval '10 hours'


select visit_page_date, count(*)
from sales.funnel
group by visit_page_date
order by visit_page_date desc

select
	date_trunc('month', visit_page_date)::date as visit_page_month,
	count(*)
from sales.funnel
group by visit_page_month
order by visit_page_month desc

select
	extract('dow' from visit_page_date) as dia_da_semana,
	count(*)
from sales.funnel
group by dia_da_semana
order by dia_da_semana

SELECT 
    (CURRENT_DATE - '2018-06-01'::date) AS diff_dias,
    (CURRENT_DATE - '2018-06-01'::date) / 7 AS diff_semanas,
    DATE_PART('year', AGE(CURRENT_DATE, '2018-06-01'::date)) * 12 + 
    DATE_PART('month', AGE(CURRENT_DATE, '2018-06-01'::date)) AS diff_meses,
    DATE_PART('year', AGE(CURRENT_DATE, '2018-06-01'::date)) AS diff_anos;
