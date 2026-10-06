.class public final Lcom/miui/securityscan/scanner/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/scanner/n$b;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVirusNotificationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VirusNotificationManager.kt\ncom/miui/securityscan/scanner/VirusNotificationManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,257:1\n766#2:258\n857#2,2:259\n1855#2,2:261\n1855#2,2:263\n1855#2,2:265\n*S KotlinDebug\n*F\n+ 1 VirusNotificationManager.kt\ncom/miui/securityscan/scanner/VirusNotificationManager\n*L\n197#1:258\n197#1:259,2\n215#1:261,2\n222#1:263,2\n244#1:265,2\n*E\n"
    }
.end annotation


# static fields
.field public static final f:Lcom/miui/securityscan/scanner/n$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:Loj/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Loj/f<",
            "Lcom/miui/securityscan/scanner/n;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile a:Z

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/model/i;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/os/HandlerThread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Lcom/miui/securityscan/scanner/n$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/securityscan/scanner/n$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/securityscan/scanner/n$b;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/securityscan/scanner/n;->f:Lcom/miui/securityscan/scanner/n$b;

    sget-object v0, Loj/j;->a:Loj/j;

    sget-object v1, Lcom/miui/securityscan/scanner/n$a;->a:Lcom/miui/securityscan/scanner/n$a;

    invoke-static {v0, v1}, Loj/g;->b(Loj/j;Lak/a;)Loj/f;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/scanner/n;->g:Loj/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/securityscan/scanner/n$c;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/scanner/n$c;-><init>(Lcom/miui/securityscan/scanner/n;)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/n;->e:Lcom/miui/securityscan/scanner/n$c;

    return-void
.end method

