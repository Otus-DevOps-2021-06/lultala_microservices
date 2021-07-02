# lultala_microservices
lultala microservices repository
<H2>Docker - 2 </h2>
<p>Выполнено:</br>
- Создание докер хоста</br>
- Создание своего образа</br>
- Создание аккаунта в Docker Hub и работа с ним</p>

<h2>Docker - 3</h2>
<p>создание образов на Alpine Linex</br>
docker build -t <your-dockerhub-login>/comment:2.0 -f "Dockerfile.2" .</br>
docker build -t <your-dockerhub-login>/ui:2.0 -f "Dockerfile.2" .</p>

<p>Запуск контейнеров с network alies:</br>
docker network create reddit</br>
docker run -d --rm --network=reddit --network-alias=comment_db_1 --network-alias=post_db_1 mongo:latest</br>
docker run -d --rm --network=reddit --network-alias=posts_1 --env POST_DATABASE_HOST=post_db_1 --env POST_DATABASE=posts_1 <your-dockerhub-login>/post:1.0</br>
docker run -d --rm --network=reddit --network-alias=comment_1 --env COMMENT_DATABASE_HOST=comment_db_1 --env COMMENT_DATABASE=comment_1 <your-dockerhub-login>/comment:2.0</br>
docker run -d --rm --network=reddit --env POST_SERVICE_HOST=posts_1 --env COMMENT_SERVICE_HOST=comment_1 -p 9292:9292 <your-dockerhub-login>/ui:2.0</p>

<H2>Docker - 4 </h2>
<p>Изучена работа с networks в Docker</br>
Исользование docker-compose</br>
Выполенено задание со *</p>

<h2>Gitlab-ci-1</h2>
<p>Подготовил инсталляцию Gitlab CI.</br>
Подготовил репозиторий с кодом приложения.</br>
Описал для приложения этапы пайплайна.</br>
Задал ограничения для этапов.</br>
Задал ручные этапы пайплайна.</br>
Определил окружения.</p>

<h2>Monitoring - 1</h2>
Ознакомился с инструментом для мониторинга Prometheus.</br>
Поднят мониторинг для микросервисов и для ВМ.</p>


<h2>Monitoring - 2</h2>
<p>Настроил мониторинг Docker контейнеров при помощи cAdvisor и Prometheus.</br>
Настроил визуализацию метрик в Grafana.</br>
Настроил сбор метрик работы приложения и бизнес метрик.</br>
Настроил и проверил алертинг при недоступности одного из сервисов при помощи AlertManager.</p>

<h2>Logging -1</h2>
<p>Настроил логирование Docker контейнеров при помощи ElasticSearch и Fluentd.</br>
Настроил визуализацию в Kibana.</br>
Настроил парсинг плохо структурированных логов.</br>
Поднял распределенный трейсинг с помощью Zipkin</p>