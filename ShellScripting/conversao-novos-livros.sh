#!/bin/bash

varrer_diretorio() {
  cd $1
  for arquivo in *
  do
    local caminho_arquivo="$PWD"/"$arquivo"
    if [ -d "$caminho_arquivo" ]; then
      varrer_diretorio "$caminho_arquivo"
      cd ..
    else
      convert "$caminho_arquivo" "${caminho_arquivo/.jpg/.png}"
    fi

  done

}

varrer_diretorio /imagens-novos-livros