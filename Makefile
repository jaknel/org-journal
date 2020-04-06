EMACS=emacs

all: clean compile test

test:
	${EMACS} -batch -L . -l org-journal-test -f ert-run-tests-batch-and-exit

compile:
	${EMACS} -batch -L . -f batch-byte-compile *.el

clean:
	rm -f *.elc
