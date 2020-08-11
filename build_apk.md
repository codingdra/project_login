# Build dan Release Project Flutter jadi File APK

## 1. Generate keystore

a. copas keystore dibawah ke terminal

```rb
> $ keytool -genkey -v -keystore /home/linux/Documents/belajar/flutter/mentoring/week1/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
```

b. selanjutnya di vscode buat file key.properties di folder /android/key.properties
setelah itu copas code dibawah dan isinya sisesuaikan

```rb
storePassword=123456
keyPassword=123456
keyAlias=key
storeFile=/home/linux/Documents/belajar/flutter/mentoring/week1/key.jks
```

c. sekarang kita configure file build gradle di android/app/build.gradle
lalu copas code dibawah diatas tulisan android atau diatas baris 28

```rb
def keystoreProperties = new Properties()
def keystorePropertiesFile = rootProject.file('key.properties')
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
}
```

d. sekarang kita copas code dibawah diatas tulisan buildTypes atau diatas baris 54

```rb
   signingConfigs {
       release {
           keyAlias keystoreProperties['keyAlias']
           keyPassword keystoreProperties['keyPassword']
           storeFile keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
           storePassword keystoreProperties['storePassword']
       }
   }
```

e. setelah itu kita rubah code dibawah release

> sebelumnya:

> signingConfig signingConfigs.debug

> menjadi:

> signingConfig signingConfigs.release

f. setelah itu kita rubah applicationId di baris 47, disesuaikan untuk kebutuhan publish ke playstore

> sebelumnya:

> applicationId "com.example.project_login"

> menjadi:

> applicationId "com.id.project_login"

g. lalu buka file android/app/src/main/AndroidManifest.xml
lalu rubah package di baris 2, sama seperti diatas kita sesuaikan untuk kebutuhan publish ke playstore

> sebelumnya:

> package="com.example.project_login"

> menjadi:

> package="com.id.project_login"

h. setelah itu kita tambahkan internet permission untuk web view dibaris ke 8

```rb
<uses-permission android:name="android.permission.INTERNET" />
```
