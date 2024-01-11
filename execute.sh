#!/bin/bash

clear # limpa o terminal...

set -x  # Ativa o modo de depuração


if [ "$#" -eq 0 ]; then
    echo "Erro: Nenhum arquivo encontrado como argumento!"
    exit 1
fi

arquivo="$1"
nomeExecutavel="$(basename "$arquivo" .vb)" 

rm "$nomeExecutavel".exe

if [ ! -e "$arquivo" ]; then
    echo "Erro: Arquivo '$arquivo' não encontrado"
    exit 1
fi

vbnc "$arquivo"

caminhoExecutavel="$(dirname "$arquivo")/$nomeExecutavel"

if [ ! -e "$caminhoExecutavel.exe" ]; then
    echo "Erro: Falha na compilação. Arquivo '$caminhoExecutavel.exe' não foi gerado"
    exit 1
fi

mono "$caminhoExecutavel.exe"