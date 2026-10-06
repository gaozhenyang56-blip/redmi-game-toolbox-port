.class public Lcom/miui/common/base/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/base/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/miui/common/base/c;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/CharSequence;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/miui/common/base/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/common/base/e;->b:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/miui/common/base/e;->a:Lcom/miui/common/base/c;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/pm/IPackageInstallObserver2;)Z
    .locals 11

    const-string v0, "ManagerInterceptHelper"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "start install manager"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v2, Lmiui/content/pm/PreloadedAppPolicy;

    const-class v3, Ljava/lang/Boolean;

    const-string v4, "installPreloadedDataApp"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-class v7, Landroid/content/pm/IPackageInstallObserver2;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v7, v6, v10

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    const-string p1, "com.miui.securitymanager"

    aput-object p1, v5, v8

    aput-object p2, v5, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v10

    invoke-static {v2, v3, v4, v6, v5}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "installCleaner exception: "

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/e;->a:Lcom/miui/common/base/c;

    invoke-interface {v0}, Lcom/miui/common/base/c;->isUninstalledDisable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/base/e;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lgh/b;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/base/e;->b:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/miui/common/base/e;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private h(Lcom/miui/common/base/BaseActivity;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/base/e;->d:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_3

    instance-of v0, p1, Lcom/miui/securityscan/MainEntryActivity;

    if-nez v0, :cond_0

    instance-of v1, p1, Lcom/miui/firstaidkit/FirstAidKitActivity;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v1, :cond_3

    :cond_0
    new-instance v1, Landroid/app/ActivityManager$TaskDescription$Builder;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskDescription$Builder;-><init>()V

    const v2, 0x7f12020f

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/miui/firstaidkit/FirstAidKitActivity;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$TaskDescription$Builder;->setLabel(Ljava/lang/String;)Landroid/app/ActivityManager$TaskDescription$Builder;

    const v0, 0x7f08037a

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$TaskDescription$Builder;->setIcon(I)Landroid/app/ActivityManager$TaskDescription$Builder;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$TaskDescription$Builder;->setLabel(Ljava/lang/String;)Landroid/app/ActivityManager$TaskDescription$Builder;

    :goto_1
    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription$Builder;->build()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_3
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/base/e;->c:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private i(Lcom/miui/common/base/BaseActivity;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/common/base/e;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/common/base/e;->d:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_4

    instance-of v0, p1, Lcom/miui/securityscan/MainEntryActivity;

    if-nez v0, :cond_1

    instance-of v1, p1, Lcom/miui/firstaidkit/FirstAidKitActivity;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v1, :cond_4

    :cond_1
    new-instance v1, Landroid/app/ActivityManager$TaskDescription$Builder;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskDescription$Builder;-><init>()V

    if-eqz v0, :cond_2

    const v0, 0x7f12020e

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$TaskDescription$Builder;->setLabel(Ljava/lang/String;)Landroid/app/ActivityManager$TaskDescription$Builder;

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/miui/firstaidkit/FirstAidKitActivity;

    if-eqz v0, :cond_3

    const v0, 0x7f12088a

    goto :goto_0

    :cond_3
    const v0, 0x7f120085

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$TaskDescription$Builder;->setLabel(Ljava/lang/String;)Landroid/app/ActivityManager$TaskDescription$Builder;

    const v0, 0x7f080878

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$TaskDescription$Builder;->setIcon(I)Landroid/app/ActivityManager$TaskDescription$Builder;

    :goto_1
    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription$Builder;->build()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_4
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/common/base/e;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/miui/common/base/e;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/miui/common/base/BaseActivity;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean p2, Lsl/a;->b:Z

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/common/base/e;->h(Lcom/miui/common/base/BaseActivity;)V

    new-instance p2, Lcom/miui/common/base/e$a;

    invoke-direct {p2, p1}, Lcom/miui/common/base/e$a;-><init>(Lcom/miui/common/base/BaseActivity;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/common/base/e;->a(Landroid/content/Context;Landroid/content/pm/IPackageInstallObserver2;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lgh/b;->o(Landroid/content/Context;)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lsl/a;->b:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/common/base/e;->i(Lcom/miui/common/base/BaseActivity;)V

    instance-of p1, p1, Lcom/miui/securityscan/ui/settings/SettingsActivity;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    :cond_2
    iget-object p1, p0, Lcom/miui/common/base/e;->a:Lcom/miui/common/base/c;

    invoke-interface {p1, p2}, Lcom/miui/common/base/c;->onActivityCreate(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/e;->a:Lcom/miui/common/base/c;

    invoke-interface {v0}, Lcom/miui/common/base/c;->onActivityDestroy()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/e;->a:Lcom/miui/common/base/c;

    invoke-interface {v0}, Lcom/miui/common/base/c;->onActivityResume()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/e;->a:Lcom/miui/common/base/c;

    invoke-interface {v0}, Lcom/miui/common/base/c;->onActivityStart()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/e;->a:Lcom/miui/common/base/c;

    invoke-interface {v0}, Lcom/miui/common/base/c;->onActivityStop()V

    :cond_0
    return-void
.end method
