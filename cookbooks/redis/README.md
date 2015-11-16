Redis Cookbook
=====================
This cookbook installs a single instance of Redis, an open source, advanced key-value store.

Scope
-----
This cookbook is concerned with the current, stable version of Redis from the official Ubuntu repos.

Platform Support
----------------
Ubuntu 14.04 LTS (Trusty Tahr)

Cookbook Dependencies
------------
depends 'chef-client'
depends 'apt', '~> 2.6.1'
depends 'firewall', '~> 2.0.0'

Attributes
----------
Redis port number ['redis']['port']
