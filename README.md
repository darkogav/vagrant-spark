# vagrant-spark

**OS:** CentOS 7

Applications: 
- Spark 2.3.0
- Hadoop 2.7
- Java 1.8.0_161

This will setup two hosts, a spark master and a spark slave.

Private addressing is:
- 192.168.50.11 spark-master-priv
- 192.168.50.12 spark-slave-priv

Tasks:
- [x] vagant automate host setup
- [x] spark auto download and extract
- [x] setup systemd auto startup scripts.
- [x] spark master:  `/opt/spark/sbin/start-master.sh`
- [x] spark slave: `/opt/spark/sbin/start-slave.sh spark://spark-master-priv:7077`
- [ ] hadoop stuff
- [ ] cassandara stuff
- [x] python, pip, pyspark, pandas  on master only
- [ ] jupyter ??
- [ ] spark home variable and other spark variables. /opt/spark/conf/spark-env.sh.template
- [ ] 


Access management GUI for master http://127.0.0.1:8881/


Usage ports are 8881
Not used. 7771 6661

*Resources:*
- https://www.vagrantup.com/docs/virtualbox/networking.html
- https://www.redhat.com/en/blog/converting-traditional-sysv-init-scripts-red-hat-enterprise-linux-7-systemd-unit-files
- https://access.redhat.com/solutions/1751263
- python pandas

*Requirements:*
- Vagrant
- VirtualBox
