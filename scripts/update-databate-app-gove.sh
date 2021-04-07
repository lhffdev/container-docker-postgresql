#!/bin/bash

COLOR_YELLOW='\033[1;49;33m';
COLOR_CLEAN='\033[0m';
SCRIPT_PATH=$(dirname $(realpath $0))
DOCKER_PATH=$(dirname $SCRIPT_PATH)

echo -e "${COLOR_YELLOW}==================================================="
echo "===== Iniciando atualização do banco de dados ====="
echo "==================================================="

echo -e "${COLOR_CLEAN}"

cd "${DOCKER_PATH}/files2docker/backup"

rm -rf latest.dump

heroku pg:backups:capture -a  gove-app-production

echo ""
echo -e "${COLOR_YELLOW}================================================"
echo "===== Iniciando download do banco de dados ====="
echo "================================================"

echo -e "${COLOR_CLEAN}"

heroku pg:backups:download -a gove-app-production

echo ""
echo -e "${COLOR_YELLOW}==============================================="
echo "===== Iniciando restore do banco de dados ====="
echo "==============================================="

echo -e "${COLOR_CLEAN}"

docker exec -it postgresql bash ./scripts/restore-database.sh
