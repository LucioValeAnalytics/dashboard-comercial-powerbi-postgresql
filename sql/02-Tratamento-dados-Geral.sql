
with faixa_de_renda as (
	select
		income,
		case
			when income < 5000 then '0-5000'
			when income >= 5000 and income < 10000 then '5000-10000'
			when income >= 10000 and income < 15000 then '10000-15000'
			else '15000+'
			end as faixa_renda
	from sales.customers
)

select faixa_renda, count(*)
from faixa_de_renda
group by faixa_renda

select * from temp_tables.regions limit 10

SELECT
	*,
	case
		when population is not null then population
		else (select avg(population) from temp_tables.regions)
		end as populacao_ajustada

FROM temp_tables.regions
LIMIT 5

SELECT
	*,
	coalesce(population, (select avg(population) from temp_tables.regions)) as populacao_ajustada
	
FROM temp_tables.regions
--WHERE population IS NULL
LIMIT 5
