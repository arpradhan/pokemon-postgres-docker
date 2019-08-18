create table if not exists evolution_chains
(
    id                      serial primary key,
    baby_trigger_item_id    int
);

create table if not exists generations
(
    id                  serial primary key,
    main_region_id      int,
    identifier          text
);

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

create table if not exists pokemon_colors
(
    id                  serial primary key,
    identifier          text
);

create table if not exists pokemon_species
(
    id                          serial primary key,
    identifier                  text,
    generation_id               int,
    evolves_from_species_id     int,
    evolution_chain_id          int,
    color_id                    int,
    shape_id                    int,
    habitat_id                  int,
    gender_rate                 int,
    capture_rate                int,
    base_happiness              int,
    is_baby                     boolean,
    hatch_counter               int,
    has_gender_differences      boolean,
    growth_rate_id              int,
    forms_switchable            boolean,
    pokemon_order               int,
    conquest_order              int
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
);