.method public static synthetic a(Lcom/miui/securityscan/scanner/n;Lcom/miui/guardprovider/aidl/IAntiVirusServer;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/securityscan/scanner/n;->k(Lcom/miui/securityscan/scanner/n;Lcom/miui/guardprovider/aidl/IAntiVirusServer;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/securityscan/scanner/n;Landroid/content/Context;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/securityscan/scanner/n;->j(Lcom/miui/securityscan/scanner/n;Landroid/content/Context;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    return-void
.end method

.method public static final synthetic c(Lcom/miui/securityscan/scanner/n;Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/scanner/n;->h(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(Lcom/miui/securityscan/scanner/n;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/scanner/n;->i(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic e()Loj/f;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/scanner/n;->g:Loj/f;

    return-object v0
.end method

.method private final g(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/antivirus/model/i;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/model/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lw2/t;->u()Ljava/util/ArrayList;

    move-result-object p1

    const-string v1, "getScanWhiteList()"

    invoke-static {p1, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/miui/antivirus/model/i;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v5

    invoke-virtual {v4}, Lcom/miui/antivirus/model/i;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Le3/b;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final h(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {p1, v0}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    const-string v0, "notificationManager.activeNotifications"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    const/16 v4, 0x4e2a

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private final i(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object v0

    new-instance v1, Lzf/k;

    invoke-direct {v1, p0, p1}, Lzf/k;-><init>(Lcom/miui/securityscan/scanner/n;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lp9/a;->g(Lp9/a$b;)V

    return-void
.end method

.method private static final j(Lcom/miui/securityscan/scanner/n;Landroid/content/Context;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lzf/l;

    invoke-direct {v0, p0, p2, p1}, Lzf/l;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/guardprovider/aidl/IAntiVirusServer;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final k(Lcom/miui/securityscan/scanner/n;Lcom/miui/guardprovider/aidl/IAntiVirusServer;Landroid/content/Context;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/n;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-direct {p0, v0}, Lcom/miui/securityscan/scanner/n;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v4}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v4

    invoke-interface {p1}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->getVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "antiServer.getVersion()"

    invoke-static {v5, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/miui/securityscan/scanner/o;->C(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    if-eqz v4, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/antivirus/model/i;

    invoke-virtual {v7}, Lcom/miui/antivirus/model/i;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1, v5}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->x0(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v5, "antiServer.checkWhiteListByPath(pathList)"

    goto :goto_2

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/antivirus/model/i;

    invoke-virtual {v7}, Lcom/miui/antivirus/model/i;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p1, v5}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->m6(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v5, "antiServer.checkWhiteList(pkgList)"

    :goto_2
    invoke-static {p1, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move v4, v3

    :goto_3
    const-string v5, "VirusNotificationManager"

    const-string v6, "checkWhiteList failed"

    invoke-static {v5, v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_7

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-eq p1, v1, :cond_a

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/model/i;

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/miui/antivirus/model/i;->h()Ljava/lang/String;

    move-result-object v3

    const-string v5, "it.sourceDir"

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lcom/miui/antivirus/model/b;->a()Ljava/lang/String;

    move-result-object v3

    const-string v5, "it.packageName"

    :goto_6
    invoke-static {v3, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    invoke-direct {p0, p2, p1}, Lcom/miui/securityscan/scanner/n;->u(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_8

    :cond_8
    :goto_7
    const-string p1, "notification"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {p1, p2}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/NotificationManager;

    const/16 p2, 0x4e2a

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    iput-boolean v3, p0, Lcom/miui/securityscan/scanner/n;->a:Z

    iget-object p1, p0, Lcom/miui/securityscan/scanner/n;->c:Landroid/os/HandlerThread;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_9
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/n;->c:Landroid/os/HandlerThread;

    :cond_a
    :goto_8
    return-void
.end method

.method private final l(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/app/PendingIntent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/model/i;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ANTI_VIRUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enter_homepage_way"

    const-string v2, "notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_auto_to_result_page"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "key_risk_list"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "notificationId"

    const/16 v1, 0x4e2a

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x44000000    # 512.0f

    invoke-static {p1, v1, v0, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "getActivity(\n           \u2026.FLAG_IMMUTABLE\n        )"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final m(Landroid/content/Context;Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/model/i;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/model/i;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const p2, 0x7f120f8b

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f10008d

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v1, v7, v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v7, v4

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v1, "when (riskPkgList.size) \u2026             )\n\n        }"

    invoke-static {p2, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f120f8a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "context.getString(R.stri\u2026rus_notification_summary)"

    invoke-static {p1, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/String;

    aput-object p2, v1, v0

    aput-object p1, v1, v4

    return-object v1
.end method

.method private final u(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/model/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/scanner/n;->m(Landroid/content/Context;Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lw4/b$b;

    invoke-direct {v1, p1}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080db9

    invoke-virtual {v1, v2}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v1

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_0

    const v2, 0x7f080f25

    :cond_0
    invoke-virtual {v1, v2}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lw4/b$b;->d(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f120f27

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.miui.securitycenter"

    invoke-virtual {v0, v4, v1}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v0

    const/16 v1, 0x4e2a

    invoke-virtual {v0, v1}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lw4/b$b;->p(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/scanner/n;->l(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p2, v0, :cond_1

    const/4 p2, 0x4

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    :goto_0
    invoke-virtual {p1, p2}, Lw4/b$b;->l(I)Lw4/b$b;

    invoke-virtual {p1}, Lw4/b$b;->a()Lw4/b;

    move-result-object p1

    invoke-virtual {p1}, Lw4/b;->I()V

    return-void
.end method


# virtual methods
.method public final f(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/securityscan/scanner/n;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/n;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {p1, v0}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/NotificationManager;

    const/16 v0, 0x4e2a

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/securityscan/scanner/n;->a:Z

    iget-object p1, p0, Lcom/miui/securityscan/scanner/n;->c:Landroid/os/HandlerThread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/n;->c:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method public final n()Landroid/os/HandlerThread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/securityscan/scanner/n;->c:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/n;->a:Z

    return v0
.end method

.method public final p(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/securitycenter/service/RemoteService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "cmd"

    const-string v2, "hide_virus_notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final q(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/model/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "riskPkgList"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/securitycenter/service/RemoteService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "cmd"

    const-string v2, "show_virus_notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_virus_pkg_list"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final r(Landroid/os/HandlerThread;)V
    .locals 0
    .param p1    # Landroid/os/HandlerThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/securityscan/scanner/n;->c:Landroid/os/HandlerThread;

    return-void
.end method

.method public final s(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/scanner/n;->a:Z

    return-void
.end method

.method public final t(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/model/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/scanner/n;->u(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p2, p0, Lcom/miui/securityscan/scanner/n;->b:Ljava/util/ArrayList;

    iget-boolean p2, p0, Lcom/miui/securityscan/scanner/n;->a:Z

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/securityscan/scanner/n;->a:Z

    iget-object v0, p0, Lcom/miui/securityscan/scanner/n;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "white-list-check"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/n;->c:Landroid/os/HandlerThread;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/n;->e:Lcom/miui/securityscan/scanner/n$c;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/scanner/n$c;->a(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/securityscan/scanner/n;->c:Landroid/os/HandlerThread;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/n;->e:Lcom/miui/securityscan/scanner/n$c;

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/miui/securityscan/scanner/n;->d:Landroid/os/Handler;

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method
