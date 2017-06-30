yum -y update && yum install -y wget && wget http://downloads.sourceforge.net/ss5/ss5-3.8.9-6.src.rpm && yum install gcc.x86_64 rpm-build.x86_64 openldap-devel.x86_64 pam-devel.x86_64 openssl-devel.x86_64 libgssapi-devel -y && rpmbuild --rebuild ss5-3.8.9-6.src.rpm && rpm -ivh rpmbuild/RPMS/x86_64/ss5-3.8.9-6.x86_64.rpm
echo "auth 0.0.0.0/0 - -" >> /etc/opt/ss5/ss5.conf
echo "permit - 0.0.0.0/0 - 0.0.0.0/0 - - - - -" >> /etc/opt/ss5/ss5.conf
service iptables stop
chkconfig iptables off
service ss5 start
rm -f sock5.sh
echo "Install sukses bro. port di 1080"
netstat -tulpn
