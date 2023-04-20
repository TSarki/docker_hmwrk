### Сборка образа

```
docker build . --tag=my_dj_app
```

### Запуск контейнера

```
docker run --name my_dj_app  -d -p 8000:8000 my_dj_app
```