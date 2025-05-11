create table if not exists genres(
    id serial primary key, 
    title varchar(60) not null
);

create table if not exists artists(
  id serial primary key,
  name varchar(60) not null
);

create table if not exists genresartists(
    genres_id integer references Genres(id),
    artists_id integer references Artists(id),
    constraint pk1 primary key (genres_id, artists_id)
);

create table if not exists album(
    id serial primary key,
    name varchar(60) not null,
    release integer not null
);

create table if not exists artistsalbum(
    artists_id integer references Artists(id),
    album_id integer references Album(id),
    constraint pk2 primary key (artists_id, album_id)
);

create table if not exists track(
    id serial primary key,
    album_id integer references Album(id),
    name varchar(50) not null
);

create table if not exists collection(
    id serial primary key,  
    name varchar(60) not null,
    release integer not null
);

create table if not exists collectiontrack(
    collection_id integer references Collection(id),
    track_id integer references Track(id),
    constraint pk3 primary key (collection_id, track_id)
);