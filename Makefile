.PHONY: all

all:
	mkdir ${HOME}/bin
	cp src/* ${HOME}/bin
	echo '' >> ${HOME}/.bashrc
	#echo 'export PATH="${HOME}/bin:${PATH}' >> ${HOME}/.bashrc

clean:
	rm -f ${HOME}/bin/*
