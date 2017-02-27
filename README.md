# DBS - Datenbanksysteme, Team Blue
This repository contains the project and task of the module DBS (Datenbanksysteme) at FFHS. 

## Conventions
Everything in this repository should follow this conventions.

### Naming
 - English language is used for all names

Property | Rules | Example
--- | --- | ---
Attribute names | Singular, lower case, resolve special characters, join multiple expressions by underscore (a.k.a. snake_case). | ``street_number``  
Table names | Singular of entity type, lower case | ``person``, ``house``, ..
Join table names | Names of participating entity types, joined by an underscore | ``person_company``
Primary key | Use ``id`` | ``id``
Foreign key | Related table name with a ``_id`` postfix | ``person_id``
