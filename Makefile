
get.allthemes:
	scp -r \
		athena:codekitchen/web_scripts/wp/wp-content/themes \
		~/projects/ckwp/

rm.theme:
	# usage:
	# 	make rm.theme theme=default-alt
	rm -rf ~/projects/ckwp/themes/$(theme)
	ssh athena 'rm -rf codekitchen/web_scripts/wp/wp-content/themes/$(theme)' 

get.theme:
	# usage:
	# 	make get.theme theme=default
	scp -r \
		athena:codekitchen/web_scripts/wp/wp-content/themes/$(theme) \
		~/projects/ckwp/themes/

upload.theme:
	# usage:
	# 	make upload.theme theme=allegra1
	scp -r \
		~/projects/ckwp/themes/$(theme) \
		athena:codekitchen/web_scripts/wp/wp-content/themes/

