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
