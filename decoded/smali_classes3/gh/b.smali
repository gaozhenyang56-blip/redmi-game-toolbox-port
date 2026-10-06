.class public Lgh/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgh/b$a;,
        Lgh/b$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Z

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Landroid/content/ComponentName;

.field private static final e:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/miui/securityscan/MainEntryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/miui/securityscan/OptimizeAndResultActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/miui/securityscan/ui/settings/SettingsActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/miui/firstaidkit/FirstAidKitActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/miui/antivirus/activity/MainActivity;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lgh/b;->a:Ljava/util/List;

    sget-boolean v0, Lcom/miui/common/i;->a:Z

    sput-boolean v0, Lgh/b;->b:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgh/b;->c:Ljava/util/HashMap;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycenter"

    const-string v3, "com.miui.securityscan.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.android.thememanager"

    const-string v4, "com.android.thememanager.ThemeResourceTabActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.miui.voiceassist"

    const-string v4, "com.xiaomi.voiceassistant.MainActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.securityscan.MainEntryActivity"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lgh/b;->d:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.securitymanager"

    const-string v2, "com.miui.securitymanager.PlaceholderAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lgh/b;->e:Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lsl/a;->a:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lgh/b;->b:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lgh/b;->h()Z

    move-result v0

    const-string v1, "com.miui.securitymanager"

    if-eqz v0, :cond_1

    invoke-static {p1}, Lbf/c;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addShortcut pkg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SCUSupportManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.miui.securitymanager.ShortcutReceiver"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "security.manager.SHORTCUT_MANAGER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "shortcutType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "pkg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    invoke-static {}, Lgh/b;->h()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lgl/a;->H()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    invoke-static {}, Lgl/a;->F()Z

    move-result p1

    if-nez p1, :cond_5

    sget p1, Lgl/a;->B:I

    invoke-static {p1}, Lgl/a;->k(I)I

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lgl/a;->B()I

    move-result p1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_6

    invoke-static {}, Lgl/a;->B()I

    move-result p1

    if-lez p1, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object p1, Lgh/b;->e:Landroid/content/ComponentName;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lgh/b;->b(Landroid/content/pm/PackageManager;Ljava/util/Collection;I)V

    :cond_6
    return-void

    :cond_7
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p0}, Lbf/c;->b(Landroid/content/Context;)V

    goto :goto_1

    :cond_8
    invoke-static {p0, p1}, Lbf/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static b(Landroid/content/pm/PackageManager;Ljava/util/Collection;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/Collection<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "SCUSupportManager"

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processLauncherState: cm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\tcomponentEnabledSetting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, p2, :cond_0

    const/4 v2, 0x1

    invoke-static {p0, v1, p2, v2}, Lgh/b;->p(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static c(Landroid/content/Context;Lgh/b$b;)V
    .locals 2
    .param p1    # Lgh/b$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lgh/b$b<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lef/m;

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lef/m;-><init>(Landroid/content/Context;I)V

    invoke-static {p0}, Landroidx/core/content/ContextCompat;->h(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lgh/a;

    invoke-direct {v1, p1}, Lgh/a;-><init>(Lgh/b$b;)V

    invoke-virtual {v0, p0, v1}, Lef/m;->m(Ljava/util/concurrent/Executor;Lef/m$a;)V

    return-void
.end method

.method public static d(Landroid/app/Activity;)Z
    .locals 1

    sget-boolean v0, Lgh/b;->b:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lgh/b;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static e()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/miui/securityscan/MainActivity;

    sget-boolean v1, Lsl/a;->a:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-boolean v1, Lgh/b;->b:Z

    if-eqz v1, :cond_1

    const-class v0, Lcom/miui/securityscan/MainEntryActivity;

    :cond_1
    return-object v0
.end method

.method public static f()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.SECURITY_CENTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static g()Z
    .locals 1

    sget-boolean v0, Lgh/b;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lgh/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static h()Z
    .locals 1

    invoke-static {}, Lcom/miui/common/i;->b()Z

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.miui.securitymanager"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static j(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lgh/b;->l(Landroid/content/Context;)V

    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lsl/a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lgh/b;->b:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lgh/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lgh/b;->b(Landroid/content/pm/PackageManager;Ljava/util/Collection;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static l(Landroid/content/Context;)V
    .locals 3

    const-string v0, "SCUSupportManager"

    const-string v1, "processSecurityCenterLauncherState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lsl/a;->a:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lgh/b;->b:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v1, Lgh/b;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lgh/b;->b(Landroid/content/pm/PackageManager;Ljava/util/Collection;I)V

    sget-object v1, Lgh/b;->d:Landroid/content/ComponentName;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lgh/b;->b(Landroid/content/pm/PackageManager;Ljava/util/Collection;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static m()V
    .locals 4

    sget-boolean v0, Lgh/b;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lgh/b$a;

    invoke-direct {v0}, Lgh/b$a;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v0, v1, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lgh/b;->b:Z

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lbf/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lgh/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lbf/c;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.securitymanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.miui.securitymanager.ShortcutReceiver"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "security.manager.SHORTCUT_MANAGER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "shortcutType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "pkg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static o(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lef/m;

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lef/m;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lef/m;->E()V

    return-void
.end method

.method private static p(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;II)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static q(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lgh/b;->b:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lsl/a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lef/m;

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lef/m;-><init>(Landroid/content/Context;I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lef/m;->G(Ljava/lang/Runnable;)V

    return-void
.end method
