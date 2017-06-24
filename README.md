# Maintenance Mode for Spree

Easily put your Spree store into maintenance mode.

## Installation
Add spree_maintenance_mode to your Gemfile
```
gem 'spree_maintenance_mode', github: 'markbiegel/spree_maintenance_mode', branch: 'master'
```

Bundle your dependencies and run the installation generator:

```
bundle
bundle exec rails g spree_maintenance_mode:install
```

## Configuration
Edit the `public/maintenance_mode.html` to suit your needs.

## Usage
Toggle Maintenance mode of/off at `/admin/maintenance_mode


Copyright (c) 2017 markbiegel, released under the New BSD License
