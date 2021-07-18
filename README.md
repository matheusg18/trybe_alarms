# Trybe Alarms

Trybe Alarms é um projeto feito para avisar os trybers dos eventos síncronos e assíncronos do dia.

`trybe_alarms.sh` é um shell script a ser executado com argumentos, estes arugemtos são:
1. A hora do evento, no formato hh:mm
2. O nome do evento

Exemplo:
```bash
~/trybe_alarms/trybe_alarms.sh 14:00 "Esquenta" 
```
```bash
~/trybe_alarms/trybe_alarms.sh 14:00 "Esquenta" 14:40 "Conteúdo" 16:20 "Aula ao vivo"
```

Quando o `trybe_alarms.sh` é executado ele cria temporizadores de acordo com os argumentos passados. Então quando chega no tempo indicado é mostrada uma notificação que te lembra do evento. Se o horário passado for anterior ao do momento atual o terminal avisa que você perdeu o evento.
![Notification](https://raw.githubusercontent.com/matheusg18/trybe_alarms/main/resources/trybe_alarm_notification.png)

### Instalação

Para instalar é só clonar o repositório:
```bash
git clone https://github.com/matheusg18/trybe_alarms.git ~/trybe_alarms
```

### Considerações finais

Espero que vocês trybers testem e me mandem feedbacks. :thumbsup:  
Pretendo deixar o projeto mais robusto com o tempo e vou tentar mandar o comando da agenta do dia todos os dias.