/*Json Load*/
select * from actors;
select * from directors;


/*Datamart Load*/
/*---------Staging---------*/
select * from stg_movie_dtl ;
select * from stg_actor;
select * from stg_category;
select * from stg_writer ;
select * from stg_director ;


/*-----dim------*/
select * from dim_movie_scd order by release_version desc;
select * from fct_movie;
select * from dim_actors;
select * from dim_directors;
select * from dim_category;
select * from dim_writer;