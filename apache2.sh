#!/bin/bash

echo "Atualizando maquina!"
dnf upgrade -y

echo "instalando web server"
dnf group install "Basic Web Server" -y

echo "ativando web server"
systemctl enable httpd.service --now

