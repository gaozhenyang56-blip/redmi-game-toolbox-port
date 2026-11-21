# ChatGPT Web Bridge

A personal remote browser for Debian and Ubuntu. An authenticated HTTPS link
streams the actual Chromium window running chatgpt.com through noVNC. Open
`https://chat.gaozy.tech/admin` after provisioning the domain and choose the
official sign-in entry. Complete ChatGPT authentication in the remote window.
Chat history, search, chat synchronization, and model access are managed by
the official site.

Build on a development machine with Go 1.24 or newer and Node 20 or newer.

```bash
bash scripts/build.sh
(cd dist && sha256sum -c chatgpt-web-bridge-linux-x86_64.tar.gz.sha256)
```

Check the checksum from the directory holding the archive and checksum, then
extract the archive on the VPS and run
`sudo bash chatgpt-web-bridge/scripts/install.sh --domain chat.gaozy.tech --proxy auto`.
The installer supports active Nginx, imported Caddy configuration, or a manual
HTTPS upstream. Review the [Chinese deployment guide](docs/deploy.md) for
proxy setup, Actions, maintenance, and sandbox requirements.

The browser uses an independent Linux user and a persistent local profile.
The control channel uses a private Unix socket and admits one active client.
Files pass through the scoped upload and download directories. Image clipboard
content can be sent with the file panel. A physical Android or iOS device and a
signed-in ChatGPT account are needed to validate platform-specific behavior.
