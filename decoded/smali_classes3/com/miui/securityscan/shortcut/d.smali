.class public Lcom/miui/securityscan/shortcut/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/shortcut/d$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/securityscan/shortcut/d$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lx4/y;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".launcher.settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/shortcut/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/favorites"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/shortcut/d;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/securityscan/shortcut/d;->c:Ljava/util/Set;

    sget-object v1, Lcom/miui/securityscan/shortcut/d$b;->b:Lcom/miui/securityscan/shortcut/d$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/securityscan/shortcut/d$b;->c:Lcom/miui/securityscan/shortcut/d$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/securityscan/shortcut/d$b;->j:Lcom/miui/securityscan/shortcut/d$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/miui/securityscan/shortcut/d;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, " intent = ? "

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    aput-object p0, v6, v0

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    invoke-static {p0}, Lbl/e;->a(Ljava/io/Closeable;)V

    return v1

    :cond_1
    :goto_0
    invoke-static {p0}, Lbl/e;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "ShortcutHelper"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v0

    :goto_2
    invoke-static {p0}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static b(Lcom/miui/securityscan/shortcut/d$b;)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/miui/securityscan/shortcut/d$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const-string v1, "com.miui.networkassistant.ui.NetworkAssistantActivity"

    const-string v2, "miui.intent.action.NETWORKASSISTANT_ENTRANCE"

    const-string v3, "com.miui.securitycenter"

    const-string v4, "android.intent.category.DEFAULT"

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-static {}, Lcom/miui/securityscan/shortcut/d;->k()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.blackshark.action.SHARKSPACE"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "gamebooster_entrance"

    const-string v1, "securityCenter"

    goto :goto_0

    :cond_0
    const-string p0, "miui.gamebooster.action.GAMEBOX"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "enter_homepage_way"

    const-string v1, "home_shortcut"

    :goto_0
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_4

    :pswitch_1
    const-string p0, "miui.intent.action.AUTO_TASK"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "openFrom"

    const-string v1, "open_from_short_cut"

    goto :goto_1

    :pswitch_2
    const-string p0, "miui.intent.action.HB_MAIN_ACTIVITY"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p0, Landroid/content/ComponentName;

    const-string v1, "com.miui.luckymoney.ui.activity.LuckySettingActivity"

    invoke-direct {p0, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    const-string p0, "miui.intent.action.NETWORK_DIAGNOSTICS"

    goto :goto_3

    :pswitch_4
    const-string p0, "miui.intent.action.NETWORKASSISTANT_NETWORK_SPEED_DETAIL"

    goto :goto_3

    :pswitch_5
    const-string p0, "miui.intent.action.ANTI_VIRUS"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p0, Landroid/content/ComponentName;

    const-string v1, "com.miui.antivirus.activity.MainActivity"

    invoke-direct {p0, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    const-string p0, "miui.intent.action.POWER_MANAGER"

    goto :goto_3

    :pswitch_7
    const-string p0, "miui.intent.action.SET_FIREWALL"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":miui:starting_window_label"

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    :pswitch_8
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_9
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p0, Landroid/content/ComponentName;

    const-string v2, "com.miui.networkassistant"

    invoke-direct {p0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_4

    :pswitch_a
    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lx4/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.optimizecenter.MainActivity"

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_4

    :pswitch_b
    const-string p0, "com.android.securitycenter.CREATE_DEEP_CLEAN_SHORTCUT"

    goto :goto_3

    :pswitch_c
    const-string p0, "miui.intent.action.CREATE_QUICK_CLEANUP_SHORTCUT"

    :goto_3
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V
    .locals 1

    sget-boolean v0, Lcom/miui/common/i;->a:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/securityscan/shortcut/d;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/d;->e(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/common/i;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "ShortcutHelper"

    const-string p1, "sm not installed, create shortcut failed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/securityscan/shortcut/d;->m(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;I)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/d;->e(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    :goto_0
    return-void
.end method

.method private static d(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/d;->g(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static e(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/b;->a(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/d;->d(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    :goto_0
    return-void
.end method

.method public static f(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V
    .locals 3

    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->m:Lcom/miui/securityscan/shortcut/d$b;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->k:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/d;->v(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    :cond_0
    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/b;->d(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unistall pinnedList shortcut : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/securityscan/shortcut/d;->j(Lcom/miui/securityscan/shortcut/d$b;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/shortcut/d$b;->o:Lcom/miui/securityscan/shortcut/d$b;

    if-ne p1, v2, :cond_2

    const-string v1, "shortcut_com_miui_gamebooster"

    :cond_2
    const-string v2, "shortcut_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lx4/y;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/d;->u(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    return-void
.end method

.method private static g(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/miui/securityscan/shortcut/d;->n(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;Landroid/content/Intent;)V

    return-object v0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ShortcutHelper"

    const-string v0, "getPackageVersionName"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static i(Lcom/miui/securityscan/shortcut/d$b;)I
    .locals 1

    sget-object v0, Lcom/miui/securityscan/shortcut/d$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    goto :goto_0

    :pswitch_0
    sget p0, Lbf/a;->a:I

    goto :goto_0

    :pswitch_1
    sget p0, Lbf/a;->q:I

    goto :goto_0

    :pswitch_2
    sget p0, Lbf/a;->b:I

    goto :goto_0

    :pswitch_3
    sget p0, Lbf/a;->e:I

    goto :goto_0

    :pswitch_4
    sget p0, Lbf/a;->f:I

    goto :goto_0

    :pswitch_5
    sget p0, Lbf/a;->k:I

    goto :goto_0

    :pswitch_6
    sget p0, Lbf/a;->g:I

    goto :goto_0

    :pswitch_7
    sget p0, Lbf/a;->c:I

    goto :goto_0

    :pswitch_8
    sget p0, Lbf/a;->d:I

    goto :goto_0

    :pswitch_9
    sget-boolean p0, Lsl/a;->a:Z

    if-eqz p0, :cond_0

    sget p0, Lbf/a;->t:I

    goto :goto_0

    :cond_0
    sget p0, Lbf/a;->j:I

    goto :goto_0

    :pswitch_a
    sget p0, Lbf/a;->r:I

    invoke-static {}, Lcom/miui/securityscan/shortcut/d;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    sget p0, Lbf/a;->s:I

    goto :goto_0

    :pswitch_b
    sget p0, Lbf/a;->h:I

    invoke-static {}, Lcom/miui/securityscan/shortcut/d;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    sget p0, Lbf/a;->i:I

    :cond_1
    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(Lcom/miui/securityscan/shortcut/d$b;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/shortcut/d$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":string/game_booster"

    goto/16 :goto_0

    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":string/auto_task_main_title"

    goto/16 :goto_0

    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":string/hongbao_name"

    goto :goto_0

    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":string/network_diagnostics"

    goto :goto_0

    :pswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":string/btn_text_network_speed_detail"

    goto :goto_0

    :pswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":string/activity_title_antivirus"

    goto :goto_0

    :pswitch_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":string/activity_title_power_manager"

    goto :goto_0

    :pswitch_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":string/activity_title_antispam"

    goto :goto_0

    :pswitch_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":string/activity_title_networkassistants"

    goto :goto_0

    :pswitch_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":string/activity_title_garbage_cleanup"

    goto :goto_0

    :pswitch_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":string/btn_text_power_cleanup"

    goto :goto_0

    :pswitch_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":string/btn_text_quick_cleanup"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static k()Z
    .locals 4

    const-string v0, "ShortcutHelper"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "is_blackshark"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    const-string v3, "getBlackSharkFeature Failed"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public static l()Z
    .locals 2

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    const-string v1, "com.miui.home"

    invoke-static {v0, v1}, Lcom/miui/securityscan/shortcut/d;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const v1, 0x27ac400

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static m(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;I)V
    .locals 2

    invoke-static {}, Lcom/miui/common/i;->c()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "op"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget p1, p1, Lcom/miui/securityscan/shortcut/d$b;->a:I

    const-string p2, "shortcut_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static n(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "duplicate"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1}, Lcom/miui/securityscan/shortcut/d;->j(Lcom/miui/securityscan/shortcut/d$b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/miui/securityscan/shortcut/d;->i(Lcom/miui/securityscan/shortcut/d$b;)I

    move-result v0

    invoke-static {p0, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object p0

    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/miui/securityscan/shortcut/d;->b(Lcom/miui/securityscan/shortcut/d$b;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method private static o(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;Z)Z
    .locals 1

    const/16 v0, 0xe

    invoke-static {p0, v0, p1, p2}, Lcom/miui/securityscan/shortcut/d;->t(Landroid/content/Context;ILcom/miui/securityscan/shortcut/d$b;Z)Z

    move-result p0

    return p0
.end method

.method private static p(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;Z)Z
    .locals 1

    const/16 v0, 0xc

    invoke-static {p0, v0, p1, p2}, Lcom/miui/securityscan/shortcut/d;->t(Landroid/content/Context;ILcom/miui/securityscan/shortcut/d$b;Z)Z

    move-result p0

    return p0
.end method

.method public static q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z
    .locals 1

    sget-boolean v0, Lcom/miui/common/i;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/shortcut/d;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/d;->s(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/securityscan/shortcut/d;->r(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;Z)Z

    move-result p0

    return p0
.end method

.method public static r(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;Z)Z
    .locals 10

    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->c:Lcom/miui/securityscan/shortcut/d$b;

    if-ne p1, v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/miui/securityscan/shortcut/d;->p(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;Z)Z

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->j:Lcom/miui/securityscan/shortcut/d$b;

    if-ne p1, v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/miui/securityscan/shortcut/d;->o(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;Z)Z

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->m:Lcom/miui/securityscan/shortcut/d$b;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->k:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p0, v0, p2}, Lcom/miui/securityscan/shortcut/d;->r(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {p1}, Lcom/miui/securityscan/shortcut/d;->b(Lcom/miui/securityscan/shortcut/d$b;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/miui/securityscan/shortcut/d;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, " intent = ? "

    new-array v8, v1, [Ljava/lang/String;

    aput-object v0, v8, v2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    return v1

    :cond_3
    :goto_0
    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "ShortcutHelper"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_4

    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/b;->c(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result p0

    goto :goto_2

    :cond_4
    move p0, v2

    :goto_2
    if-eqz p2, :cond_5

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    return v1

    :goto_4
    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static s(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z
    .locals 9

    const-string v0, "ShortcutHelper"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/common/i;->b()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "query shortcut failed , sm not installed."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p0, "content://com.miui.securitymanager/"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iget v4, p1, Lcom/miui/securityscan/shortcut/d$b;->a:I

    int-to-long v4, v4

    invoke-static {p0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "has shortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/miui/securityscan/shortcut/d$b;->a:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    return v1

    :goto_1
    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static t(Landroid/content/Context;ILcom/miui/securityscan/shortcut/d$b;Z)Z
    .locals 8

    sget-object v0, Lcom/miui/securityscan/shortcut/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v7, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "itemType=5 AND appWidgetId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return v0

    :cond_0
    if-eqz v7, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt p1, v1, :cond_2

    invoke-static {p0, p2}, Lcom/miui/securityscan/shortcut/b;->c(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result p0

    goto :goto_1

    :cond_2
    move p0, v2

    :goto_1
    if-eqz p3, :cond_3

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    return v0

    :goto_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method

.method public static u(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/securityscan/shortcut/d;->r(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove default shortcut in database : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-static {}, Lx4/y;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/miui/securityscan/shortcut/d;->n(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static v(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V
    .locals 2

    invoke-static {}, Lcom/miui/common/i;->a()Z

    move-result v0

    const-string v1, "ShortcutHelper"

    if-nez v0, :cond_0

    const-string p0, "removeShortcut: only sc can invoke this method!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lcom/miui/common/i;->a:Z

    if-nez v0, :cond_1

    const-string v0, "remove shortcut direct."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/d;->f(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    return-void

    :cond_1
    sget-object v0, Lcom/miui/securityscan/shortcut/d;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/d;->f(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/miui/common/i;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "remove short cut by sm"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/securityscan/shortcut/d;->m(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;I)V

    :cond_3
    return-void
.end method

.method public static w(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.cleanmaster"

    const-string v3, "com.miui.optimizecenter.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/miui/securityscan/shortcut/d;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    const-string v2, "ShortcutHelper"

    if-nez v1, :cond_0

    const-string p0, "UpdateCleanerShortcut: skip"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/securityscan/shortcut/d$b;->d:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {v3}, Lcom/miui/securityscan/shortcut/d;->b(Lcom/miui/securityscan/shortcut/d$b;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.miui.home.shortcut.extra.INTENT_NEW"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UpdateCleanerShortcut: execute, intent="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static x(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;Landroid/graphics/Bitmap;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/securityscan/shortcut/d;->j(Lcom/miui/securityscan/shortcut/d$b;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/miui/securityscan/shortcut/d;->b(Lcom/miui/securityscan/shortcut/d$b;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
