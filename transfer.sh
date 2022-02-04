---
tags: [ networking ]
---
# Subir un archivo
curl --upload-file file.txt https://transfer.sh/file.txt; echo

# Indicar el núm. máximo de descargas y de validez
curl -H "Max-Downloads: 1" -H "Max-Days: 5" --upload-file file.txt https://transfer.sh/file.txt

# Descargar un archivo
curl https://transfer.sh/66nb8/file.txt -o file.txt

### Subir multiples archivos
curl -i -F filedata=@/tmp/file.txt -F filedata=@/tmp/file2.txt https://transfer.sh/

# Combinar descargas como archivos zip o tar
curl https://transfer.sh/(15HKz/file.txt,15HKz/file.txt).tar.gz
curl https://transfer.sh/(15HKz/file.txt,15HKz/file.txt).zip

# Cifrar archivos con contraseña usando gpg
cat /tmp/file.txt | gpg -ac -o- | curl -X PUT --upload-file "-" https://transfer.sh/test.txt

# Descargar y descifrar gpg
curl https://transfer.sh/1lDau/test.txt | gpg -o- > /tmp/file.txt

# Cifrar archivos con contraseña usando ssl
cat /tmp/hello.txt | openssl aes-256-cbc -pbkdf2 -e | curl -X PUT --upload-file "-" https://transfer.sh/test.txt

# Descargar y descifrar ssl
curl https://transfer.sh/8cqL2b/test.txt | openssl aes-256-cbc -pbkdf2 -d > /tmp/hello.txt

# Escanear archivos contra virus y malware usando ClamAV
wget http://www.eicar.org/download/eicar.com
curl -X PUT --upload-file ./eicar.com https://transfer.sh/eicar.com/scan

# Subir malware a VirusTotal, obtener un permalink en el retorno
curl -X PUT --upload-file nhgbhhj https://transfer.sh/test.txt/virustotal

# Copia de seguridad Mysql DB, cifrar y transferir
mysqldump --all-databases | gzip | gpg -ac -o- | curl -X PUT --upload-file "-" https://transfer.sh/test.txt

# Transferir y enviar un email con enlace (usa alias)
transfer /tmp/file.txt | mail -s "Hello World" user@yourmaildomain.com

# Con wget
wget --method PUT --body-file=/tmp/file.tar https://transfer.sh/file.tar -O - -nv

# Eliminar archivo usando el Token de borrado
curl 'https://transfer.sh/JSv20e/file.txt/rPgIgwCgFvxF' -X DELETE

