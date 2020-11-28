## Comandos


#### Gerar imagem
- docker build -t <nome da imagem> .
Exemplo: docker build -t mvcad .


#### Baixar imagem
- docker pull <nome da imagem>

#### Rodar Container
- docker run <nome da imagem>
- Fazendo a porta do docker ficar disponível no seu computador: docker run <nome da imagem> -p porta_container:porta_seu_pc
Exemplo: 
docker run --name mvcad -p 5000:5000  mvcad
Significado: Roda na porta 5000, um container com o nome mvcad e imagem é o mvcad

#### Enviar imagem para o dockerhub
Tag de uma imagem local com um remote: docker tag mvcad aliniribeiroo/mvcad
Push de uma imagem pro dockerhub: docker push aliniribeiroo/mvcad

Onde: 
- aliniribeiroo é o teu usuário do dockerhub
- mvcad: nome da imagem que você gerou

Você pode encontrar a imagem no [Dockerhub aqui!](https://hub.docker.com/repository/docker/aliniribeiroo/mvcad)