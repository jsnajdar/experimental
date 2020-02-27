docker stop aplpispred-cmd
docker rm aplpispred-cmd
docker run -it \
  --name aplpispred-cmd \
  --net aplpispred-net \
  o2its/aplpispred/centos7-jdk11:0.0.1 .

