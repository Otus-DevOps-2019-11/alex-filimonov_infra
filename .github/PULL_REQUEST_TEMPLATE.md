# Выполнено ДЗ № 13

 - [*] Основное ДЗ
 - [] Задание со *

## В процессе сделано:

kubernetes-1

1) Прошел Kubernetes The Hard Way (единственное из за ограничения бесплатного аккаунта сделал схему 3 контроллера и 1 воркер)
2) Сделал файлы deploy и задеплоил их (и они даже заработали)

 kubectl get componentstatuses
NAME                 STATUS    MESSAGE             ERROR
controller-manager   Healthy   ok
scheduler            Healthy   ok
etcd-0               Healthy   {"health":"true"}
etcd-2               Healthy   {"health":"true"}
etcd-1               Healthy   {"health":"true"}

# kubectl get nodes
NAME       STATUS   ROLES    AGE   VERSION
worker-0   Ready    <none>   10h   v1.15.3


## Как запустить проект:

 kubectl get componentstatuses
NAME                 STATUS    MESSAGE             ERROR
controller-manager   Healthy   ok
scheduler            Healthy   ok
etcd-0               Healthy   {"health":"true"}
etcd-2               Healthy   {"health":"true"}
etcd-1               Healthy   {"health":"true"}

NAME       STATUS   ROLES    AGE   VERSION
worker-0   Ready    <none>   10h   v1.15.3

## Как проверить работоспособность:

## PR checklist
 - [ ] Выставил label с номером домашнего задания
 - [*] Выставил label с темой домашнего задания
