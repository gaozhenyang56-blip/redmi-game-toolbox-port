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

QQ official account binding is a subsequent step. The model API is configured
and verified below, but QQ replies require binding a QQ official bot first.

## Verified deployment on 2026-10-22

AstrBot 4.29.1 is installed and `astrbot.service` is active and enabled at boot.
The Zhipu API key was transferred through an AES-GCM encrypted workflow input,
decrypted using the existing SSH Secret, and saved only in server-side application
configuration with mode 0600. No plaintext model credentials are in Git or Actions logs.

Default text model: `glm-4-flash-250414`. Default image model and verified fallback:
`glm-4.1v-thinking-flash`. Text replies, actual image recognition, the live AstrBot
provider test, a tool-call/result/final-answer round trip, and automatic selection
of the image-capable model all passed from the server.

`glm-4.7-flash` and `glm-4.6v-flash` are also configured as free selectable models.
At verification time the former timed out and the latter returned HTTP 429 / 1305
(provider busy). They are excluded from automatic fallbacks until a later test
confirms availability. No paid model has been configured.

Server-local sanitized report: `/opt/astrbot/data/zhipu-verification.json`.

Evidence:
- Installation: https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39814363593
- Model and tool tests: https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39815687638
- Image routing, autostart and existing-service verification: https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39816264708

QQ is not bound yet. Use the AstrBot dashboard's QQ official WebSocket QR flow
to bind the owner account. There is no unofficial personal-account QQ adapter.
