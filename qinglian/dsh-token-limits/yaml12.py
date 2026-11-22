"""Read DSH's YAML 1.2 booleans without converting off/on model-option keys."""
import re
import yaml
class DshYamlLoader(yaml.SafeLoader):
    pass
DshYamlLoader.yaml_implicit_resolvers={
    key:[(tag,pattern) for tag,pattern in values if tag!='tag:yaml.org,2002:bool']
    for key,values in yaml.SafeLoader.yaml_implicit_resolvers.items()
}
DshYamlLoader.add_implicit_resolver('tag:yaml.org,2002:bool',re.compile(r'^(?:true|True|TRUE|false|False|FALSE)$'),list('tTfF'))
def load(text):
    return yaml.load(text,Loader=DshYamlLoader)
