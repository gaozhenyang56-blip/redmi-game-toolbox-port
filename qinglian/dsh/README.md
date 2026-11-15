# DeepSeek Harness

Official `@deepseek-ai/dsh` version `0.2.2-rc.1`, Node `24.11.1`, lockfile-pinned dependencies. Maintained by `.github/workflows/qinglian-dsh.yml` on `codex/dsh-deploy-20261115`.

Entry: https://gaozy.tech/dsh/ . The HTTPS proxy asks for the configured HTTP Basic account, then exchanges DSH's server-local native launch token for its signed browser cookie. Cookies are restricted to `/dsh/`, Secure and HttpOnly. Every HTTP request and WebSocket upgrade requires the external login; the upstream keeps native authentication and its Host/Origin checks. Browser credentials are removed before proxying.

The supplied login was encrypted to a server-owned RSA public key. `login.sealed` contains ciphertext only; the private key remains `/root/dsh-deployment-key.pem`. Production stores a salted PBKDF2-SHA256 hash (600,000 iterations) in root-only `/etc/dsh/web-auth.json`. Plaintext login secrets never enter Git or Actions logs. To rotate, replace `login.sealed` using the public key emitted by `prepare_key.py` and rerun deployment.

Service: `dsh.service`; root-owned runtime `/opt/dsh`; unprivileged home `/var/lib/dsh`; writable workspace `/srv/dsh-workspace`; loopback `127.0.0.1:3080`. Runtime logs and launch credentials stay under `/var/lib/dsh`, mode 0600. Memory is capped at 768 MiB. No production API key is provisioned: add the user's model credentials in WebUI Settings → Models, then choose `/srv/dsh-workspace`.

Deployment builds packages on the runner, backs up the previous HTTPS binary/configuration and an online SQLite snapshot under `/root/dsh-deploy-*`, installs DSH, and replaces only the HTTPS routing binary. A routing or authentication regression restores that binary and stops DSH. The existing nodes, counters, API configuration and unrelated services are checked for preservation. Before any repeated deployment, back up the DSH home/workspace if they contain user work.

Rollback routing: stop `x-ui`, restore `usr/local/x-ui/x-ui` from the chosen `/root/dsh-deploy-*` backup, start `x-ui`, then disable/stop `dsh`. Do not restore the old database snapshot during a routing rollback, because live counters may have advanced.
