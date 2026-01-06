use project_movie_database;
show TABLES;

select * from project_movie_database.directors;

select * from project_movie_database.movies;

select count(*) as total_movies from movies;

select * from directors
where name in ('James Cameron','Luc Besson','John Woo');

select * from directors
where name like'S%';

select count(*) AS female_directors from directors 
where gender = 'Female';

select name from directors 
where gender = 'Female'
order by name 
limit 1 offset 9;

select id, title, popularity from movies 
order by popularity DESC
limit 3;

select title, revenue, budget,(revenue - budget) AS profit from movies
order by profit DESC
limit 3;

select title, vote_average from movies where release_date >= '2000-01-01'
order by vote_average DESC
limit 1;

select m.*
from movies m
join directors d
on m.Director_ID = d.ID
where d.name = 'Brenda Chapman';

SELECT d.name,count(m.UID) AS movie_count
from movies m
join directors d on m.director_id=d.ID
group by d.name
order by movie_count desc
limit 1;

select d.name,sum(m.revenue) as total_revenue
from movies m 
join directors d on m.director_id=d.ID
group by d.name
order by total_revenue desc
limit 1;


