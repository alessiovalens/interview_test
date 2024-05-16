# interview_test

A new Flutter project.

## Credenziali

Email: user@test.it\
Password: 123456

## Package utilizzati

[go_router](https://pub.dev/packages/go_router)

È il pacchetto più diffuso per la gestione delle rotte con il Navigator 2.0 ed è manutenuto dal team
di flutter.
Oltre a rendere semplice la dichirazione di rotte e sotto-rotte permette facilmente di creare
navigazioni interne tramite le ShellRoute.
Infine è possibile passargli un oggetto di tipo "Listenable" che verrà ascoltato da GoRouter e
aggiornerà le rotte ad ogni cambiamento. Questo, unito alle callback di redirect, ci consente di
limitare l'accesso a delle specifiche rotte in determinate condizioni.

[dio](https://pub.dev/packages/dio)

È uno dei pacchetti più diffusi per la gestione di chiamate REST.
È molto semplice da utilizzare specie se usato in combinazione
con [retrofit](https://pub.dev/packages/retrofit).

[json_annotation e json_serializable](https://pub.dev/packages/json_serializable)

Pacchetti realizzati da google che vanno ad automatizzare l'encoding e il decoding delle classi
facendo risparmiare parecchio tempo.\
Nell'api di dettaglio molti campi tornano sempre null per cui,
non conoscendone il tipo, li ho dichiarati come dynamic.

[flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage)

Pacchetto che permette di salvare nello storage locale informazioni sensibili come un token di
autenticazione.

[intl](https://pub.dev/packages/intl)

Pacchetto sviluppato dal team di dart che offre notevoli aiuti per quanto riguarda l'internalizzazione
dell'app. In questo caso l'ho utilizzato per la formattazione della data.

## Autenticazione

Per la gestione dell'autenticazione ho creato la classe "AuthNotifier", la quale viene utilizzata
come singleton in modo che vi sia una sola istanza attraverso tutta l'applicazione, che si serve
di "FlutterSecureStorage" per la persistenza del token di sessione. Dato che questa classe
utilizza "ChangeNotifier" che, a sua volta, è un'implementazione di "Listenable", può essere passata
a "GoRouter" in modo che le rotte vengano aggiornate ogni volta che viene invocato il metodo "notifyListeners".

## UI

### Login

La schermata di login è un semplice form con una larghezza massima in modo che i componenti non
diventino troppo grandi con l'aumentare della finestra. Per i campi del form sono presenti delle
logiche di validazione e, al click del tasto di login, verrà simulata una login con caricamento.
In caso di credenziali errate verrà mostrato un errore, altrimenti verrà salvato il token di 
sessione e si verrà rimandati sulla pagina con la lista.

### Lista

Dovendo realizzare delle schermate che si riadattassero in base alle dimensiono della finestra, ho
pensato di realizzare una schermata a griglia per la pagina con la lista delle specie vulnerabili.
Questa griglia ricalcola il numero di colonne da visualizzare in base alla larghezza della finestra.
Purtroppo l'API non fornisce delle immagini per ogni specie perciò ho lasciato un semplice box
colorato come placeholder.

### Dettaglio

Nella schermata di dettaglio vale lo stesso discorso dell'immagine fatta nella lista, ma, in questo
caso, il box colorato ha l'altezza che cambia in base alle dimensioni della finestra, ponendosi un
limite in modo che non occupi troppo spazio.

## Conclusioni

Essendo un'app molto semplice non sono andato a realizzare più strati applicativi e non ho
utilizzato package di state management in quanto avrebbero portato ad una sovra ingegnerizzazione
del codice. Per il refresh della UI attraverso i dati asincroni mi sono servito del widget "FutureBuilder"
che fa parte del pacchetto base di flutter e consente di gestire anche la fase di
caricamento e gli eventuali errori.