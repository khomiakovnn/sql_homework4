-- количество исполнителей в каждом жанре
select genre_name Жанр, count (singer) Количество
from singer_genre sg join genre g on sg.genre = g.genre_id
group by genre_name;

-- количество треков, вошедших в альбомы 2019-2020 годов
select album_title Альбом, album_year год, count (song_id) Треки
from album a join song s on a.album_id = s.song_album
where a.album_year between 2019 and 2020
group by album_title, album_year;

-- средняя продолжительность треков по каждому альбому
select album_title Альбом, avg(song_time) Время 
from album a join song s on s.song_album = a.album_id 
group by album_title;

-- все исполнители, которые не выпустили альбомы в 2020 году
select singer_name Исполнитель, album_year год_выпуска
from singer s
join album_singer as2 on s.singer_id = as2.singer
join album a on as2.album = a.album_id 
where album_year != 2020;

-- названия сборников, в которых присутствует конкретный исполнитель (выберите сами - Metallica)
select songster_name Сборник, singer_name Исполнитель
from songster s
join songster_song ss on s.songster_id = ss.songster
join song s2 on s2.song_id = ss.song
join album a on s2.song_album = a.album_id 
join album_singer as2 on as2.album = a.album_id 
join singer s3 on s3.singer_id = as2.singer
where singer_name = 'Metallica';

-- название альбомов, в которых присутствуют исполнители более 1 жанра
select album_title Альбом, count (genre) Жанр
from album a
join album_singer as2 on as2.album = a.album_id 
join singer s3 on s3.singer_id = as2.singer
join singer_genre sg on s3.singer_id = sg.singer
group by album_title
having count(genre) > 1;

-- наименование треков, которые не входят в сборники
select song_title Трек, songster Сборник
from song s left join songster_song ss on s.song_id = ss.song
where songster is null;

-- исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
select singer_name Исполнитель, song_title Трек, song_time Продолжительность
from singer s
join album_singer as2  on as2.singer = s.singer_id
join album a on a.album_id  = as2.album
join song s2 on s2.song_album = a.album_id
where song_time = (select min(song_time) from song);

-- название альбомов, содержащих наименьшее количество треков
select album_title Альбом, count(song_id) Треки 
from album a join song s on s.song_album  = a.album_id 
group by album_title 
having count(song_id) <= all (select count(song_id) 
							 from album a join song s on s.song_album  = a.album_id 
							 group by album_title);
