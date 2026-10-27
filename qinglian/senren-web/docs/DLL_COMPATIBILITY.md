# version.dll compatibility assessment

Uploaded binary SHA-256: `52745037818beb55ef3c3006342658080b652f81fc652020780904ed2cf358d2`.
PE32/i386, 94,208 bytes; 17 exported Windows version APIs. Static inspection only; the DLL was not executed.

The strings and public design correspond to arcusmaximus/KirikiriTools `KirikiriUnencryptedArchive`, reference revision `9590c3cce4733e1f048cd407bfb57e8ce71f1f95`. This is a behavioral reference, not proof that every instruction of this binary matches that source revision. Upstream MIT license applies to that source; the server-side archive view implementation is independently written from the XP3 format and observed interfaces.

| Behavior | Web implementation | Validation boundary |
| --- | --- | --- |
| Windows version API forwarding, DLL loading, executable patching and plugin-verifier hooks | No Windows process exists in the browser; not emulated | Cannot claim binary/ABI compatibility |
| Hash-zero plaintext XP3 entries | CXDEC filter leaves the upstream Xp3Pack hash-zero marker unchanged | Covered by archive and native-engine tests |
| `unencrypted/<resource path>` replacement | Read-only XP3 views replace matching logical entries while keeping original files unchanged | Exact matching; supported scripts, images, audio and fonts |
| `unencrypted.xp3` replacement | Reads plaintext hash-zero entries; exact path then basename fallback | Loose files take precedence; compressed/raw entries supported |
| Original resource fallback | Unmatched archive entries retain original data and metadata | Binary tests verify unchanged resources and original archive bytes |
| Ordinary material replacement | Same resource lookup as scripts, including `.pimg` | Does not validate renderer-specific texture formats or guarantee frame rate |
| Extraction through `extract-unencrypted.txt` | Not implemented | No claim of full DLL equivalence |
| Every future patch, incompatible scripts, novel native plugins or save migrations | Not guaranteed | Requires actual patch + game-version and runtime regression testing |

Limits: at most 2 GiB of replacements; XP3 indexes at most 32 MiB; individual compressed segments at most 128 MiB. Loose resources stream from disk without loading all textures in server memory; compressed resource cache is bounded to 64 MiB. Invalid replacement archives produce a visible compatibility error and leave original archive serving intact. Resources with no matching original entry are reported, not marked playable. New logical entries and arbitrary storage-media registration are not synthesized.

The admin page distinguishes resource mapping from actual gameplay validation. Uploaded resources still use the existing version checking, staging and recovery controls. Only the test port uses this layer. The user's actual new dialogue/material patch has not been provided or validated.

Native browser fixture: a custom `unencrypted/startup.tjs` was mapped into the original archive view; the real WebAssembly engine executed it and emitted `RESOURCE_OVERLAY_TEST_OK`. This is a synthetic resource-loading check, not verification of the user’s dialogue, material files, patch2.xp3, save compatibility or future patch compatibility. 26 Python checks include exact bytes, fallback, a texture larger than the text-editor limit, compressed plaintext XP3, priority, bad indexes, restore and HTTP Range/WebDAV lengths.
