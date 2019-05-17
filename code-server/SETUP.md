Create file `/etc/systemd/system/code-server.service.d/override.conf` with the following contents (replace password with actual value):

	[Service]
	Environment="PASSWORD=insert-password-here"

