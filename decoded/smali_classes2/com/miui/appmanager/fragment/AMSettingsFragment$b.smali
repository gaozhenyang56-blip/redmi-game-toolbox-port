.class Lcom/miui/appmanager/fragment/AMSettingsFragment$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/AMSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/AMSettingsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/AMSettingsFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;->a:Landroid/content/Context;

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;->a:Landroid/content/Context;

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/miui/appmanager/AppManageUtils;->n(Landroid/content/pm/PackageManager;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/appmanager/fragment/AMSettingsFragment;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    move-result-object v3

    const-string v4, "package"

    const-string v5, "android.content.pm.IPackageManager$Stub"

    invoke-static {v1, v4, v5}, Lcom/miui/appmanager/fragment/AMSettingsFragment;->d0(Lcom/miui/appmanager/fragment/AMSettingsFragment;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;->a:Landroid/content/Context;

    const-string v5, "security"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/security/SecurityManager;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget-object v7, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_9

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_2

    return-object v0

    :cond_2
    iget-object v7, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;->c:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v11, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-static {v4, v10, v11}, Lcom/miui/appmanager/AppManageUtils;->f0(Lmiui/security/SecurityManager;Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v11, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10, v11, v8}, Lcom/miui/appmanager/AppManageUtils;->z0(Ljava/lang/String;IZ)V

    :cond_4
    iget-object v10, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/appmanager/fragment/AMSettingsFragment;

    if-nez v10, :cond_5

    return-object v0

    :cond_5
    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v10, v9}, Lcom/miui/appmanager/AppManageUtils;->q(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v9, v5, v8}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_6
    iget v9, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_7

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v9, 0x2710

    if-le v8, v9, :cond_8

    :cond_7
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v8, v9}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->isAppRestrictBackground(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v7, v5}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->setAppRestrictBackground(IZ)V

    :cond_8
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/appmanager/fragment/AMSettingsFragment;

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_d

    if-nez v2, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/appmanager/AppManageUtils;->r0(Ljava/lang/Object;I)Landroid/content/pm/ApplicationInfo;

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v2, "com.google.android.dialer"

    const-string v3, "com.android.contacts"

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_2

    :cond_b
    move-object v2, v3

    :goto_2
    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lx4/x;->e(Landroid/content/Context;Ljava/lang/String;)V

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v2, "com.google.android.apps.messaging"

    const-string v3, "com.android.mms"

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_3

    :cond_c
    move-object v2, v3

    :goto_3
    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/miui/appmanager/AppManageUtils;->w0(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-le v1, v2, :cond_d

    :try_start_0
    const-string v1, "setDefaultBrowserPackageNameAsUser"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {p1, v1, v3, v2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    const-string v1, "AMSettingsFragment"

    const-string v2, "set default browser failed"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_4
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
