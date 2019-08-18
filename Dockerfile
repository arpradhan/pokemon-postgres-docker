FROM postgres
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/evolution_chains.csv' /seed/evolution_chains.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/generations.csv' /seed/generations.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/pokemon.csv' /seed/pokemon.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/pokemon_colors.csv' /seed/pokemon_colors.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/pokemon_habitats.csv' /seed/pokemon_habitats.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/pokemon_shapes.csv' /seed/pokemon_shapes.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/pokemon_species.csv' /seed/pokemon_species.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/pokemon_stats.csv' /seed/pokemon_stats.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/stats.csv' /seed/stats.csv
ADD ddl/create_tables.sql /docker-entrypoint-initdb.d
ADD ddl/load_tables.sql /docker-entrypoint-initdb.d
