insert into genre(genre_id, genre_name)
values 
(1, 'Рок'),
(2, 'Поп'),
(3, 'Классика'),
(4, 'Джаз'),
(5, 'Техно');

insert into singer(singer_id, singer_name)
values 
(1, 'В. Бутусов'),
(2, 'Ф. Киркоров'),
(3, 'Д. Хворостовский'),
(4, 'L. Armstrong'),
(5, 'Scooter'),
(6, 'В. Меладзе'),
(7, 'Metallica'),
(8, 'И. Бутман');

insert into singer_genre (singer, genre)
values 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 2),
(7, 1),
(8, 4);

insert into album(album_id, album_year, album_title)
values 
(1, 2020, 'Титаник'),
(2, 2018, 'Я за тебя умру'),
(3, 2007, 'День победы'),
(4, 1956, 'Ella and Louis'),
(5, 1997, 'Fire'),
(6, 2008, 'Вопреки'),
(7, 1983, 'Kill Em All'),
(8, 2019, 'Only Now');

insert into album_singer (singer, album)
values 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8)
(1, 2)
(2, 3);

insert into song(song_id, song_time, song_title, song_album)
values 
(1, 316, 'Воздух', 1),
(2, 182, 'Техносила', 2),
(3, 213, 'Темная ночь', 3),
(4, 306, 'Tenderly', 4),
(5, 212, 'My Fire', 5),
(6, 220, 'Мессендж', 6),
(7, 187, 'Motorbreath', 7),
(8, 258, 'Only Now', 8),
(9, 385, 'Мой Зверь', 2),
(10, 209, 'Я за тебя умру', 2),
(11, 271, 'Жди меня', 3),
(12, 373, 'April in Paris', 4),
(13, 260, 'Choir Dance', 5),
(14, 246, 'Иностранец', 6),
(15, 255, 'Hit The Lights', 7),
(16, 345, 'Verdict', 8);

insert into songster (songster_id, songster_year, songster_name)
values 
(1, 1992, 'Союз 1'),
(2, 1981, 'Сборник популярной музыки'),
(3, 2022, 'Военные марши'),
(4, 2017, 'Дискотека 70-х'),
(5, 2018, 'Авторадио'),
(6, 2019, 'Jazz Classic'),
(7, 2020, 'Covid-19'),
(8, 2021, 'Хиты 90-х');

insert into songster_song(songster, song)
values 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(1, 9),
(2, 10),
(3, 11),
(4, 15),
(5, 13),
(6, 14),
(7, 14),
(8, 15),
(1, 2),
(2, 4),
(3, 6),
(4, 8),
(5, 10),
(6, 12),
(7, 13),
(8, 9);





