# alex-filimonov_infra
alex-filimonov Infra repository


bastion_IP = 35.210.69.106
someinternalhost_IP = 10.132.0.6

testapp_IP = 35.204.199.134
testapp_port = 9292


DO

Docker-4

1) запустили 3 контейнера в одной сети reddit
2) разделили наши микросервисы на 2 сети fron и back и сделали bridge между ними (и даже зарабоиало :) )
3) написали конфиг для автоматического развертывания (Docker-composer), собрали для одной сети - все норм
4) модифицировал конфиг для сборки в разных сетях - нифига не смог запустить бридж не работает
5) параметризировал конфиг




Docker-3

1) Разделили наше приложение на 3 контейнера
2) Научились описывать и собирать образы
3) Научились запускать docker образы
4) Научились оптимизировать образы

Docker-2

1) Установили и настроили DOCKER
2) Создали свой образ
3) Выложили его в DockerHUB
4) Протестировали работу своего образа

Ansible-4

1) научился оздавать виртуальные машины Virtual Box через vagrant локально
    (в общем прикольно можно делать так свое аля CLOUD - мне очень понравилось)
2) настраивать созданные машины ANSIBLE
3) научился писать тесты для настроеных машин


Ansible-3

1) сделал роли для настройки апки м базы
2) реализовали вызов ролей
3) переделали инветори для ansible prod и stage и описали переменные
4) переделали структуру каталога ansible
5) сделали вывод информации о запущенном окружении
6) заюзали комюнити роль (nginx) для устуновки и настройки nginx
7) применив ansible vault зашифровали файлы которые хранят данные пользователей
8) сделали роль создания пользователей


Ansible-2

1) сделали   плейбук со сценарием для MongoDB / App и деплоя
2) сделали плейбук с различными сценариями (разделили тегами)
3) сделаи 3 плейбука каждый со своим сценарием и объединили их в главный плейбук
4) сделали плейбуки для packer для создание образов при помощи ansible



OLDER

ansible-playbook clone.yml

PLAY [Clone] ********************************************************************************************************************************************************************************************************************************

TASK [Gathering Facts] **********************************************************************************************************************************************************************************************************************
ok: [appserver]

TASK [Clone repo] ***************************************************************************************************************************************************************************************************************************
changed: [appserver]

PLAY RECAP **********************************************************************************************************************************************************************************************************************************
appserver                  : ok=2    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0


1) создал invntory и протестировал ping
ansible all -i  -m ping
2) сделал  ansible.cfg и протестировал
3) сделал inventory.yml и протестировал
ansible all -i inventory.yml  -m ping
4) сделаk my.py и протестировал - задание (*)
ansible all -i my.py  -m ping
=======
