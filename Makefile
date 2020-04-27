MYEMAC=$(HOME)/.emacs.d

all:
	@echo "**********************************************"
	@echo "Please, read the README.md before use the make"
	@echo "**********************************************"

copy:
	@echo "Copy files from configuration to sandbox"
	@cp $(MYEMAC)/init.el ./init.el
	@cp $(MYEMAC)/themes/* ./themes/
	
deploy:
	@mkdir -p $(MYEMAC)/themes
	@echo "Copy files from sandbox to configuration"
	@cp ./init.el $(MYEMAC)/init.el 
	@cp ./themes/* $(MYEMAC)/themes/

clean:
	@rm *~
# EOF
