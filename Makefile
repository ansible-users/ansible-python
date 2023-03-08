install_dir:=~/.ansible/roles/ansible-users.python

install: clean
	mkdir -p $(install_dir)
	cp -r ./  $(install_dir)/
	rm -fr $(install_dir)/.git

clean:
	rm -fr $(install_dir)


test:
	cd tests && ansible-playbook test.yml
