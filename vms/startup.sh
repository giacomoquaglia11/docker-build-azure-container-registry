apt-get update
apt-get install -y docker.io
systemctl start docker
docker login --username=myregistryquaglia00 --password=5pug1ojtvdmPkjiIOL0BFq+/btk7aeAiiUu/zeAvji+ACRD1auPr myregistryquaglia00.azurecr.io
docker pull myregistryquaglia00.azurecr.io/text-printer
docker run -d -p 80:80 -e TEXT_TO_PRINT="Giacomo Quaglia Exercise 003 - $1" --name c1 myregistryquaglia00.azurecr.io/text-printer
