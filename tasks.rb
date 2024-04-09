rails about                              # List versions of all Rails frameworks and the environment
rails action_mailbox:ingress:exim        # Relay an inbound email from Exim to Action Mailbox (URL and INGRESS_PASSWORD required)
rails action_mailbox:ingress:postfix     # Relay an inbound email from Postfix to Action Mailbox (URL and INGRESS_PASSWORD required)
rails action_mailbox:ingress:qmail       # Relay an inbound email from Qmail to Action Mailbox (URL and INGRESS_PASSWORD required)
rails action_mailbox:install             # Installs Action Mailbox and its dependencies
rails action_mailbox:install:migrations  # Copy migrations from action_mailbox to application
rails action_text:install                # Copy over the migration, stylesheet, and JavaScript files
rails action_text:install:migrations     # Copy migrations from action_text to application
rails active_storage:install             # Copy over the migration needed to the application
rails app:template                       # Applies the template supplied by LOCATION=(/path/to/template) or URL
rails app:update                         # Update configs and some other initially generated files (or use just update:configs or update:bin)
rails assets:clean[keep]                 # Remove old compiled assets
rails assets:clobber                     # Remove compiled assets
rails assets:environment                 # Load asset compile environment
rails assets:precompile                  # Compile all the assets named in config.assets.precompile
rails cache_digests:dependencies         # Lookup first-level dependencies for TEMPLATE (like messages/show or comments/_comment.html)
rails cache_digests:nested_dependencies  # Lookup nested dependencies for TEMPLATE (like messages/show or comments/_comment.html)
rails db:create                          # Creates the database from DATABASE_URL or config/database.yml for the current RAILS_ENV (use db:create:all to create all...
rails db:drop                            # Drops the database from DATABASE_URL or config/database.yml for the current RAILS_ENV (use db:drop:all to drop all datab...
rails db:encryption:init                 # Generate a set of keys for configuring Active Record encryption in a given environment
rails db:environment:set                 # Set the environment value for the database
rails db:fixtures:load                   # Loads fixtures into the current environment's database
rails db:migrate                         # Migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)
rails db:migrate:down                    # Runs the "down" for a given migration VERSION
rails db:migrate:redo                    # Rolls back the database one migration and re-migrates up (options: STEP=x, VERSION=x)
rails db:migrate:status                  # Display status of migrations
rails db:migrate:up                      # Runs the "up" for a given migration VERSION
rails db:prepare                         # Runs setup if database does not exist, or runs migrations if it does
rails db:reset                           # Drops and recreates all databases from their schema for the current environment and loads the seeds
rails db:rollback                        # Rolls the schema back to the previous version (specify steps w/ STEP=n)
rails db:schema:cache:clear              # Clears a db/schema_cache.yml file
rails db:schema:cache:dump               # Creates a db/schema_cache.yml file
rails db:schema:dump                     # Creates a database schema file (either db/schema.rb or db/structure.sql, depending on `ENV['SCHEMA_FORMAT']` or `config....
rails db:schema:load                     # Loads a database schema file (either db/schema.rb or db/structure.sql, depending on `ENV['SCHEMA_FORMAT']` or `config.ac...
rails db:seed                            # Loads the seed data from db/seeds.rb
rails db:seed:replant                    # Truncates tables of each database for current environment and loads the seeds
rails db:setup                           # Creates all databases, loads all schemas, and initializes with the seed data (use db:reset to also drop all databases fi...
rails db:version                         # Retrieves the current schema version number
rails importmap:install                  # Setup Importmap for the app
rails log:clear                          # Truncates all/specified *.log files in log/ to zero bytes (specify which logs with LOGS=test,development)
rails middleware                         # Prints out your Rack middleware stack
rails restart                            # Restart app by touching tmp/restart.txt
rails secret                             # Generate a cryptographically secure secret key (this is typically used to generate a secret for cookie sessions)
rails stats                              # Report code statistics (KLOCs, etc) from the application or engine
rails stimulus:install                   # Install Stimulus into the app
rails stimulus:install:bun               # Install Stimulus on an app running bun
rails stimulus:install:importmap         # Install Stimulus on an app running importmap-rails
rails stimulus:install:node              # Install Stimulus on an app running node
rails test                               # Runs all tests in test folder except system ones
rails test:all                           # Runs all tests, including system tests
rails test:db                            # Run tests quickly, but also reset db
rails test:system                        # Run system tests only
rails time:zones[country_or_offset]      # List all time zones, list by two-letter country code (`bin/rails time:zones[US]`), or list by UTC offset (`bin/rails tim...
rails tmp:clear                          # Clear cache, socket and screenshot files from tmp/ (narrow w/ tmp:cache:clear, tmp:sockets:clear, tmp:screenshots:clear)
rails tmp:create                         # Creates tmp directories for cache, sockets, and pids
rails turbo:install                      # Install Turbo into the app
rails turbo:install:bun                  # Install Turbo into the app with bun
rails turbo:install:importmap            # Install Turbo into the app with asset pipeline
rails turbo:install:node                 # Install Turbo into the app with webpacker
rails turbo:install:redis                # Switch on Redis and use it in development
rails yarn:install                       # Install all JavaScript dependencies as specified via Yarn
rails zeitwerk:check                     # Checks project structure for Zeitwerk compatibility