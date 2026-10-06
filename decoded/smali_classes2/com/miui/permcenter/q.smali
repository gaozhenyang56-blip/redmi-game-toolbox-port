.class public Lcom/miui/permcenter/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/q$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/permcenter/q;->a:Ljava/util/List;

    const-string v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.ss.android.lark.kami"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/permcenter/q;->m(Landroid/content/Context;)V

    return-void
.end method

.method public static b()V
    .locals 0

    invoke-static {}, Lxc/a0;->a()V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/miui/permcenter/q;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, ":"

    const-string v1, "enabled_accessibility_services"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {v2, p1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "SecurityCompact"

    const-string p2, "failed to close accessibility"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public static e(Ljava/lang/String;IZZ)I
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3}, Lcom/miui/permcenter/isolate/a;->c(Ljava/lang/String;IZZ)I

    move-result p0

    return p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/miui/permcenter/q;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "enabled_accessibility_services"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    const-string p1, "accessibility_enabled"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "SecurityCompact"

    const-string p2, "failed to enable accessibility"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static h(Landroid/content/Context;Lcom/miui/permission/PermissionInfo;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_4

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ldb/c;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const p1, 0x7f120027

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v0

    const-wide v2, 0x4000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const p1, 0x7f120026

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const p1, 0x7f120025

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/miui/permission/PermissionInfo;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    const-string p0, " "

    return-object p0
.end method

.method public static i(Lmiuix/appcompat/app/ActionBar;I)V
    .locals 8

    const v0, 0x7f12141e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object v0

    const v1, 0x7f12141d

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar$d;->setText(I)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v4

    const-class v5, Lcom/miui/permcenter/privacycenter/PrivacyFragment;

    const-string v3, "PrivacyFragment"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object v0

    const v1, 0x7f1215ca

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar$d;->setText(I)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v4

    const-class v5, Lcom/miui/permcenter/privacycenter/SecurityFragment;

    const-string v3, "SecurityFragment"

    invoke-virtual/range {v2 .. v7}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setSelectedNavigationItem(I)V

    return-void
.end method

.method private static j(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/miui/permcenter/o$a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/permcenter/service/InvisibleModeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    invoke-static {p0}, Lcom/miui/permcenter/o$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/permcenter/h;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enabled_accessibility_services"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic m(Landroid/content/Context;)V
    .locals 4

    const-string v0, "SimLock"

    const-string v1, "start monitor sim lock state!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/simlock/c;->a:Landroid/net/Uri;

    new-instance v2, Lcom/miui/permcenter/q$a;

    invoke-static {}, Lxc/q;->c()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/miui/permcenter/q$a;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sim_lock_enable"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/miui/simlock/c;->b:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    sget-object v0, Lcom/miui/simlock/b;->b:Lcom/miui/simlock/b$a;

    invoke-virtual {v0, p0}, Lcom/miui/simlock/b$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static n(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Ljc/l;->i(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static o(Lmiuix/appcompat/app/ActionBar;IZ)Lmiuix/preference/PreferenceFragment;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x7f1215ca

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    new-instance p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/SecurityFragment;-><init>()V

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    const p1, 0x7f120091

    goto :goto_0

    :cond_1
    const p1, 0x7f1214a6

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    new-instance p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment;

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;-><init>()V

    return-object p0
.end method

.method public static p(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/miui/permcenter/monitor/b;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/permcenter/monitor/b;->g(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/miui/permcenter/monitor/a;->h()Lcom/miui/permcenter/monitor/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/permcenter/monitor/a;->g(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/miui/permcenter/isolate/a;->f()V

    invoke-static {}, Lxc/x;->b()V

    return-void
.end method

.method public static q(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/permcenter/isolate/a;->i(Landroid/content/Intent;)V

    return-void
.end method

.method private static r(Landroid/content/Context;)V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "untrust_app"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "appops"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    aget-object v6, v4, v5

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recoveryUnknownSource: for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UnknownSourceMonitor"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v6, v4, v7}, Lmiui/util/NotificationFilterHelper;->enableNotifications(Landroid/content/Context;Ljava/lang/String;IZ)V

    invoke-static {p0, v6, v5, v5}, Lmiui/provider/ExtraNetwork;->setMobileRestrict(Landroid/content/Context;Ljava/lang/String;ZI)Z

    invoke-static {p0, v6, v5, v7}, Lmiui/provider/ExtraNetwork;->setMobileRestrict(Landroid/content/Context;Ljava/lang/String;ZI)Z

    invoke-static {p0, v6, v5}, Lmiui/provider/ExtraNetwork;->setWifiRestrict(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->isSupportOAIDApps()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lx4/z1;->e()I

    move-result v8

    invoke-static {v8, v4}, Lx4/z1;->j(II)I

    move-result v8

    const/16 v9, 0x2735

    invoke-static {v2, v6, v8, v9, v5}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    invoke-static {}, Lx4/z1;->e()I

    move-result v8

    if-nez v8, :cond_1

    const/16 v8, 0x3e7

    invoke-static {p0, v6, v8}, Lx4/f1;->E(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v8, v4}, Lx4/z1;->j(II)I

    move-result v8

    invoke-static {v2, v6, v8, v9, v5}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    :cond_1
    invoke-static {v5, v4}, Lx4/z1;->j(II)I

    move-result v4

    const/16 v5, 0x2736

    invoke-static {v2, v6, v4, v5, v7}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {v1, v0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method public static s(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/permcenter/q;->j(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/permcenter/q;->x(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/permcenter/q;->r(Landroid/content/Context;)V

    invoke-static {p0}, Lec/c;->q(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/permcenter/monitor/b;->g(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/miui/permcenter/isolate/a;->f()V

    return-void
.end method

.method public static t(I)V
    .locals 0

    invoke-static {p0}, Lac/b;->a(I)V

    return-void
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lac/b;->b(Landroid/content/Context;Ljava/lang/String;III)V

    return-void
.end method

.method public static v(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1202d9

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1202da

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p4, 0x7f1202d7

    invoke-virtual {p0, p4, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f1202d8

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static w(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121370

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f121371

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x104000a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private static x(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/miui/simlock/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/permcenter/p;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/p;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static y(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lmiui/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "malachite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "InstallPackageEnhance"

    const-string v3, "enhance_on"

    invoke-static {v0, v2, v3, v1}, Lcom/miui/permcenter/compact/MiuiSettingsCompat;->getCloudDataBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    invoke-static {}, Lcom/miui/permcenter/f;->d()Lcom/miui/permcenter/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/permcenter/f;->i(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static z(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/isolate/a;->l(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0
.end method
