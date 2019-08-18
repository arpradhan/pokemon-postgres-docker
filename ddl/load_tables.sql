copy evolution_chains
from '/seed/evolution_chains.csv' delimiter ',' csv header;

copy generations
from '/seed/generations.csv' delimiter ',' csv header;

copy growth_rates
from '/seed/growth_rates.csv' delimiter ',' csv header;

copy languages
from '/seed/languages.csv' delimiter ',' csv header;

copy moves
from '/seed/moves.csv' delimiter ',' csv header;

copy move_effects
from '/seed/move_effects.csv' delimiter ',' csv header;

copy move_damage_classes
from '/seed/move_damage_classes.csv' delimiter ',' csv header;

copy move_targets
from '/seed/move_targets.csv' delimiter ',' csv header;

copy pokemon
from '/seed/pokemon.csv' delimiter ',' csv header;

copy pokemon_colors
from '/seed/pokemon_colors.csv' delimiter ',' csv header;

copy pokemon_habitats
from '/seed/pokemon_habitats.csv' delimiter ',' csv header;

copy pokemon_moves (pokemon_id, version_group_id, move_id, pokemon_move_method_id, pokemon_level, pokemon_order)
from '/seed/pokemon_moves.csv' delimiter ',' csv header;

copy pokemon_move_methods
from '/seed/pokemon_move_methods.csv' delimiter ',' csv header;

copy pokemon_shapes
from '/seed/pokemon_shapes.csv' delimiter ',' csv header;

copy pokemon_species
from '/seed/pokemon_species.csv' delimiter ',' csv header;

copy pokemon_species_flavor_text (species_id, version_id, language_id, flavor_text)
from '/seed/pokemon_species_flavor_text.csv' delimiter ',' csv header;

copy pokemon_stats (pokemon_id, stat_id, base_stat, effort)
from '/seed/pokemon_stats.csv' delimiter ',' csv header;

copy stats
from '/seed/stats.csv' delimiter ',' csv header;

copy versions
from '/seed/versions.csv' delimiter ',' csv header;

copy version_groups
from '/seed/version_groups.csv' delimiter ',' csv header;
