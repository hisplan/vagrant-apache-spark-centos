# vagrant-apache-spark
Vagrant box for Apache Spark

# 1. Introduction
Vagrant project to spin up a single node, CentOS 6.4 box with Apache Spark 1.5.1 (pre-built for Apache Hadoop 2.4).

# 2. Prerequisites
1. At least 1GB memory  in addition to the memory for your host machine.
2. Vagrant 1.7 or higher, Virtualbox 4.3.2 or higher

# 3. Note
- This uses Oracle JDK 8.
- spark-1.5.1-bin-hadoop2.4.tgz (from Apache Spark official site) has to be downloaded and placed inside the ./resources directory (to speed up the vagrant destroy & up process). In the future, this will be included as part of the base box.
- log4j log level is configured to WARN.