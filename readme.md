markdown
Kodu kopyala
# PlantHealthAI

**PlantHealthAI**; bitkilerin sağlık durumunu analiz eden, hastalıklarını teşhis eden ve çözüm önerileri sunan bir yapay zeka destekli mobil uygulamadır. 
Bu uygulama, kullanıcıların bitki bakımını daha etkili ve bilinçli bir şekilde yapmalarını sağlar. Kullanıcılar, telefon kamerasıyla bitki fotoğrafını çekerek bitki sağlığını anında değerlendirebilir, 
olası hastalıkları öğrenebilir ve bitki bakım önerilerine ulaşabilir.

## Özellikler

- **Bitki Sağlık Analizi**: Kullanıcılar, bitkilerin sağlık durumunu analiz etmek için fotoğraf yükleyebilir.
- **Hastalık Tanıma**: Uygulama, bitki hastalıklarını tespit ederek hastalığın adını ve açıklamasını sunar.
- **Çözüm Önerileri**: Tespit edilen hastalığa göre, bitkinin sağlığını korumak veya hastalığı iyileştirmek için öneriler sağlar.
- **Geçmiş Kayıtları Görüntüleme**: Önceki analiz sonuçları ve hastalık teşhisleri kullanıcı tarafından geçmiş ekranında görüntülenebilir.
- **Bitki Bakımı Hatırlatıcıları**: Düzenli bakım için sulama, gübreleme gibi hatırlatıcılar oluşturulabilir.
- **Hava Durumu Entegrasyonu**: Hava durumu verilerini kullanarak bitki bakımı için uygun koşulları belirler.

## Proje Dosya Yapısı

PlantHealthAI/ ├── assets/ # Model ve etiket dosyaları │ ├── model.tflite # TensorFlow Lite model dosyası │ └── labels.txt # Modelin tanıyabildiği etiketler ├── lib/ # Uygulama kaynak kodları │ ├── main.dart # Uygulama giriş noktası │ ├── screens/ # Ekran bileşenleri │ │ ├── home_screen.dart # Ana ekran │ │ ├── analysis_screen.dart # Analiz sonucu ekranı │ │ ├── history_screen.dart # Geçmiş analiz ekranı │ │ └── plant_care_screen.dart # Bitki bakım ekranı │ ├── models/ # Veri modelleri │ │ ├── disease_detection_model.dart # Hastalık tespit modeli │ │ └── plant_info.dart # Bitki bilgileri │ ├── services/ # İşlem ve analiz servisleri │ │ ├── image_processor.dart # Görüntü işleme servisi │ │ ├── disease_recommender.dart # Hastalık çözüm önerileri servisi │ │ ├── weather_service.dart # Hava durumu servisi │ │ ├── calendar_manager.dart # Bakım takvimi servisi │ │ └── community_service.dart # Topluluk paylaşım servisi │ ├── utils/ # Yardımcı sınıflar │ │ ├── constants.dart # Sabitler │ │ └── helpers.dart # Yardımcı fonksiyonlar ├── .gitignore # Git dışlama dosyası ├── pubspec.yaml # Flutter bağımlılıkları └── README.md # Proje açıklamaları

markdown
Kodu kopyala

## Gereksinimler

Bu projeyi çalıştırmak için aşağıdaki yazılım ve araçlara ihtiyaç vardır:

- **Flutter**: Flutter SDK’sini [buradan](https://flutter.dev/docs/get-started/install) yükleyin.
- **TensorFlow Lite**: Model, TensorFlow Lite kullanılarak çalıştırılmaktadır. Projeye eklenmiştir, ancak cihazınızda TensorFlow Lite destekli bir ortamın bulunduğundan emin olun.

## Kurulum

### Adımlar

1. **Projeyi Klonlayın**:
   ```bash
   git clone https://github.com/kullaniciadi/PlantHealthAI.git
   cd PlantHealthAI
Gerekli Paketleri Yükleyin:

bash
Kodu kopyala
flutter pub get
Cihaz veya Emülatörde Çalıştırın:

bash
Kodu kopyala
flutter run
Kullanım
Bitki Fotoğrafı Yükleyin:

Ana ekranda Upload Plant Image butonuna basarak telefon kamerasından veya galeriden bir bitki fotoğrafı seçin.
Analiz Sonuçlarını Görün:

Fotoğraf yüklendikten sonra, uygulama bitkiyi analiz eder ve sağlık durumu ile ilgili sonuçları ekranda gösterir.
Çözüm Önerileri Alın:

Eğer bir hastalık tespit edilirse, uygulama hastalıkla ilgili öneriler sunar.
Geçmiş Analizleri İnceleyin:

Daha önce yapılan analizler History ekranında listelenir ve buradan tekrar görüntülenebilir.
Bitki Bakım Hatırlatıcıları Ayarlayın:

Düzenli sulama ve gübreleme gibi bakım işlemleri için hatırlatıcı oluşturabilirsiniz.
Önemli Dosyalar
lib/main.dart: Uygulamanın başlangıç noktası ve ana widget yapısı.
lib/services/image_processor.dart: Bitki görüntülerini TensorFlow Lite modeliyle analiz eden servis.
lib/models/disease_detection_model.dart: Tespit edilen hastalığın adını ve açıklamasını döndüren veri modeli.
lib/screens/analysis_screen.dart: Hastalık analiz sonuçlarını kullanıcıya gösteren ekran.
Geliştirme Notları
Model Eğitimi: Bu proje, TensorFlow Lite kullanılarak eğitilmiş bir model gerektirir. Bitki hastalıkları üzerine eğitim verilmiş bir model bu projeye entegre edilmiştir.
Hava Durumu Entegrasyonu: Hava durumu verilerini almak için weather_service.dart dosyasında bir hava durumu API’si entegre edilmiştir. API anahtarınızı lib/utils/constants.dart dosyasına eklemeyi unutmayın.
Topluluk Özelliği: community_service.dart dosyasında temel bir topluluk paylaşım sistemi bulunmaktadır. Kullanıcılar analiz sonuçlarını paylaşabilir ve diğer kullanıcılarla etkileşimde bulunabilir.
Katkıda Bulunanlar
Bu projeye katkıda bulunmak isterseniz, bir pull request gönderebilir veya bir issue açabilirsiniz. Her türlü geri bildirim ve katkı memnuniyetle karşılanır.

Lisans
Bu proje MIT Lisansı ile lisanslanmıştır. Daha fazla bilgi için LICENSE dosyasına bakınız.

yaml
Kodu kopyala

---

Bu README dosyası, projeye dair kapsamlı bir genel bakış ve kurulum/kullanım talimatları içerir. GitHub'da projeyi paylaşmak için profesyonel bir format sunar ve kullanıcıların projeyi anlamasına, kurmasına ve çalıştırmasına yardımcı olur.
