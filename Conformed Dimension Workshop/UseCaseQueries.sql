/*Show Category wise, title/movie name who has more than 4 wirters and 3 Actors . Include the counts*/
select c.category, dm.name,m.no_of_writers, m.no_of_actors  from fct_movie m 
join movie_category_bridge mcb on m.moviesk=mcb.moviesk
join dim_category c on  mcb.categorysk=c.categorysk
join dim_movie dm on m.moviesk=dm.moviesk 
where m.no_of_writers>4 and m.no_of_actors>3;

select c.category, count(*) no_of_movies from fct_movie m 
join movie_category_bridge mcb on m.moviesk=mcb.moviesk
join dim_category c on  mcb.categorysk=c.categorysk
join dim_movie dm on m.moviesk=dm.moviesk 
where m.no_of_writers>4 and m.no_of_actors>3
group by c.category
order by category;

/*List year wise titles*/
select year,name from dim_movie order by year;
