# Trybe Alarms

##### Trybe Alarms é um projeto feito para avisar os trybers dos eventos síncronos do dia.

O shell script `trybe_alarms.sh` pode ser usado de 2 modos:
 * Com argumentos:
   1. A hora do evento, no formato hh:mm;
   2. O nome do evento.
    
    <br />Exemplo:

    ```shell
    ~/trybe_alarms/trybe_alarms.sh 14:00 "Esquenta"
    ```

    ```shell
    ~/trybe_alarms/trybe_alarms.sh 14:00 "Esquenta" 16:20 "Aula ao vivo" 19:40 "Fechamento"
    ```

* Sem argumentos:
  * Assim é mostrado os alarmes que foram salvos pro dia.

  <br />Exemplo:

    ```shell
    ~/trybe_alarms/trybe_alarms.sh
    ```

    ```
    ================================================================
        Aviso de "Esquenta" criado para as "14:00"
    ================================================================
        Aviso de "Aula ao vivo" criado para as "16:20"
    ================================================================
        Aviso de "Fechamento" criado para as "19:40"
    ================================================================
    ```
  

<br /><br />Quando o `trybe_alarms.sh` é executado ele cria temporizadores de acordo com os argumentos passados. Então quando chega no tempo indicado é mostrada uma notificação que te lembra do evento. Se o horário passado for anterior ao do momento atual o terminal avisa que você perdeu o evento.

![Notification](https://raw.githubusercontent.com/matheusg18/trybe_alarms/dev/resources/trybe_notification.jpg)

### Instalação  

Para instalar basta clonar o repositório:

```shell
git clone https://github.com/matheusg18/trybe_alarms.git ~/trybe_alarms
```

ou

```shell
git clone git@github.com:matheusg18/trybe_alarms.git ~/trybe_alarms
```

__*É importante que não mude o caminho de instalação!__

### Considerações finais

Espero que vocês trybers testem e me mandem feedbacks. :thumbsup:<br />
Pretendo deixar o projeto mais robusto com o tempo e vou tentar mandar o comando nas agendas do dia.
