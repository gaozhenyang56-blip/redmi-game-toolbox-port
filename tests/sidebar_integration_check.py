"""Check reflective original-code contracts and resource wiring, not device behavior."""
from pathlib import Path
import re
import xml.etree.ElementTree as ET

android = "{http://schemas.android.com/apk/res/android}"
app = "{http://schemas.android.com/apk/res-auto}"
root = Path("decoded/smali_classes2")

def original(path):
    return (root / (path + ".smali")).read_text()

def method(path, signature):
    text = original(path)
    assert re.search(r"(?m)^\.method public (?:static )?" + re.escape(signature) + r"$", text), (path, signature)

def field(path, name, descriptor):
    assert re.search(r"(?m)^\.field [^\n]*\b" + re.escape(name + ":" + descriptor) + r"$", original(path)), (path, name)

service = "com/miui/gamebooster/service/DockWindowManagerService"
for name, descriptor in {"f":"Lo7/a;", "e":"Landroid/os/Handler;", "a":"L"+service+"$GameBoosterWindowBinder;",
                         "m":"I", "b":"Ls8/h;", "h":"Ljava/lang/String;", "i":"I", "c":"Z", "d":"Z"}.items():
    field(service, name, descriptor)
method(service+"$GameBoosterWindowBinder", "constructor <init>(L"+service+";)V")
method("o7/a", "constructor <init>()V")
method("o7/a", "a(I)V")
method("s8/h", "constructor <init>(L"+service+";Landroid/os/Handler;)V")
for signature in ["x1()V", "i1()V", "z()V", "O0()V", "M0()V", "Z()Landroid/view/WindowManager;"]:
    method("s8/h", signature)
for name, descriptor in {"o":"Z","d":"Lcom/miui/dock/sidebar/j;","e":"Lcom/miui/dock/sidebar/j;",
                         "k":"Lcom/miui/dock/sidebar/j;","l":"Lcom/miui/dock/drag/DockShortCutMenu;","m":"Z","n":"Landroid/os/Handler;"}.items():
    field("s8/h",name,descriptor)
for signature in ["S()V", "T(Z)V", "A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;",
                  "w()Lcom/miui/dock/sidebar/RegionSamplingImageView;", "u()Lcom/miui/dock/sidebar/b;", "z()Landroid/widget/FrameLayout;"]:
    method("com/miui/dock/sidebar/j", signature)
method("com/miui/gamebooster/windowmanager/newbox/TurboLayout", "o()V")
method("s8/x", "h(Landroid/content/Context;)Ls8/x;")
method("s8/x", "i(I)V")
for signature in ["e(Ljava/lang/String;Z)Z", "h(Ljava/lang/String;I)I", "l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
                  "n(Ljava/lang/String;Z)V", "p(Ljava/lang/String;I)V", "r(Ljava/lang/String;Ljava/lang/String;)V"]:
    method("r4/a",signature)

preferences = ET.parse("decoded/res/xml/gs_setting.xml").getroot()
keys = {node.get(android+"key"): node for node in preferences.iter() if node.get(android+"key")}
for key in ["pref_game_shortcut", "pref_game_box", "pref_slip", "pref_shizuku", "pref_content_setting",
            "pref_game_storage", "pref_game_uninstall", "pref_shortcut", "pref_shoulder_key",
            "preference_category_key_performance_booster", "preference_category_key_anti_disturb_msg",
            "preference_category_key_else_function", "port_sidebar_side", "port_sidebar_inset", "port_sidebar_height"]:
    assert key in keys and keys[key].get(app+"isPreferenceVisible") != "false", key
arrays = {node.get("name"): [item.text for item in node] for node in ET.parse("decoded/res/values/port_sidebar_arrays.xml").getroot()}
for key in ["port_sidebar_side", "port_sidebar_inset", "port_sidebar_height"]:
    node = keys[key]
    assert len(arrays[node.get(android+"entries").split("/")[1]]) == len(arrays[node.get(android+"entryValues").split("/")[1]])

