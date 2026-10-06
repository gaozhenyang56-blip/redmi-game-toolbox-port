.class public Lbf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.whatsapp"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lbf/c;->a:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.miui.cleanmaster"

    const-string v2, "com.tencent.mm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lbf/c;->b:Ljava/util/HashSet;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lbf/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lbf/c;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0, p0}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z

    :cond_2
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 11

    const-string v0, "com.tencent.mm"

    const-string v1, "com.whatsapp"

    const-string v2, "security_scan"

    const-string v3, "anti_virus"

    const-string v4, "clean_master"

    invoke-static {}, Lbf/c;->j()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x19

    if-ge v5, v6, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-class v5, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_8

    sget-boolean v8, Lsl/a;->a:Z

    if-eqz v8, :cond_2

    invoke-static {p0, v6, v7}, Lbf/c;->g(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-static {v6, v4}, Lbf/c;->h(Ljava/util/List;Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "com.miui.cleanmaster"

    if-nez v9, :cond_3

    :try_start_1
    invoke-static {p0, v10}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {p0, v4}, Lbf/c;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {p0, v10}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p0, v10}, Lbf/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_0
    if-eqz v8, :cond_5

    invoke-static {v6, v2}, Lbf/c;->h(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {p0, v2}, Lbf/c;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    :goto_1
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v6, v3}, Lbf/c;->h(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p0, v3}, Lbf/c;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    invoke-static {p0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p0, v6, v1}, Lbf/c;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_3
    invoke-interface {v7, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_7
    invoke-static {p0, v0}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p0, v6, v0}, Lbf/c;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_8
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {v5, v7}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    const-string v0, "ShortcutUtils"

    const-string v1, "add shortcuts error "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_5
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 8

    const-string v0, "clean_master"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v6, Landroid/content/Intent;

    const-string p1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lx4/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget v4, Lbf/b;->d:I

    sget p1, Lbf/a;->m:I

    invoke-static {p0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    const-string v2, "clean_master"

    move-object v1, p0

    move v3, v4

    invoke-static/range {v1 .. v6}, Lbf/c;->d(Landroid/content/Context;Ljava/lang/String;IILandroid/graphics/drawable/Icon;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "whatsapp_clean"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v6, Landroid/content/Intent;

    const-string p1, "miui.intent.action.GARBAGE_DEEPCLEAN_WHATSAPP"

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lx4/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget v4, Lbf/b;->f:I

    sget p1, Lbf/a;->p:I

    invoke-static {p0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    const-string v2, "whatsapp_clean"

    move-object v1, p0

    move v3, v4

    invoke-static/range {v1 .. v6}, Lbf/c;->d(Landroid/content/Context;Ljava/lang/String;IILandroid/graphics/drawable/Icon;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "wechat_lean"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v6, Landroid/content/Intent;

    const-string p1, "miui.intent.action.GARBAGE_DEEPCLEAN_WECHAT"

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "com.miui.cleanmaster"

    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget v4, Lbf/b;->a:I

    sget p1, Lbf/a;->o:I

    invoke-static {p0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    const-string v2, "wechat_lean"

    move-object v1, p0

    move v3, v4

    invoke-static/range {v1 .. v6}, Lbf/c;->d(Landroid/content/Context;Ljava/lang/String;IILandroid/graphics/drawable/Icon;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "security_scan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.miui.securitycenter"

    if-eqz v0, :cond_3

    new-instance v7, Landroid/content/Intent;

    const-string p1, "miui.intent.action.SECURITY_CENTER"

    invoke-direct {v7, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v0, "extra_auto_optimize"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget v5, Lbf/b;->e:I

    sget p1, Lbf/a;->n:I

    invoke-static {p0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    const-string v3, "security_scan"

    move-object v2, p0

    move v4, v5

    invoke-static/range {v2 .. v7}, Lbf/c;->d(Landroid/content/Context;Ljava/lang/String;IILandroid/graphics/drawable/Icon;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "anti_virus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance v7, Landroid/content/Intent;

    const-string p1, "miui.intent.action.ANTI_VIRUS"

    invoke-direct {v7, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lx4/y;->n()Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lbf/b;->c:I

    goto :goto_0

    :cond_4
    sget p1, Lbf/b;->b:I

    :goto_0
    move v5, p1

    sget p1, Lbf/a;->l:I

    invoke-static {p0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    const-string v3, "anti_virus"

    move-object v2, p0

    move v4, v5

    invoke-static/range {v2 .. v7}, Lbf/c;->d(Landroid/content/Context;Ljava/lang/String;IILandroid/graphics/drawable/Icon;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;IILandroid/graphics/drawable/Icon;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo;
    .locals 9

    const-class v0, Ljava/lang/String;

    const-string v1, "ShortcutUtils"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x19

    if-ge v2, v4, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "android.content.pm.ShortcutInfo$Builder"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v4

    aput-object v0, v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    if-eqz v5, :cond_1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v4

    aput-object p1, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutInfo$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "construct shortcutinfo builder error "

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object p0, v3

    :goto_0
    if-nez p0, :cond_2

    return-object v3

    :cond_2
    :try_start_1
    const-string p1, "setShortLabelResId"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, v4

    invoke-static {p0, p1, v5, v6}, Lpl/g;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string p1, "setLongLabelResId"

    new-array p2, v2, [Ljava/lang/Class;

    aput-object v0, p2, v4

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v4

    invoke-static {p0, p1, p2, v0}, Lpl/g;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    const-string p1, "shortcutInfo setLongLabel error"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0, p4}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    invoke-virtual {p0, p5}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0

    :catch_2
    const-string p0, "shortcutInfo setShortLabel error"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lbf/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    sget-boolean v1, Lsl/a;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "com.whatsapp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "whatsapp_clean"

    invoke-static {v0, p1}, Lbf/c;->h(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const-string v1, "com.tencent.mm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "wechat_lean"

    if-eqz v1, :cond_3

    invoke-static {v0, v2}, Lbf/c;->h(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    :cond_3
    const-string v1, "com.miui.cleanmaster"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "clean_master"

    invoke-static {v0, p1}, Lbf/c;->h(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    :cond_4
    invoke-static {v0, v2}, Lbf/c;->h(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method private static f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    sget-boolean v1, Lsl/a;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "com.whatsapp"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "whatsapp_clean"

    invoke-static {p1, p2}, Lbf/c;->h(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p0, p2}, Lbf/c;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_0
    const-string v1, "com.tencent.mm"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "com.miui.cleanmaster"

    const-string v4, "wechat_lean"

    if-eqz v2, :cond_1

    invoke-static {p0, v3}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4}, Lbf/c;->h(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, v4}, Lbf/c;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "clean_master"

    invoke-static {p1, p2}, Lbf/c;->h(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v5, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, p2}, Lbf/c;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1, v4}, Lbf/c;->h(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p0, v4}, Lbf/c;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    :goto_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method private static g(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    sget-boolean v0, Lsl/a;->a:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lx4/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.cleaner"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "com.miui.cleanmaster"

    const-string v3, "clean_master"

    if-eqz v0, :cond_2

    invoke-static {p1, v3}, Lbf/c;->h(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, v2}, Lbf/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const-string v0, "cleaner"

    invoke-static {p1, v0}, Lbf/c;->h(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0, v0}, Lbf/c;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_2
    invoke-static {p1, v3}, Lbf/c;->h(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p0, v2}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0, v3}, Lbf/c;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    :goto_0
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private static h(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x19

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 1

    sget-boolean v0, Lsl/a;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lbf/c;->a:Ljava/util/HashSet;

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lbf/c;->b:Ljava/util/HashSet;

    goto :goto_0
.end method

.method private static j()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/miui/common/a;->a()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/miui/common/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
