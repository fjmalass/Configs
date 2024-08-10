# Apache 2024-07-18

## Installation on WSL

1. `sudo apt install apache2`
2. check with Browser: `localhost`
3. Install the `sh` files. in `/opt/kafka` use [install](https://kafka.apache.org/downloads) like `kafka-start-server.sh`, `kafka-topics.sh`, etc.
4. Installating `python` [confluent-kafka-python](https://github.com/confluentinc/confluent-kafka-python)
5. Follow the [Tutorial](https://docs.confluent.io/confluent-cli/current/install.html)
6. Use `virtualenv` and `pip install confluent-kafka`


### [Tutorial Python](https://docs.confluent.io/platform/current/clients/confluent-kafka-python/html/index.html)

## Tutorial
* Producer: `on_commit` callback for each message `producer.flush` or `client.poll`)
* Consumer: `on_delivery` callback when async error for each message `client.poll`



* `Topic`: file that contains key value pairs (similar to a database table, ), it contains `logs` (not queues) so they are indexed in sequence (hence `offset`)
* `Partition` breaks a `topic` into multiple `logs` (`files``), the logs are push in a round robin manner into the partitions, if the logs contain a key, the key will determine the partition
* `Brokers` (server/containers running kafka process)
* `Replication`: `Leader` Replica (original data) and `Follower` replicas (copies)
* `Consumer`: The order is sustained within a partition but not across partitions. With 1 consumer: all messages from all partitions are accessed. If multiple consumers from a same app (`consumer-group`). each consumer will have a subset of partions but the union will cover all  partitions
* `Connectors`: programs that are either a `Sink Connector` (a kafka consumer) or a `Source Connector` (a kafka producer) Check [Confluent Hub](https://confluent.io/hub)

* Could create Connector with *DataGen*
* `Schema Registry` (a process outside the broker that serves as a Schema database) manages `json`, `protobuf`, and `avro`. Can generate schemas for both the `key` and `value` of entries in a topic.  

* `ksqlDB` database optimized for `kafka` stream (in a sql language)

## Python [Tutorial](https://developer.confluent.io/courses/apache-kafka/events/)
* need a `config.ini` with `kafka` endpoint and API and secret keys (using a cli, rest or connector)


## Launch
1. Check if it is running `sudo systemctl status apache2`
2. if not runninng: `systemctl start apache2` (or `systemctl reload apache2`)

## Modules/Plugins

* Check what is available: `sudo apt search libapache2-mod`
* Install with `apt`, _e.g._,  `sudo apt install libapache2-mod-python`
* Enable: `a2enmod` or disable: `a2dismod`

## Multiple websites on a given website:
* Websites available by listing the `sites-available`: `ls /etc/apache2/sites-availables`, _e.g._, `000-default`
* Enabled: `a2ensite`  Disable `a2dissite`

## Create a new site
* Create the `.conf` file in `sites-available`, _e.g._, `/etc/apache2/sites-available/example.net.conf`
* Example of content
```
<VirtualHost *:80>
  ServerAdmin webmaster@example.net
  ServerName example.net
  ServerAlias www.example.net
  DocumentRoot /mnt/d/Repos/apache2/www/example.net/public_html/
  ErrorLog /mnt/d/Repos/apache2/www/example.net/logs/error.log
  CustomLog /mnt/d/Repos/apache2/www/example.net/logs/access.log
</VirtualHost>

```


## Configuration

* In `/etc/apache2/apache2.conf`

* Change Hostname in `/etc/hostname`
* Change `/etc/hosts`


## `Zookeeper` vs `Kraft`
* `KRaft` if newer and reduces complexity and latency (as everything is handled withing `kafka`)


## Tutorials
* [Youtube Linode](https://www.youtube.com/watch?v=1CDxpAzvLKY)
* [Confluent YT](https://www.youtube.com/watch?v=kj9JH3ZdsBQ&list=PLa7VYi0yPIH0KbnJQcMv5N9iW8HkZHztH&index=4)


## Javascript
* `npm install express kafka-node --save`
