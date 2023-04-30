# Hilol nashr certificate

Qo'llanma
## Getting Started

Loyiha 3 ta qismga bo'lib tayyorlandi

## Contents

- [Server](#server) - Loyihaning backend qismi
- [Client](#client) - Loyihaning UI qismi
- [Common models](./common_models/) - Lohinaning yuqoridagi har ikki qismida ishlatilgan bir xil klass va funksiyalar

### Server

Loyiha ishlashi uchun backend ishga tushirilshi kerak.


[server](./server/) papkasiga o'ting!
```
cd server
```

Loyihada ishlatilgan paketlarni o'rnating!
```
dart pub get
```

Va loyihani ishga tushiring
```
dart_frog dev
```
P.S Loyiha [**localhost:8080**](localhost:8080) da ishga tushadi

### Client

Loyihada ishlatilgan paketlarni o'rnating!
```
flutter pub get
```

Va loyihani ishga tushiring
```
flutter run
```

Ilova iOS simulatorda ishga tushirilsa ***http://localhost:8080*** da ishga tushadi.
Android emulatorda ishga tushirilsa, ***http://10.0.0.2:8080*** da ishga tushadi.
Agar loyiha Haqiqiy qurilmada ishga tushirilsa, **backend** qismi bilan aloqa bo'lshi uchun,
[**ApiService**](./lib/services/api_service.dart) klassida **baseurl** ni WIFI IPV4 manziliga o'zgarotiring. 
**Misol: 192.168.0.13**

P.S. Server ishga tushirilgan kod va loyiha bitta WIFI tarmog'iga ulangan bo'lishi shart.

