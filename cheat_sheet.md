Подсказки по основным командам Docker
======
### **Установка**
*Windows*
```
https://download.docker.com/win/stable/InstallDocker.msi
```
### **Реестры и репозитории Docker**
*Вход в реестр*
```
docker login
```
```
docker login localhost:8080
```
*Выход из реестра*
```
docker logout
```
```
docker logout localhost:8080
```
### **Поиск образа**
```
docker search nginx
```
```
docker search nginx -- filter stars=3 --no-trunc busybox
```
### **Pull (выгрузка из реестра) образа**
```
docker pull nginx
```
```
docker pull eon01/nginx localhost:5000/myadmin/nginx
```
### **Push (загрузка в реестр) образа**
```
docker push eon01/nginx
```
```
docker push eon01/nginx localhost:5000/myadmin/nginx
```
## **Контейнеры**
### **Создание контейнера**
```
docker create -t -i eon01/infinite --name infinite
```
### **Первый запуск контейнера**
```
docker run -it --name infinite -d eon01/infinite
```
### **Переименование контейнера**
```
docker rename infinite infinity
```
### **Удаление контейнера**
```
docker rm infinite
```
### **Обновление контейнера**
```
docker update --cpu-shares 512 -m 300M infinite
```
### **Запуск остановленного контейнера**
```
docker start nginx
```
### **Остановка**
```
docker stop nginx
```
### **Перезагрузка**
```
docker restart nginx
```
### **Пауза (приостановка всех процессов контейнера)**
```
docker pause nginx
```
### **Снятие паузы**
```
docker unpause nginx
```
### **Блокировка (до остановки контейнера)**
```
docker wait nginx
```
### **Отправка SIGKILL (завершающего сигнала)**
```
docker kill nginx
```
### **Отправка другого сигнала**
```
docker kill -s HUP nginx
```
### **Подключение к существующему контейнеру**
```
docker attach nginx
```
### **Работающие контейнеры**
```
docker ps
```
```
docker ps -a
```
### **Логи контейнера**
```
docker logs infinite
```
### **Информация о контейнере**
```
docker inspect infinite
```
```
docker inspect --format '{{ .NetworkSettings.IPAddress }}' $(docker ps -q)
```
### **События контейнера**
```
docker events infinite
```
## **Очистка Docker**
### **Удаление работающего контейнера**
```
docker rm nginx
```
### **Удаление контейнера и его тома (volume)**
```
docker rm -v nginx
```
### **Удаление всех контейнеров со статусом exited**
```
docker rm $(docker ps -a -f status=exited -q)
```
### **Удаление всех остановленных контейнеров**
```
docker container prune
```
```
docker rm `docker ps -a -q`
```
### **Удаление контейнеров, остановленных более суток назад**
```
docker container prune --filter "until=24h"
```
### **Удаление образа**
```
docker rmi nginx
```
### **Удаление неиспользуемых (dangling) образов**
```
docker image prune
```
```
docker rmi $(docker images -f dangling=true -q)
```
### **Удаление всех образов**
```
docker rmi $(docker images -a -q)
```
### **Остановка и удаление всех контейнеров**
```
docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)
```
### **Удаление всех неиспользуемых объектов**
```
docker system prune
```
