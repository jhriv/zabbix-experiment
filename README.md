Zabbix Experiment
===

Replicate a productionesque environment, to demonstrate how a monitoring system will act in a real-world environment.

Provides:
* Pair of app servers
* Pair of database servers
* Pair of web servers
* Pair of proxy servers

Outside of scope:
* Distributed app
* Clustered database
* Failover proxy


Install:
---

* Clone repo
* `make main`
  - Brings up the productionesque environment
  - Creates the monitoring system, with its own local database
  - Proxies listening on http://localhost:8088/ and http://localhost:8089/
  - Monitoring listening on http://localhost:8000/zabbix/
  - Adminer listening on http://localhost:8000/adminer/

Set up auto registration:
---

https://www.zabbix.com/documentation/4.0/manual/discovery/auto_registration

* Configuration
  * Actions
    * Action
      * Name: `Self-Rigstration`
      * New Condition
        * Hostname
        * contains
        * `localdomain`
    * Operations
      * Operation Type
        * Add host
