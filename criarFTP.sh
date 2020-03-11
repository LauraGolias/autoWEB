#!/bin/bash

nome=$1

useradd $nome -p $(openssl passwd '123') -d /var/www/$nome
