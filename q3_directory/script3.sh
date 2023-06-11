#!/bin/bash

#Question 3

#shuf command method

read -p "Enter length of password : " length

password1="$(shuf -n $length -e ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890)"

echo "Password by M1 : $password1"

#openssl Method

password2="$(openssl rand -hex $length)"

echo "Password by M2 : $password2"
