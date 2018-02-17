#!/bin/bash
ssh-keyscan nodo >> ~/.ssh/known_hosts
sshpass -p 'root' ssh-copy-id -i ~/.ssh/id_rsa.pub root@nodo

tail -f /dev/null

