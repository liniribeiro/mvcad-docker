## Comandos


#### Gerar imagem
~~~
docker build -t <nome da imagem> .
~~~
Exemplo: 
~~~
docker build -t mvcad .
~~~

#### Baixar imagem
~~~ 
docker pull <nome da imagem>
~~~

#### Rodar Container
~~~ 
docker run <nome da imagem>
~~~

Fazendo a porta do docker ficar disponível no seu computador:
~~~
docker run <nome da imagem> -p porta_container:porta_seu_pc
~~~
Exemplo: 
~~~
docker run --name mvcad -p 5000:5000  mvcad
~~~
Significado: Roda na porta 5000, um container com o nome mvcad e imagem é o mvcad

#### Enviar imagem para o dockerhub
Tag de uma imagem local com um remote:
~~~
docker tag mvcad aliniribeiroo/mvcad
~~~

Push de uma imagem pro dockerhub: 
~~~
docker push aliniribeiroo/mvcad
~~~
Onde: 
- aliniribeiroo é o teu usuário do dockerhub
- mvcad: nome da imagem que você gerou


Para remover um container, podemos usar o comando: 
~~~
docker rm <nome ou id do container>
~~~

Para remover uma imagem,  podemos usar o comando:
~~~
docker rmi <nome ou id da imagem>
~~~

### Dicas

Podemos apenas utilizar os três primeiros números dos ids de uma imagem ou container. 
Exemplo: Container com o Nome mvcad e o id ef89121b54fc, podemos utilizar o comando: 
~~~
docker <ação> ef8
~~~

Para forçar a exclusão de uma imagem ou container, podemos utilizar a tag -f no comando:  
~~~
docker rmi -f 8ef
~~~

Para remover uma imagem, não pode haver nenhum container utilizando a mesma.


Você pode encontrar a imagem no [Dockerhub aqui!](https://hub.docker.com/repository/docker/aliniribeiroo/mvcad)