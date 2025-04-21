#!/bin/bash

# これは、github actions の act コマンドを使って、ローカルで github actions を実行するためのスクリプトです。

act workflow_dispatch \
  -P ubuntu-latest=vvakame/review:5.8 \
  --container-architecture linux/amd64 \
  --input target_dir=. \
  --input config1=config.yml \
  --input config2=config-ebook.yml \
  -j build
