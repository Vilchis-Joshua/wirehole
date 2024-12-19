#!/bin/bash

# General settings
# Set your timezone
echo "TIMEZONE=America/New_York" >> .env

# User and group identifiers
# User ID
echo "PUID=1000" >> .env
# Group ID
echo "PGID=1000" >> .env

# Network settings
# Subnet for the private network - NOT USED IN COMPOSE FILE, CAN BE REMOVED
# SUBNET=10.2.0.0/24

# Static IP for Unbound
echo "UNBOUND_IPV4_ADDRESS=10.2.0.200" >> .env
# Static IP for Pi-hole
echo "PIHOLE_IPV4_ADDRESS=10.2.0.100" >> .env
# Port for Wireguard server
echo "WIREGUARD_SERVER_PORT=51820" >> .env
# DNS for Wireguard peers, set to Pi-hole
echo "WIREGUARD_PEER_DNS=10.2.0.100" >> .env

# Wireguard settings
# Number of peers (clients) to generate
# echo "WIREGUARD_PEERS=1" >> .env
echo "PEERS=1" >> .env

# Wireguard-UI settings
# Session secret, change to something secure
echo "WGUI_SESSION_SECRET=$(openssl rand -base64 15 | tr -d '\n')" >> .env
# Username for Wireguard-UI
echo "WGUI_USERNAME=admin" >> .env
# Password for Wireguard-UI, change to something secure
echo "WGUI_PASSWORD=admin" >> .env
# Enable management of Wireguard start
echo "WGUI_MANAGE_START=true" >> .env
# Enable management of Wireguard restart
echo "WGUI_MANAGE_RESTART=true" >> .env
echo "WGUI_DEFAULT_CLIENT_ALLOWED_IPS=10.2.0.0/24" >> .env

# Pi-hole settings
# Web password for Pi-hole, set to a secure password
echo "WEBPASSWORD=$(openssl rand -base64 15 | tr -d '\n')" >> .env

# IP address for the Unbound server used by Pi-hole
echo "PIHOLE_DNS=10.2.0.200" >> .env
