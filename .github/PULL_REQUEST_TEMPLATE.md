# Выполнено ДЗ № 7

 - [*] Основное ДЗ
 - [ ] Задание со *

## В процессе сделано:
 - создан виртуальный инстанс ( reddit-app2)
 - создан образ  reddit-base-1578610980

## Как запустить проект:
 - packer build ./ubuntu16.json
 - packer build  -var 'project_id=262605' -var-file=./variables.json  -var 'sourceImageFamily=ubuntu-1604-lts'  ./ubuntu16.json
 - puma -d

## Как проверить работоспособность:
 - http://104.199.78.250:9292/

## PR checklist
 - [ ] Выставил label с номером домашнего задания
 - [*] Выставил label с темой домашнего задания
