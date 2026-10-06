.class public final Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$DevicePermissionSettingsFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DevicePermissionSettingsFragment"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const-string v0, "device_permission_for_camera"

    iput-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$DevicePermissionSettingsFragment;->a:Ljava/lang/String;

    const-string v0, "device_permission_for_screen"

    iput-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$DevicePermissionSettingsFragment;->b:Ljava/lang/String;

    const-string v0, "device_permission_for_notification"

    iput-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$DevicePermissionSettingsFragment;->c:Ljava/lang/String;

    const-string v0, "device_permission_for_files"

    iput-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$DevicePermissionSettingsFragment;->d:Ljava/lang/String;

    return-void
.end method

.method private final a0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$DevicePermissionSettingsFragment;->a:Ljava/lang/String;

    invoke-static {}, Lcom/miui/permcenter/o;->v()Z

    move-result v1

    const-string v2, "android.permission.CAMERA"

    invoke-direct {p0, v0, v2, v1}, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$DevicePermissionSettingsFragment;->b0(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$DevicePermissionSettingsFragment;->b:Ljava/lang/String;

    const-string v1, "com.miui.permission.SCREEN"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$DevicePermissionSettingsFragment;->b0(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$DevicePermissionSettingsFragment;->c:Ljava/lang/String;

    const-string v1, "miui.intent.action.NOTIFICATION_VERIFY"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$DevicePermissionSettingsFragment;->b0(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$DevicePermissionSettingsFragment;->d:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/permcenter/o;->x(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {p0, v0, v2, v1}, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$DevicePermissionSettingsFragment;->b0(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private final b0(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/permissions/ValuePreference;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setVisible(Z)V

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/miui/permcenter/permissions/ValuePreference;->e(Z)V

    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "device_permission"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const p1, 0x7f150023

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$DevicePermissionSettingsFragment;->a0()V

    return-void
.end method
