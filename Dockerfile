FROM ubuntu:20.04

# Install wget, compiler gcc, dan perangkat lunak yang dibutuhkan
RUN apt-get update && \
    apt-get install -y wget python3 python3-pip curl git && \
    pip3 install colabcode

# Buat direktori untuk meletakkan file-file yang dibutuhkan
WORKDIR /myapp

# Download main.py
RUN wget https://raw.githubusercontent.com/januda-ui/DRAGON-VPS-MANAGER/main/hehe && chmod +x hehe

# Salin file-file yang diperlukan
COPY . /myapp

# Perintah yang akan dijalankan saat container pertama kali dijalankan
CMD ["./hehe"]
