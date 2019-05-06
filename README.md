ДЗ к занятию №6

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
