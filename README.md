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
Constraint names | Use the this pattern ``{tablename}_{columnname(s)}_{suffix}``. The following suffixes should be used: <ul><li>``pk`` for primary keys</li><li>``fk`` for foreign keys</li><li>``idx`` for indexes</li><li>``uniq`` for unique keys</li><li>``check`` for check constraints</li><li>``seq`` for sequence numbers</li></li><ul> | ``person_person_type_id_fk`` |

## Test server
The test server provides an MySQL database, which can be used for the group tasks. This server is hosted at SWITCHengines 
and the MySQL server is available at ``86.119.36.10`` on port ``41337``.

### Setup
 1. Create a new server instance at SWITCHengines <br> ``server create --flavor c1.medium --image "Ubuntu Xenial 16.04 (SWITCHengines)" --key-name robin dbs``
 1. Assign a public ip address <br> ``floating ip create public`` <br> ``server add floating ip dbs 86.119.36.10``
 1. Login into server <br> ``ssh -i .ssh/robin@engines.switch.ch ubuntu@86.119.36.10``
 1. Install updates <br> ``apt update && apt upgrade -y``
 1. Restart server <br> ``shutdown -r now``
 1. Install MySQL server <br> ``apt install mysql-server``
 1. Change port of MySQL server <br> ``nano /etc/mysql/mysql.conf.d/mysqld.cnf``
    1. Change ``port    3306`` to ``port    41337``
    1. Comment out ``bind_address``
 1. Restart MySQL server <br> ``service mysql restart``
 1. Create MySQL user databases and accounts <br> ``mysql -p`` and run
    ```
    CREATE USER andre@'%' IDENTIFIED BY 'ZlazuLJQg~j*';
    CREATE DATABASE starview_andre; 
    GRANT ALL ON starview_andre.* TO andre@'%';
    CREATE USER thomas@'%' IDENTIFIED BY 'uvh*F?OVl^C4';
    CREATE DATABASE starview_thomas; 
    GRANT ALL ON starview_thomas.* TO thomas@'%';
    CREATE USER samuel@'%' IDENTIFIED BY '3T*frriskXm4';
    CREATE DATABASE starview_samuel; 
    GRANT ALL ON starview_samuel.* TO samuel@'%';
    CREATE USER robin@'%' IDENTIFIED BY 'ejNT3~K:8x*N';
    CREATE DATABASE starview_robin; 
    GRANT ALL ON starview_robin.* TO robin@'%';
    FLUSH PRIVILEGES;
    ```
 1. Log out from server
 1. Create a new security group <br> ``security group create mysql``
 1. Open port ``41337`` in security group <br> ``security group rule create --dst-port 41337 mysql``
 1. Apply security group to server instance <br> ``server add security group dbs mysql``