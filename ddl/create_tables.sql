create table if not exists pokemon
(
    id                  serial primary key,
    identifier          text,
    species_id          int,
    height              int,
    weight              int,
    base_experience     int,
    pokemon_order       int,
    is_default          boolean
);

create table if not exists pokemon_stats
(
    id                  serial primary key,
    pokemon_id          int,
    stat_id             int,
    base_stat           int,
    effort              int
);

create table if not exists stats
(
    id                  serial primary key,
    damage_class_id     int,
    identifier          text,
    is_battle_only      boolean,
    game_index          int
)
