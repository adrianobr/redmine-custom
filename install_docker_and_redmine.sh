echo "--INICIANDO--"
echo "--preparando instalacao--"
sudo aptitude update

echo "verificando se suporte esta disponivel"
sudo aptitude install linux-image-extra- 'uname -r'

echo "adicionando chaves no repositorio"
sudo sh -c "wget -qO- https://get.docker.io/gpg | apt-key add -"

echo "adicionando chaves docker.list"
sudo sh -c "echo deb http://get.docker.io/ubuntu docker main\ > /etc/apt/sources.list.d/docker.list"

echo "atualizando apos novo acrescimo"
sudo aptitude update

echo "instalando o docker  LXC: necessario confirmacao"
sudo aptitude install lxc-docker

echo "instalando docker compose"
apt-get install docker-compose

echo "tentando startar docker"
service docker start

echo "instalando git"
sudo apt-get install git

echo "criando diretorio docker"
mkdir "docker"
cd docker

echo "obtendo redmine"
git clone https://github.com/sameersbn/docker-redmine.git
cd docker-redmine

echo "executando docker compose up -d"
docker-compose up -d

echo "FINALIZADO!"
echo ""
echo "seuip:10083"
echo "usuario e senha: admin"
echo "adrianojosebaptistella@gmail.com"
docker-compose up -d
git clone https://github.com/sameersbn/docker-redmine.git




