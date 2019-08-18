FROM postgres
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/pokemon.csv' /seed/pokemon.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/pokemon_stats.csv' /seed/pokemon_stats.csv
ADD --chown=postgres 'https://raw.githubusercontent.com/veekun/pokedex/master/pokedex/data/csv/stats.csv' /seed/stats.csv
ADD ddl/create_tables.sql /docker-entrypoint-initdb.d
ADD ddl/load_tables.sql /docker-entrypoint-initdb.d
