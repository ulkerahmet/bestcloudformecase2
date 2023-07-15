# Bestcloudfor.me Akademi 2023 Case 2. Görev
- Case'de verilmiş olan uygulamanın Docker container olarak çalıştırılmasında gerekli ilk adım olan Dockerfile hazırlama görevi tamamlandı.
- Bu görevi yaparken yerli ve yabancı bir çok kaynak taradım ve sonucunda Dockerfile oluşturmayı çok daha detaylı bir şekilde öğrendim. Ayrıca Dockerfile komutlarını, bu komutların ne işe yaradığını ve hangi komutun ne zaman kullanılacağını uygulayarak çok daha verimli bir yoldan öğrendim.

Bu görevde çalıştırdığım bütün komutlar aşağıda belirtildiği gibi aynı zamanda "img" dosyası içinde ekran görüntüleriyle birlikte mevcuttur.

1- İlk olarak ubuntu CLI ekranında "mkdir akademi" komutu ile akademi adında dosya oluşturdum.

2- Ardından uygulama dosyalarını bu dosyanın içine attım ve daha sonra bu dosyanın içinde Dockerfile oluşturmak istedim. Dockerfile dosyasının içeriğini düzenlemek için vi Dockerfile komutunu çalıştırdım ve insert modda içerdiği düzenledim.

3- Dockerfile'ın içeriğini düzenlerken şu kodlları kullandım;

FROM python:3.9

RUN apt-get update && apt-get install -y \ vim

WORKDIR /uygulama

COPY . .

RUN pip install --no-cache-dir-r requirements.txt

CMD ["python", "app.py"]
