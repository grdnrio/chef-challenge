Redis Cookbook
=====================

This cookbook installs a single instance of Redis, an open source, advanced key-value store.

Scope
-----
This cookbook is concerned with the current, stable version of Redis from the official Ubuntu repos.

Platform Support
----------------
This cookbook has been tested on the following platforms:

Ubuntu 14.04 LTS (Trusty Tahr)

Cookbook Dependencies
------------
depends 'chef-client'
depends 'apt', '~> 2.6.1'
depends 'firewall', '~> 2.0.0'

Attributes
----------

You can specify the following attributes in the Redis cookbook.

Redis port number ['redis']['port']
