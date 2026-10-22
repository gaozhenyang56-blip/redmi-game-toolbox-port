# AstrBot on the existing server

This independent deployment uses the existing Qinglian GitHub SSH Secrets and
the pinned host key in `server/github/server-host-key.sha256`. It does not change
the Android application, x-ui binary, proxy nodes, databases, or network rules.

The first-install workflow deploys official AstrBot v4.29.1, upstream commit
`dffe922773725e9c178392c423676ad65044748c`, with an archive SHA-256 check.
It uses a dedicated `astrbot` system user, Python virtual environment and
`astrbot.service`, with restart and boot startup enabled. Application files and
data are under `/opt/astrbot`. Back up `/opt/astrbot/data` before future upgrades.
This is a first-install workflow; an existing installation is deliberately not overwritten.

The dashboard listens at `127.0.0.1:6185`. On your computer:

```sh
ssh -N -L 6185:127.0.0.1:6185 -p 22 root@SERVER
```

Then browse `http://127.0.0.1:6185`. Username: `astrbot`. The bootstrap password
is supplied privately to the owner and must be changed on first login. It is
derived from the existing SSH Secret using a separate HMAC context, is never
committed, and is never printed in Actions. Only hashes remain in application
configuration. Installation output is kept at `/var/log/astrbot-install.log` on
the server; application logs are in the service journal.

QQ official account binding and model API setup are subsequent steps. Until those
are configured, the service and dashboard work but no QQ AI replies are available.
