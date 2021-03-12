all: index.html

force:
	bikeshed -f spec ./index.bs

index.html: index.bs
	bikeshed -f spec ./index.bs

CR: index.bs
	bikeshed -f spec --md-status=CR --md-date=2015-10-08 --md-deadline=2015-11-08 ./index.bs ./published/2015-10-CR.html

clean:
	$(RM) index.html

