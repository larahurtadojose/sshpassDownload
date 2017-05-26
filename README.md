Role Name
=========

Ansible role for Download a file using sshpass from a sftp server. Please review the tasks/main.yml first.

Requirements
------------

sshpass and sftp are required.

Role Variables
--------------

	vars/main.yml
	download_this_file: file_to_download.zip

	Vars in playbook passed from the role definition
	v_usr: user
	v_pass: password 
	v_server: server
	v_remotePath: /path1/path2/
	v_localPath: /path1/path2/path3

Dependencies
------------

no.

Example Playbook
----------------

	--- 
	- name: DOWNLOAD PROCESS
	  hosts: local
	  user: ansible
	  become: true
	  connection: local

	  roles:
	    - role: sshpassDownload
	      v_usr: user
	      v_pass: password 
	      v_server: server
	      v_remotePath: /path1/path2/
	      v_localPath: /path1/path2/path3

License
-------

MIT

Author Information
------------------

Miguel Soranno
