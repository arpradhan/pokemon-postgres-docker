FROM postgres
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/evolution_chains.csv' /seed/evolution_chains.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/generations.csv' /seed/generations.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/growth_rates.csv' /seed/growth_rates.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/languages.csv' /seed/languages.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/moves.csv' /seed/moves.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/move_effects.csv' /seed/move_effects.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/move_damage_classes.csv' /seed/move_damage_classes.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/move_targets.csv' /seed/move_targets.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/pokemon.csv' /seed/pokemon.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/pokemon_colors.csv' /seed/pokemon_colors.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/pokemon_habitats.csv' /seed/pokemon_habitats.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/pokemon_moves.csv' /seed/pokemon_moves.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/pokemon_move_methods.csv' /seed/pokemon_move_methods.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/pokemon_shapes.csv' /seed/pokemon_shapes.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/pokemon_species.csv' /seed/pokemon_species.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/pokemon_species_flavor_text.csv' /seed/pokemon_species_flavor_text.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/pokemon_stats.csv' /seed/pokemon_stats.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/stats.csv' /seed/stats.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/versions.csv' /seed/versions.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/version_groups.csv' /seed/version_groups.csv
ADD ddl/create_tables.sql /docker-entrypoint-initdb.d
ADD ddl/load_tables.sql /docker-entrypoint-initdb.d
