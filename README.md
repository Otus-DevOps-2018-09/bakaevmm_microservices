# bakaevmm_microservices
bakaevmm microservices repository

[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/bakaevmm_microservices.svg?branch=master)](https://travis-ci.com/Otus-DevOps-2018-09/bakaevmm_microservices)

## HW #12 Docker 1

Обучения базовым функциям работы с Docker


## HW #13 Docker 2

Научились поднимать удалённый докер хост на GCP.
Научились поднимать контейнеры на ужадённом хосте.
Сделали свой докер имейдж с использованием докер файла.
Загрузили новый имейдж на докер хаб.
Научились загружать и устанавливать докер имейдж с докер хаба.

### Задание с *
Создан шаблон docker-base с использованием packer.
Создана инфраструктура с использованием terraform.
Созданы ansible playbooks для установки docker(используется в packer) и запуска необходимого контейнера из docker hub.
 Настроен dynamic inventory. 


## HW #14 Docker 3

Научились собирать образы из докер файлов а так же уменшать их объём.
Сделали микросервесную архитектуру приложения, оазбив их на 4 контейнера.
Запустили приложение в нескольких докер контейнерах и объеденили их в одну сеть. 

## HW #15 Docker 4

Более детально разобрались с сетями в докер, научились создавать network-allias и поняли структура общения контейнеров между разными хостами.
Научились работать с docker-compose.
Написали первый docker-compose.yml для старта всего проекта, с указанием всех зависимостей.
Параметризировали некоторые переменные.
По умолчанию именем проекта в docker-compose будет выбрана директория в которой находится compose файл, однако можно переопределить это используя переменную COMPOSE_PROJECT_NAME.

### Задание с * 

Написан override файл, которы зпускает puma в debug режиме. 
Для изменения кода приложения не пересобирая контейнер можно использовать смонтированные на ФС каталоги, под каждое приложение. Но на данном этапе, без доработок, такое решение работать не будет, так как по умолчанию эти каталоги будут пусты. 


## HW #16 gitlab ci 1

Создал ВМ в ГЦП для gitlab.
Выполнил установку и настройку приложения gitlab.
Настроил runner для запуска pipeline. 

## HW #16 gitlab ci 2

Создали dev, staging, prod окружения
В stage и prod окружениях сделал запуск "по кнопке"
Создали расширенный пайплайн
Научились создавать динамические окружения для деплоя из отдельных веток
