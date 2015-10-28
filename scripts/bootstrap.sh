sudo yum -y install python-pip
sudo pip install --upgrade pip

wget --no-cookies --no-check-certificate --progress=bar:force --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm"
sudo rpm -ivh jdk-8u45-linux-x64.rpm

#fixme:
#sudo yum -y install java-1.7.0-openjdk-devel

#sudo wget --progress=bar:force http://d3kbcqa49mib13.cloudfront.net/spark-1.5.1-bin-hadoop2.4.tgz
#sudo tar -zxf spark-1.5.1-bin-hadoop2.4.tgz
#sudo chown -R vagrant:vagrant spark-1.5.1-bin-hadoop2.4.tgz

sudo tar -zxf /vagrant/resources/spark-1.5.1-bin-hadoop2.4.tgz
sudo chown -R vagrant:vagrant spark-1.5.1-bin-hadoop2.4

sudo cp /vagrant/resources/log4j.properties /home/vagrant/spark-1.5.1-bin-hadoop2.4/conf

sudo chown -R vagrant:vagrant spark-1.5.1-bin-hadoop2.4/conf/log4j.properties
