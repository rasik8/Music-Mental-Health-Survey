Data Exploration into PostgreSQL

In order to import data to PostgreSQL I created a table and then imported the data from the csv file into that table.

create table mental_hs (
	   id_num INT,
           age INT,
           primary_streaming_service VARCHAR(50),
           hours_per_day NUMERIC,
           while_working VARCHAR(50),
           instrumentalist VARCHAR(50),
           composer VARCHAR(50),
           fav_genre VARCHAR(50),
           exploratory VARCHAR(50),
           foreign_languages VARCHAR(50),
           bmp INT,
           classical VARCHAR(50),
           country VARCHAR(50),
           edm VARCHAR(50),
           folk VARCHAR(50),
           gospel VARCHAR(50),
           hip_hop VARCHAR(50),
           jazz VARCHAR(50),
           k_pop VARCHAR(50),
           latin VARCHAR(50),
           lofi VARCHAR(50),
           metal VARCHAR(50),
           pop VARCHAR(50),
           r_b VARCHAR(50),
           rap VARCHAR(50),
           rock VARCHAR(50),
           video_game_music VARCHAR(50),
           anxiety NUMERIC,
           depression NUMERIC,
           insomnia NUMERIC,
           ocd NUMERIC,
           music_effects VARCHAR(50)
);

-- What is the most popular streaming service?

select primary_streaming_service, count(id_num) as survey_count
from mental_hs
group by primary_streaming_service
order by count(id_num) DESC

select primary_streaming_service, count(id_num) as survey_count,
sum(count(id_num)) over (ORDER BY count(id_num) RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as running_count
from mental_hs
group by primary_streaming_service
order by count(id_num)
