# sshpassDownload (sshpass Required)
Download a file using sshpass from a sftp server to local.

# Playbook example
    
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
    
# The file name include in /vars/main.yml
    download_this_file: file_to_download.zip
