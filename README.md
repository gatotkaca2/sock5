# sock5
centos versi 6 untuk 64 bit

yum install -y wget && wget https://raw.githubusercontent.com/gatotkaca2/sock5/master/sock5.sh && sh sock5.sh


jika mau pake user dan pass atau rubah port :
rubah port edit file /etc/init.d/ss5
export SS5_SOCKS_PORT=1945

1945 ganti dengan port yang anda mau.

jika mau mengharuskan ada password untuk login maka

edit /etc/opt/ss5/ss5.conf
lalu ganti
auth 0.0.0.0/0 – –

menjadi

auth 0.0.0.0/0 – u

jangan lupa buat file /etc/opt/ss5/ss5.passwd

dan beri izin.
chown root.root /etc/opt/ss5/ss5.passwd
chmod 750 /etc/opt/ss5/ss5.passwd

untuk user dan sandinya pada file /etc/opt/ss5/ss5.passwd
dengan user dan password per baris..
contohnya
usernya passnya
user1nya pass1nya
