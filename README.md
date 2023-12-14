# WLO Wordpress Dev Environment

Some files to get you started working on the WLO Wordpress instance.

## Setup

1. Run `scripts/setup.sh`
2. Run `docker compose up -d`
3. Complete the Wordpress setup at http://localhost:8080
4. Export an existing Wordpress instance as file using [All-in-One WP Migration][1]
5. Install [All-in-One WP Migration][1] on your local Wordpress at http://localhost:8080 and import the exported file
6. Reset `wirlernenonline-theme`:
   ```sh
    cd wirlernenonline-theme
    git reset --hard HEAD
   ```

[1]: https://wordpress.org/plugins/all-in-one-wp-migration/

## Starting / Stopping

```sh
# Start
docker compose up -d
# Stop
docker compose down
```