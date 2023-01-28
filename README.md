# Konteyner Numarayı okuyucu (KNO)

**Ders Adı: Yapay Zeka Giriş**

**Adı- Soyadı: Osama burak elhlaid**

**Öğrenci-no: 1911404085**


# Kodun Açıklaması
Konteyner Numarayı okuyucu (KNO)
Kod, bir kamyonun plakasının fotoğrafını çekmek için kamerayı kullanan ve ardından plakadaki metni tanımak için Google'ın ML Kit'ini kullanan bir Flutter uygulamasıdır. Tanınan metin plaka numarasıdır.
İlk olarak kod, giriş/çıkış işlemleri için "dart:io", kamera işlevi için "camera/camera.dart", uygulamanın görsel öğeleri için "flutter/material.dart" ve "google_mlkit_text_recognition/google_mlkit_text_recognition" dahil olmak üzere çeşitli kitaplıkları içe aktarır. dart', kamera izinlerini istemek için 'permission_handler/permission_handler.dart', kamera tarafından çekilen görüntüyü kırpmak için 'image_cropper/image_cropper.dart', görüntü işleme için 'image/image.dart'.
main() yöntemi, runApp() öğesini çağırarak ve "App" sınıfını argüman olarak ileterek uygulamayı çalıştırır.
App sınıfı, bir MaterialApp parçacığı döndüren bir StatelessWidget'tır. MaterialApp pencere öğesi, uygulamanın başlığını "Kamyon numarası okuyucu" (Kamyon Plaka Okuyucu) olarak ayarlar, uygulamanın temasını birincil Swatch blue olarak ayarlar ve ana ekranı MainScreen sınıfına ayarlar.
MainScreen sınıfı, durumu olarak _MainScreenState sınıfının bir örneğini oluşturan bir StatefulWidget'tır. _MainScreenState sınıfı, State of MainScreen'i genişletir ve WidgetsBindingObserver karışımını kullanır. Karıştırma, durumun parçacığın yaşam döngüsünü gözlemlemesine ve buna göre eylemler gerçekleştirmesine izin verir.
initState() yönteminde, durum kendisini WidgetsBinding örneğine gözlemci olarak ekler ve ayrıca bir Future döndüren _requestCameraPermission() yöntemini çağırır. Bu gelecek, kamera kullanılmadan önce kamera izninin verilip verilmediğini kontrol etmek için kullanılır.
build() yöntemi, geleceği olarak _future değişkenini alan bir FutureBuilder parçacığı döndürür. Oluşturucu, kamera izninin verilip verilmediğini kontrol eder ve verilmişse, _initCameraController() yöntemini çağırarak ve mevcut kameraları ileterek kamera denetleyicisini başlatır. Bu, CameraPreview widget'ının kamera beslemesini görüntülemesine izin verir. Bindirme, alt kapsayıcının konumu ve boyutuyla tanımlanır.
_scanImage() yöntemi, kullanıcı "Kamyon Numarası Bul" (Plaka Numarası Bul) düğmesine bastığında çağrılır. Bu yöntem görüntüyü yakalamak, plakaya kırpmak ve ardından plakadaki metni tanımak için textRecognizer nesnesini kullanmak için kullanılır.
_requestCameraPermission() yöntemi, kamera izinlerini istemek için kullanılır ve izinler verildiyse _isPermissionGranted değişkenini true olarak ayarlar. İzinler verilmezse, kullanıcıdan bunları vermesi istenir.
_stopCamera() ve _startCamera() yöntemleri sırasıyla kamera denetleyicisini durdurmak ve başlatmak için kullanılır. Bu yöntemler, uygulama etkin olmayan bir duruma geçtiğinde (ör. uygulama simge durumuna küçültüldüğünde) veya uygulama devam ettirildiğinde didChangeAppLifecycleState() yönteminde çağrılır.
_initCameraController() yönteminde, kullanılabilir kameralar listesindeki ilk kamera alınarak kamera denetleyicisi başlatılır. Çözünürlük maksimuma ayarlanmıştır ve kontrolör kamera beslemesini başlatmak için hazırlanmıştır.
_cameraSelected(CameraDescription camera) işlevi, belirtilen kamera ile bir kamera kontrol cihazını başlatır, çözünürlüğü mevcut maksimum değere ayarlar ve sesi devre dışı bırakır. Ardından kameranın flaş modunu kapatır ve kameranın hazır olduğunu belirtmek için durumu ayarlar.
_scanImage() işlevi, başlatılan kamera denetleyicisini kullanarak bir resim çekmekten, ardından bunu bir dosyaya dönüştürmekten, dosyadan bir InputImage nesnesi oluşturmaktan ve onu textRecognizer nesnesine geçirmekten sorumludur. textRecognizer nesnesi görüntüyü işleyecek ve görüntüde bulunan herhangi bir metni tanıyacaktır.
Son adım, kullanıcıya görüntülenebilmesi için tanınan metni kendisine ileten 'ResultScreen'e gitmektir.
Metni tanımaya çalışırken bir istisna yakalanırsa, "Metni okurken bir sorun çıktı" mesajıyla birlikte bir SnackBar görüntülenecektir, bu "Metni okurken bir sorun oluştu" anlamına gelir.
2.Dosyada gönderildi metni filterleneyecek sonra erkanın ortasında sunulacak.

 
**Okuduğunuz için**

**teşekkürler**
