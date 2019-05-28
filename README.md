ДЗ к занятию №7

### Сделано:
 
Установил packer
Подготовил образ reddit-base
Создал ubuntu16.json
Создал и добавил переменные в файл variables.json
Скрыл в .gitignore файл variables.json

<details>
<summary>ДЗ к занятию №6</summary>

### Данные для подключения:
testapp_IP = 104.155.8.119
testapp_port = 9292

### Создаём VM с автозапуском скрипта
gcloud compute instances create reddit-app --boot-disk-size=10GB \
--image-family ubuntu-1604-lts --image-project=ubuntu-os-cloud \
--machine-type=g1-small --tags puma-server --restart-on-failure \
--metadata-from-file startup-script=375449_infra/startup_script.sh \
--zone europe-west1-b

### Создаём правило на файерволе через gcloud
gcloud compute firewall-rules create default-puma-server --allow=tcp:9292 --target-tags puma-server
</details>

<details>
<summary>ДЗ к занятию №5</summary>

### SSH-подключение к someinternalhost в одну команду
Подключиться к VM someinternalhost 10.132.0.5 через VM bastion 130.211.109.49 :

ssh -J appuser@130.211.109.49 appuser@10.132.0.5

### SSH-подключение к someinternalhost через alias
Подключение через alias - создаём config-файл пользователя на локальной машине

$ cat .ssh/config
Host bastion
HostName 130.211.109.49
User appuser
Host someinternalhost
HostName 10.132.0.5
ProxyJump bastion
User appuser

### Подключение по VPN
Данные для подключения:

bastion_IP = 130.211.109.49
someinternalhost_IP = 10.132.0.5
</details>
