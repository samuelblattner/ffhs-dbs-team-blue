# DBS - Datenbanksysteme, Team Blue

This Repo contains the work-in-progress solution by the one and only «Team Blue» for the «DBS - Datenbanksysteme» group tasks. 

### Schema Naming Conventions
Property | Naming | Example
--- | --- | ---
Attribute Names | Singular, lower case, resolve special characters, join multiple expressions by underscore. | waehrung, street_number  
Table Names | Singular of entity type, lower case | person, house, etc.
Join Table Names | Names of participating entity types, joined by an underscore | person_company
Primary Key | Use 'id' | - 
Foreign Key | Related table name with a trailing '_id' | person_id
