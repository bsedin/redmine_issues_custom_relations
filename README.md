# Issues Custom Relations Plugin for Redmine

Redmine plugin for flexible relations between issues through custom fields

## Supported Redmine versions

3.0+

## Installation

Go to redmine directory
```
$ cd redmine_path
```
Clone this repo to `plugins/issues_custom_relations`
```
$ git clone https://github.com/kressh/redmine_issues_custom_relations.git plugins/issues_custom_relations
```
**IMPORTANT**: Be carefull, plugin directory must be without `redmine_` prefix.

Run plugin migrations:
```
rake redmine:plugins:migrate
```

Then restart your redmine web server
