# jenkins-slave

Use the commond below

docker run --network bridge \
--ip 172.17.0.20 \
--name=slave5 -d \
-v /data/share/etc_ssh/:/etc/ssh \
-v /data/share/ssh_home:/root/.ssh \
-v /data/slaves/slave5m2:/root/.m2 \
-v /data/share:/share \
-v /var/run/docker.sock:/var/run/docker.sock \
jenkins-slave
