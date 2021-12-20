#!/bin/sh

if [ -n "$AUTH_TOKEN" ]; then
    echo -e "\nauthtoken: $AUTH_TOKEN" >> /ngrok.yml
fi

exec ngrok start --all -config /ngrok.yml
