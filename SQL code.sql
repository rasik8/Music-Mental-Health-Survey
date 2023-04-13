
-- In order to import data to PostgreSQL I created a table and then imported the data from the csv file into that table.

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

-- 1.What is the most popular streaming service?

select primary_streaming_service, count(id_num) as survey_count
from mental_hs
group by primary_streaming_service
order by count(id_num) DESC

select primary_streaming_service, count(id_num) as survey_count,
sum(count(id_num)) over (ORDER BY count(id_num) RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as running_count
from mental_hs
group by primary_streaming_service
order by count(id_num)

--2.What is the most popular Genre?

select fav_genre, count(id_num) as survey_count
from mental_hs
group by fav_genre
order by count(id_num) DESC

--3.What is the most popular listening Time?

select hours_per_day, while_working, count(hours_per_day) as survey_count
from mental_hs
group by hours_per_day, while_working
order by hours_per_day

--4.Investigate which streaming services is used according to age of respondent?

select age, primary_streaming_service, count(*) as survey_count,
RANK() over (PARTITION BY primary_streaming_service ORDER BY age DESC) as group_count
from mental_hs
group by age, primary_streaming_service

--5.What effect music has on individuals Mental Health condition?

select music_effects, count(id_num) as survey_count
from mental_hs
group by music_effects
order by count(id_num) DESC

--6.What effect music has on individuals Mental Health condition, according to age of respondent?

select age, music_effects, count(*) as survey_count
from mental_hs
where music_effects NOT IN ('No comment')
group by age, music_effects 
order by count(*) DESC

--7.What are the average mental health ratings filtered by favourite music genre?

select fav_genre, 
avg(anxiety) as Average_anxiety_Rating, 
avg(depression)as Average_depression_Rating, 
avg(insomnia)as Average_insomnia_Rating, 
avg(ocd)as Average_OCD_Rating
from mental_hs
group by fav_genre

SELECT fav_genre,
(SELECT round(AVG(anxiety))as avg_anxiety FROM mental_hs e2
				WHERE e1.fav_genre = e2.fav_genre)
FROM mental_hs e1
group by fav_genre

--8.Negative effects due to listening to music

select music_effects, fav_genre, count(music_effects)as survey_count
from mental_hs
where music_effects = 'Worsen'
group by music_effects, fav_genre
order by count(*) desc

select music_effects, fav_genre, count(fav_genre)as survey_count
from mental_hs
group by music_effects, fav_genre
order by fav_genre, survey_count 







