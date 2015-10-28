# vagrant-apache-spark-centos

## 1. Introduction
Vagrant project to spin up a single node, CentOS 6.4 box with Apache Spark 1.5.1 (pre-built for Apache Hadoop 2.4).

## 2. Prerequisites
1. At least 1GB memory in addition to the memory for your host machine.
2. Vagrant 1.7 or higher.
3. VirtualBox 4.3.2 or higher.

## 3. Getting Started
1. Download and install VirtualBox.
2. Download and install Vagrant.
3. Git clone this project, and change directory into this project directory.
4. Run `vagrant up` to create the VM.
5. Run `vagrant ssh` to get into your VM.
6. Run `vagrant destroy` when you want to destroy and get rid of the VM.

## 4. Note
- The base box for CentOS 6.4 will be downloaded from http://wdev.qa.admarketplace.net.
- If you run `vagrant up` for the very first time, Oracle JDK 8 and Spark 1.5.1 will be automatically downloaded and installed, and copied to the `/resources` directory. Next time, when you run `vagrant up`, the files in the `/resources` directory will be used instead, which will make the boot-up time fast. In the future, these files will be included as part of the base box.
- log4j log level is configured to WARN.
- This uses Oracle JDK 8.
- This comes with Python 2.6.x.

## 5. References
This project was put together with great pointers from all around the internet.

## 6. Copyright
Copyright 2015 Jaeyoung Chun (Danny)

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
