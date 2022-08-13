#!/bin/bash

## -----------------------------------------
# 対話形式でプロジェクトを作成するスクリプト
## -----------------------------------------

function configure() {
  echo "プロジェクトの名前を入力"
  read name
  rm -f App/Siv3DTemplate*
  sed -i -e "s/Siv3DTemplate/${name}/g" .gitignore CMakeLists.txt

  echo "使用するエディタを選択(vscode, clion, その他)"
  read input

  if [ $input = 'vscode' ] ; then
    echo "vscodeが選択されました"
    cp -r ./EditorExtension/.vscode ./
  elif [ $input = 'clion' ] ; then
    echo "clionが選択されました"
    cp -r ./EditorExtension/.idea ./
  else
    echo "その他が選択されました"
  fi
}

configure
echo "終了しました"
