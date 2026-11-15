def fix_source(text):
 if 'dsh-cwd-variable-compat' in text:return text
 old='export function overlayOfficialIdentity(sections) {'
 assert text.count(old)==1
 text=text.replace(old,'export function overlayOfficialIdentity(sections, variables = {}) {\n  // dsh-cwd-variable-compat: newer DSH exposes workspace context separately.\n  const cwdSuffix = Object.hasOwn(variables, "cwd") && variables.cwd != null ? CWD_ONLY_SUFFIX : "";')
 start=text.index('export function overlayOfficialIdentity(');end=text.index('\nfunction withoutHardcodedExec',start)
 block=text[start:end]
 assert block.count('text: CWD_ONLY_SUFFIX')==2
 text=text[:start]+block.replace('text: CWD_ONLY_SUFFIX','text: cwdSuffix')+text[end:]
 old='sanitizeAssemblySections(leadWithInject(sections, injectText, protocol)),\n  );'
 assert text.count(old)==1
 return text.replace(old,'sanitizeAssemblySections(leadWithInject(sections, injectText, protocol)),\n    assembled.variables || {},\n  );')
