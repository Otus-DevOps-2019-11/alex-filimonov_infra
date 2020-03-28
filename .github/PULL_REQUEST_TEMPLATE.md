# Выполнено ДЗ № 27

 - [*] Основное ДЗ
 - [] Задание со *

## В процессе сделано:

kubernetes-3

0) наcтроили плагин kube-dns, опубликовали наружу сервис UI (NodePort), перенастроили на LoadBalancer.

1) настроили Ingress контроллер
alex@server:/opt/work/Test/otus/alex-filimonov_infra/kubernetes$ kubectl get ingress -n dev
NAME   HOSTS   ADDRESS          PORTS     AGE
ui     *       35.244.254.122   80, 443   86m

2) Secret / TLS - настроили защиту
alex@server:/opt/work/Test/otus/alex-filimonov_infra/kubernetes$ kubectl describe secret ui-ingress -n dev
Name:         ui-ingress
Namespace:    dev
Labels:       <none>
Annotations:  <none>

Type:  kubernetes.io/tls

Data
====
tls.crt:  1127 bytes
tls.key:  1704 bytes


4) Network Policies настоил и протестировал

6) PersistentVolumes настоил и протестировал

7) PersistentVolumeClaims настоил и протестировал



## Как запустить проект:


## Как проверить работоспособность:

Скриншот.
./.github/Screen1.png


## PR checklist
 - [ ] Выставил label с номером домашнего задания
 - [*] Выставил label с темой домашнего задания
