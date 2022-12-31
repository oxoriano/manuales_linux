reset && sudo -s -- <<EOF

tail -n 100000 /var/log/syslog 			| sponge /var/log/syslog
tail -n 100000 /var/log/syslog.1 		| sponge /var/log/syslog.1
tail -n 100000 /var/log/daemon.log 		| sponge /var/log/daemon.log
tail -n 100000 /var/log/daemon.log.1	| sponge /var/log/daemon.log.1
tail -n 100000 /var/log/pihole.log 		| sponge /var/log/pihole.log
tail -n 100000 /var/log/pihole.log.1 	| sponge /var/log/pihole.log.1
tail -n 100000 /var/log/auth.log 		| sponge /var/log/auth.log
tail -n 100000 /var/log/auth.log.1 		| sponge /var/log/auth.log.1
tail -n 100000 /var/mail/oxoriano  		| sponge /var/mail/oxoriano
tail -n 100000 /var/mail/root 			| sponge /var/mail/root
tail -n 100000 /var/log/rsnapshot.log	| sponge /var/log/rsnapshot.log

sudo journalctl --rotate
sudo journalctl --vacuum-time=2days
sudo journalctl --vacuum-size=100M
sudo journalctl --vacuum-files=5

tail -n 100000 /var/log/syslog 			| sponge /var/log/syslog
tail -n 100000 /var/log/syslog.1 		| sponge /var/log/syslog.1
tail -n 100000 /var/log/daemon.log 		| sponge /var/log/daemon.log
tail -n 100000 /var/log/daemon.log.1	| sponge /var/log/daemon.log.1
tail -n 100000 /var/log/pihole.log 		| sponge /var/log/pihole.log
tail -n 100000 /var/log/pihole.log.1 	| sponge /var/log/pihole.log.1
tail -n 100000 /var/log/auth.log 		| sponge /var/log/auth.log
tail -n 100000 /var/log/auth.log.1 		| sponge /var/log/auth.log.1
tail -n 100000 /var/mail/oxoriano  		| sponge /var/mail/oxoriano 
tail -n 100000 /var/mail/root 			| sponge /var/mail/root
tail -n 100000 /var/log/rsnapshot.log	| sponge /var/log/rsnapshot.log

systemctl daemon-reload


EOF
