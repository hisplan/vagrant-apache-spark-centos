# install python pip
sudo yum -y install python-pip
sudo pip install --upgrade pip

# install oracle jdk 8
if [ ! -f "/vagrant/resources/jdk-8u45-linux-x64.rpm" ]
then
	wget --no-cookies --no-check-certificate --progress=bar:force --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm"
	sudo cp jdk-8u45-linux-x64.rpm /vagrant/resources
fi

sudo rpm -ivh /vagrant/resources/jdk-8u45-linux-x64.rpm

# install spark 1.5.1 pre-built for hadoop 2.4
if [ ! -f "/vagrant/resources/spark-1.5.1-bin-hadoop2.4.tgz" ]
then
	wget --progress=bar:force http://d3kbcqa49mib13.cloudfront.net/spark-1.5.1-bin-hadoop2.4.tgz
	sudo cp spark-1.5.1-bin-hadoop2.4.tgz /vagrant/resources
fi

sudo tar -zxf /vagrant/resources/spark-1.5.1-bin-hadoop2.4.tgz
sudo chown -R vagrant:vagrant spark-1.5.1-bin-hadoop2.4

# configure log4j
sudo cp /vagrant/resources/log4j.properties /home/vagrant/spark-1.5.1-bin-hadoop2.4/conf
sudo chown -R vagrant:vagrant spark-1.5.1-bin-hadoop2.4/conf/log4j.properties
