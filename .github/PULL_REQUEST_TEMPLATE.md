# Выполнено ДЗ № 9

 - [*] Основное ДЗ
 - [ ] Задание со *

## В процессе сделано:
1) написан модуль для развертывания приложения app
2) написан модуль для развертывания сервера  mongo data base
3) написан модуль для создания правила ssh fire wall role
4) создан конфиг terraform для создания среды prod
5) создан конфиг terraform для создания среды stage
6) создан конфиг terraform для создания storage

## Как запустить проект:
 cd ./prod
 - terraform destroy
 - terraform apply
 cd ./stage
 - terraform destroy
 - terraform apply

## Как проверить работоспособность:
 - http://{{app_external_ip}}:9292/

## PR checklist
 - [ ] Выставил label с номером домашнего задания
 - [*] Выставил label с темой домашнего задания
