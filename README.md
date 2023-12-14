# WLO Wordpress Dev Environment

Some files to get you started working on the WLO Wordpress instance.

## Setup

1. Run `scripts/setup.sh`
2. Run `docker compose up -d`
3. Complete the Wordpress setup at http://localhost:8080
4. Export an existing Wordpress instance as file using [All-in-One WP Migration][1]
5. Install [All-in-One WP Migration][1] on your local Wordpress at http://localhost:8080 and import the exported file
    1. Choose "Save permalink structure" when asked
6. Reset `wirlernenonline-theme`:
   ```sh
    cd wirlernenonline-theme
    git reset --hard HEAD
   ```
7. In `wirlernenonline-theme/functions.php`, comment out the last line
   ```php
   require_once(get_template_directory().'/functions/users.php');
   ```
8. Only needed if having trouble with dead links: Log into your local Wordpress at http://localhost:8080 with the credentials from the imported instance
    1. Go to *Settings* / *Permalinks*
    2. Set to "Einfach"
    3. Save
    4. Set to "Beitragsname"
    5. Save


[1]: https://wordpress.org/plugins/all-in-one-wp-migration/

## Starting / Stopping

```sh
# Start
docker compose up -d
# Stop
docker compose down
```