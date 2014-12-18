# This file could be run only form the directory where the Makefile is 

get.allthemes:
	scp -r \
		athena:codekitchen/web_scripts/wp/wp-content/themes \
		./

rm.theme:
	# usage:
	# 	make rm.theme theme=default-alt
	rm -rf ./themes/$(theme)
	ssh athena 'rm -rf codekitchen/web_scripts/wp/wp-content/themes/$(theme)' 

get.theme:
	# usage:
	# 	make get.theme theme=default
	scp -r \
		athena:codekitchen/web_scripts/wp/wp-content/themes/$(theme) \
		./themes/

upload.theme:
	# usage:
	# 	make upload.theme theme=allegra1
	scp -r \
		./themes/$(theme) \
		athena:codekitchen/web_scripts/wp/wp-content/themes/

