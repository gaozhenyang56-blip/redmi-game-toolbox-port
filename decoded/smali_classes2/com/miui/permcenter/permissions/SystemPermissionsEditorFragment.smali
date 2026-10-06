.class public Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;
.super Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;",
        "Landroidx/loader/app/a$a<",
        "Lcom/miui/permcenter/permissions/c;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/String;

.field private d:Landroidx/loader/app/a;

.field private e:Lw4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw4/d<",
            "Lcom/miui/permcenter/permissions/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->f:Landroid/content/Context;

    const-string v0, "custom_define_permission_desc_"

    iput-object v0, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->g:Ljava/lang/String;

    return-void
.end method

.method private h0(Landroid/content/Context;Landroid/content/res/Resources;Landroidx/preference/PreferenceScreen;)V
    .locals 1

    new-instance v0, Lcom/miui/permcenter/permissions/PermTipsPreference;

    invoke-direct {v0, p1}, Lcom/miui/permcenter/permissions/PermTipsPreference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0e0480

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const p1, 0x7f121913

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private i0(Lcom/miui/permission/PermissionInfo;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->f:Landroid/content/Context;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    if-eqz v0, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "string"

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/miui/permission/PermissionInfo;->getDesc()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/miui/permission/PermissionInfo;->getDesc()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j0(J)[Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x40

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string p1, "android.permission.READ_PHONE_STATE"

    const-string p2, "android.permission.READ_PHONE_NUMBERS"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/high16 v0, 0x4000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const-string p1, "android.permission.ANSWER_PHONE_CALLS"

    const-string p2, "android.permission.PROCESS_OUTGOING_CALLS"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const-string p1, "android.permission.CALL_PHONE"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    const-string p1, "android.permission.READ_CALL_LOG"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-wide/16 v0, 0x10

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    const-string p1, "android.permission.WRITE_CALL_LOG"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-wide/high16 v0, 0x1000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    const-string p1, "android.permisison.ADD_VOICEMAIL"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-wide/high16 v0, 0x2000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    const-string p1, "android.permission.USE_SIP"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const-wide v0, 0x80000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    const-string p1, "android.permission.READ_CONTACTS"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-wide/16 v0, 0x8

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    const-string p1, "android.permission.WRITE_CONTACTS"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    const-wide v0, 0x800000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    const-string p1, "android.permission.GET_ACCOUNTS"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    const-wide/16 v0, 0x20

    cmp-long v0, p1, v0

    if-nez v0, :cond_a

    const-string p1, "android.permission_group.LOCATION"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    const-string p1, "android.permission_group.CALENDAR"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const-wide/32 v0, 0x10000000

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    const-string p1, "android.permission.READ_SMS"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    const-string p1, "android.permission.SEND_SMS"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    const-wide/32 v0, 0x80000

    cmp-long v0, p1, v0

    if-nez v0, :cond_e

    const-string p1, "android.permission.SEND_MMS"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_e
    const-wide/32 v0, 0x20000000

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    const-string p1, "android.permission.READ_MMS"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    const-wide/16 v0, 0x1000

    cmp-long v0, p1, v0

    if-nez v0, :cond_10

    const-string p1, "android.permission_group.CAMERA"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_10
    const-wide/32 v0, 0x400000

    cmp-long v0, p1, v0

    if-nez v0, :cond_11

    const-string p1, "android.permission.BLUETOOTH_ADMIN"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_11
    const-wide v0, 0x200000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_12

    const-string p1, "android.permission_group.STORAGE"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_12
    const-wide/32 v0, 0x20000

    cmp-long v0, p1, v0

    if-nez v0, :cond_13

    const-string p1, "android.permission_group.MICROPHONE"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_13
    const-wide/32 v0, 0x200000

    cmp-long v0, p1, v0

    if-nez v0, :cond_14

    const-string p1, "android.permission.CHANGE_WIFI_STATE"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_14
    const-wide v0, 0x400000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_15

    const-string p1, "android.permission.group.SENSORS"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    const-wide/32 v0, 0x800000

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-string p1, "android.permission_group.WRITE_CALENDAR"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_16
    const-wide/16 v0, 0x80

    cmp-long v0, p1, v0

    if-nez v0, :cond_17

    const-string p1, "android.permission.RECEIVE_SMS"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_17
    const-wide v0, 0x100000000L

    cmp-long p1, p1, v0

    if-nez p1, :cond_18

    const-string p1, "android.permission.NEARBY_DEVICES"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_18
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method private k0(Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->d:Landroidx/loader/app/a;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroidx/loader/app/a;->d(I)Lq0/c;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->d:Landroidx/loader/app/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->d:Landroidx/loader/app/a;

    invoke-virtual {p1, v1, v3, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :cond_0
    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Lcom/miui/permcenter/permissions/c;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Lcom/miui/permcenter/permissions/c;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->l0(Lq0/c;Lcom/miui/permcenter/permissions/c;)V

    return-void
.end method

.method public l0(Lq0/c;Lcom/miui/permcenter/permissions/c;)V
    .locals 9
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Lcom/miui/permcenter/permissions/c;",
            ">;",
            "Lcom/miui/permcenter/permissions/c;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p2, :cond_a

    iget-object v0, p2, Lcom/miui/permcenter/permissions/c;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v2, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->d0(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    iget-object p2, p2, Lcom/miui/permcenter/permissions/c;->a:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/permcenter/permissions/d;

    iget-object v5, v4, Lcom/miui/permcenter/permissions/d;->b:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    :cond_3
    iget-object v4, v4, Lcom/miui/permcenter/permissions/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    new-instance p2, Lmiuix/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p2, v4, v5}, Lmiuix/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lmiuix/preference/PreferenceCategory;->f(Z)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/permission/PermissionInfo;

    sget-object v6, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, v2}, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->g0(JLjava/util/HashMap;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    if-nez v4, :cond_7

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->h0(Landroid/content/Context;Landroid/content/res/Resources;Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {v1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_7
    const/4 v4, 0x1

    new-instance v6, Lcom/miui/permcenter/permissions/NoClickTextPreference;

    invoke-direct {v6, p1}, Lcom/miui/permcenter/permissions/NoClickTextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/miui/permission/PermissionInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->j0(J)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->i0(Lcom/miui/permission/PermissionInfo;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_8
    if-nez v4, :cond_9

    invoke-virtual {p0, p1, v1}, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->f0(Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v1, p1}, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->e0(Landroidx/preference/PreferenceScreen;Landroid/content/Context;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_pkgname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->f:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7f150056

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->k0(Landroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "SystemPermissionsEditorFragment"

    const-string v1, "createPackageContext error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Lcom/miui/permcenter/permissions/c;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment$a;

    iget-object p2, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->c:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment$a;-><init>(Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->e:Lw4/d;

    return-object p1
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->e:Lw4/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lq0/c;->b()Z

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->d:Landroidx/loader/app/a;

    if-eqz v0, :cond_1

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroidx/loader/app/a;->a(I)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lmiuix/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/permcenter/compact/MIUIXCompact;->setTitle(Lmiuix/preference/PreferenceFragment;Ljava/lang/CharSequence;)V

    return-void
.end method