manifest = ET.parse("decoded/AndroidManifest.xml").getroot()
host = next(node for node in manifest.iter("service") if node.get(android+"name") == service.replace("/", "."))
assert host.get(android+"exported") == "false" and host.get(android+"foregroundServiceType") == "specialUse"
permissions = {node.get(android+"name") for node in manifest.iter("uses-permission")}
assert "android.permission.FOREGROUND_SERVICE_SPECIAL_USE" in permissions
assert host.find("property") is not None
assert "SidebarRuntime;->create" in original(service)
assert "SidebarRuntime;->destroy" in original(service)
assert "SidebarRuntime;->configurationChanged" in original(service)
assert "handleLayout" in original("s8/h") and "panelLayout" in original("s8/h")
print("Original sidebar reflection contracts, settings retention and service/resource wiring passed (static checks)")

# These methods execute on window attachment and the original swipe callback.
# Normal overlay permission does not grant Secure/Global settings writes.
assert "Settings$Secure;->putString" not in original("s8/h")
assert "Settings$Global;->putInt" not in original("s8/h")
print("Sidebar attachment/swipe state uses app-owned storage; no privileged settings writes")

fragment = original("com/miui/gamebooster/ui/GameBoosterSettingFragment")
creation = fragment.split(".method public onCreatePreferences(", 1)[1].split(".end method", 1)[0]
assert "->n1()" not in creation and "->r1()" not in creation and "->s1()" not in creation
assert "OriginalSettings;->apply" in creation
destruction = fragment.split(".method public onDestroy()V", 1)[1].split(".end method", 1)[0]
assert "if-eqz v0, :port_task_v" in destruction and "if-eqz v0, :port_destroy" in destruction
method_path = "com/miui/bubbles/utils/TipsManager"
bubble_init = original(method_path).split(".method private init()V", 1)[1].split(".end method", 1)[0]
assert "registerContentObserver" not in bubble_init and "isSupportBubbleTips:Z" in bubble_init
bubble_entry = original(service).split(".method private static synthetic G0()V", 1)[1].split(".end method", 1)[0]
assert "TipsManager" not in bubble_entry
assert ".method public addPreferencesFromResource(I)V" in Path("decoded/smali/androidx/preference/PreferenceFragmentCompat.smali").read_text()
print("Crash-path checks passed: no Xiaomi bubble observer; null-safe task teardown; no legacy settings callbacks")

wrapper=original("com/miui/dock/sidebar/j")
assert "SidebarRuntime;->handleTouch" in wrapper
assert "SidebarRuntime;->anchorX" in wrapper
assert "SidebarRuntime;->preserveHandle" in original("s8/h")
method("com/miui/dock/sidebar/j","C()V")
field("com/miui/dock/sidebar/j","s","Lcom/miui/dock/sidebar/f;")
print("Collapsed-handle touch routing and animated inset protection wired (static checks)")

assert "SidebarRuntime;->closePanel" in original("s8/h")
assert "SidebarRuntime;->panelLayout" in original("m5/g")
for signature in ["q()Landroid/view/View;", "o()Ls8/h;", "Q()V", "O()V"]: method("com/miui/dock/sidebar/j",signature)
for name,descriptor in {"f":"Lmiuix/popupwidget/widget/GuidePopupWindow;", "s":"Landroid/view/View;"}.items(): field("s8/h",name,descriptor)
method("s8/h","I()V")
method("s8/h","U0(I)V")
print("Panel collapse coordinates and auxiliary-window cleanup contracts checked (static)")

# Verify the exact bundled ListPreference reflection targets, not Android's API names.
list_preference = Path("decoded/smali/androidx/preference/ListPreference.smali").read_text()
assert ".method public w(Ljava/lang/String;)V" in list_preference
assert ".method public m()Ljava/lang/CharSequence;" in list_preference
settings_source = Path("java/com/gzy/redmiport/OriginalSettings.java").read_text()
assert 'getMethod("w",String.class)' in settings_source
assert 'getMethod("setSummaryProvider",provider)' in settings_source
assert 'Class.forName("androidx.preference.ListPreference$a").getMethod("b")' in settings_source
assert ".method public static b()Landroidx/preference/ListPreference$a;" in Path("decoded/smali/androidx/preference/ListPreference$a.smali").read_text()
assert ".method public final setSummaryProvider(Landroidx/preference/Preference$f;)V" in Path("decoded/smali/androidx/preference/Preference.smali").read_text()
assert 'getMethod("setValue"' not in settings_source and 'getMethod("getEntry"' not in settings_source
print("Bundled ListPreference value/entry reflection contracts passed")
