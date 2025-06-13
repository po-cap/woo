
.PHONY: launcher_ic rename_bundle

init:
	dart pub global activate dartdoc	
	dart pub global activate dhttpd

# 建立啟動圖標
launcher_ic:
	. ./launcher_ic.sh

# 更改包名以及應用名
rename_bundle:
	. ./rename_bundle.sh

generate-docs:
	dart pub global run dartdoc

watch-docs:
	dhttpd --path doc/api
