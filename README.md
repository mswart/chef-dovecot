chef-dovecot
============

**This cookbook is currently under development and designing! Because the README is written before the feature is implemented, some points could be missing.**


Description
-----------

This cookbook installs [dovecot](http://www.dovecot.org). It uses the distribution package system (like dpkg on debian/ubuntu) to installs debian.  The cookbook is designed to install dovecot 2. It may also working with dovecot 1, but it is not tested.

The cookbook tries to abstract all configuration possibilities of dovecot to chef with attributes and so does not limit your usage of dovecot in any way. Therefore it is not designed for people who want a fast way to a working dovecot instance. The default attributes are limited to a minimum, all other configuration is up to you to adjust dovecot to your needs.


Requirements
------------

The cookbook requires:

* **ruby 1.8.7+**: Ruby 1.8.7 is currently full supported. But in a few month (also end of life of ruby), is will be dropped and **ruby 1.9** is needed.
* **chef 10.18+**: The cookbook is design to run under chef 10 and chef 11. Therefore I recommends chef 10.18+ because it is a preparing and migration release. Chef server and chef solo are supported. But some features may not available with chef solo.
* (**ubuntu**): The cookbook is tested on ubuntu 12.04. Other distributions like debian may work also. I appreciate feedback about status and errors on other distributions or versions.

Other cookbooks are not required but for a full working mail server you need a
MTA like postfix.


Recipes
-------

The following recipes are supported:

* `default`: installs dovecot core and manages its configuration
* `pop3`: installs dovecot's pop3 service
* `imap`: installs dovecot's imap service


License and Author
------------------

Author:: Malte Swart (<chef@malteswart.de>)
Copyright:: 2013, Malte Swart

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
