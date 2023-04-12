select primary_streaming_service, count(id_num),
sum(count(id_num)) over (ORDER BY count(id_num) RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as running_count
from mental_hs
group by primary_streaming_service
order by count(id_num)