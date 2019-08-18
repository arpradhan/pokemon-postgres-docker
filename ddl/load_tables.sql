copy generations
from '/seed/generations.csv' delimiter ',' csv header;

copy pokemon
from '/seed/pokemon.csv' delimiter ',' csv header;

copy pokemon_species
from '/seed/pokemon_species.csv' delimiter ',' csv header;

copy pokemon_stats (pokemon_id, stat_id, base_stat, effort)
from '/seed/pokemon_stats.csv' delimiter ',' csv header;

copy stats
from '/seed/stats.csv' delimiter ',' csv header;
