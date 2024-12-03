

#How many hours per day did respondents listen to music?
Select `Hours per day`, count(*) as total	from mxmh_survey_results
WHere `Hours per day` > 0
Group by `Hours per day`;

#Which music genres correlated with anxiety?
SELECt `fav genre`, avg(anxiety) as avg_anxiety	from mxmh_survey_results	
group by `fav genre`	order by avg_anxiety desc;

#How many respondents were affected by music?
SELECT `Music effects`, Count(*) as effect	 from mxmh_survey_results	
WHere `Music effects` = "improve";

#How many respondents were not affected by music?
SELECT `Music effects`, Count(*) as effect	 from mxmh_survey_results	
WHere `Music effects` = "no effect";



#What streaming services did users use the most?
Select `Primary streaming service`, Count(*) as respondent_use from mxmh_survey_results 
group by `Primary streaming service`
order by respondent_use desc
limit 1;

#How many people listened to rock ?
SELECT `Frequency [Rock]`,	Count(*) as rock	from mxmh_survey_results	
WHere `Frequency [Rock]` in ("sometimes", "never", "very frequently", "rarely")
group by `Frequency [Rock]`

Union all

SELECT 'Total' as `Frequency [Rock]`	,Count(*) as rock	from mxmh_survey_results	
WHere	`Frequency [Rock]` in ("sometimes", "never", "very frequently", "rarely");


#How many people listened to lofi?
SELECT `Frequency [Lofi]`,	Count(*) as lofi	from mxmh_survey_results	
WHere `Frequency [Lofi]` in ("sometimes", "never", "very frequently", "rarely")
group by `Frequency [Lofi]`

Union all

SELECT 'Total' as `Frequency [Lofi]`	,Count(*) as lofi	from mxmh_survey_results	
WHere	`Frequency [Lofi]` in ("sometimes", "never", "very frequently", "rarely");

#How many people listened to Kpop?
SELECT `Frequency [K pop]`,	Count(*) as kpop	from mxmh_survey_results	
WHere `Frequency [K pop]` in ("sometimes", "never", "very frequently", "rarely")
group by `Frequency [K pop]`

Union all

SELECT 'Total' as `Frequency [K pop]`	,Count(*) as kpop	from mxmh_survey_results	
WHere `Frequency [K pop]` in ("sometimes", "never", "very frequently", "rarely");

#How many people listened to pop?
SELECT `Frequency [Pop]`,	Count(*) as pop	from mxmh_survey_results	
WHere `Frequency [Pop]` in ("sometimes", "never", "very frequently", "rarely")
group by `Frequency [Pop]`

Union all

SELECT 'Total' as `Frequency [Pop]`	,Count(*) as pop	from mxmh_survey_results	
WHere `Frequency [Pop]` in ("sometimes", "never", "very frequently", "rarely");

#How many people listened to jazz?
SELECT `Frequency [Jazz]`,	Count(*) as jazz	from mxmh_survey_results	
WHere `Frequency [Jazz]` in ("sometimes", "never", "very frequently", "rarely")
group by `Frequency [Jazz]`

Union all

SELECT 'Total' as `Frequency [Jazz]`	,Count(*) as jazz	from mxmh_survey_results	
WHere `Frequency [Jazz]` in ("sometimes", "never", "very frequently", "rarely");


# Age group of those who have anxiety?
SELECT `Age`, count(*) AS anxiety_count	FROM mxmh_survey_results
WHERE `Anxiety` > 0
GROUP BY `Age`
ORDER BY anxiety_count desc ;

# Age group of those who have depression?
SELECT `Age`, count(*) AS depression_count	FROM mxmh_survey_results
WHERE `Depression` > 0
GROUP BY `Age`
ORDER BY depression_count desc ;

# Age group of those hwo have OCD?
SELECT `Age`, count(*) AS OCD_count	FROM mxmh_survey_results
WHERE `OCD` > 0
GROUP BY `Age`
ORDER BY OCD_count desc ;

# Age group of those who have insomnia?
SELECT `Age`, count(*) AS insomnia_count	FROM mxmh_survey_results
WHERE `Insomnia` > 0
GROUP BY `Age`
ORDER BY insomnia_count desc ;

#How many people speak foreign languges?
select `Foreign languages`, count(*) as languages from mxmh_survey_results
where `Foreign languages` in ("yes", "no")
Group by `Foreign languages`

union all

select 'Total' as `Foreign languages` ,count(*) as languages from mxmh_survey_results
where `Foreign languages` in ("yes", "no");

#How many steaming services were spotify, apple music, youtube music?
Select `Primary streaming service`, Count(*) as respondent_use from mxmh_survey_results 
where `Primary streaming service` in("Spotify" , "Apple Music" , "Youtube Music", "I do not use a streaming service.", "Other streaming service", "Pandora")
group by `Primary streaming service`;