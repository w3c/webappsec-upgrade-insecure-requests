all: index.html

force:
	bikeshed -f spec ./index.src.html

index.html: index.src.html
	bikeshed -f spec ./index.src.html

CR: index.src.html
	bikeshed -f spec --md-status=CR --md-date=2015-10-08 --md-deadline=2015-11-08 ./index.src.html ./published/2015-10-CR.html

publish:
	git push origin master master:gh-pages

