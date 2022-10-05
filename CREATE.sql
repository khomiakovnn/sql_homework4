create table if not exists genre
(
	genre_id int primary key,
	genre_name varchar not null
);

create table if not exists singer
(
	singer_id int primary key,
	singer_name varchar not null
);

create table if not exists singer_genre
(
	singer int not null references singer(singer_id),
	genre int not null references genre(genre_id),
	primary key (singer, genre)
);

create table if not exists album
(
	album_id int primary key,
	album_title varchar not null,
	album_year int not null
);

create table if not exists album_singer
(
	album int not null references album(album_id),
	singer int not null references singer(singer_id),
	primary key (album, singer)
);

create table if not exists song
(
	song_id int primary key,
	song_title varchar not null,
	song_time int not null,
	song_album int not null references album(album_id)
);

create table if not exists songster
(
	songster_id int primary key,
	songster_name varchar(100) not null,
	songster_year int not null
);

create table if not exists songster_song
(
	songster int not null references songster(songster_id),
	song int not null references song(song_id),
	primary key (songster, song)
);
