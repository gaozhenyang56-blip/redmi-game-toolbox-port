.class public final Lsc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsc/a$b;
    }
.end annotation


# static fields
.field public static final f:Lsc/a$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Z

.field private c:Landroid/content/BroadcastReceiver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsc/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsc/a$b;-><init>(Lbk/g;)V

    sput-object v0, Lsc/a;->f:Lsc/a$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsc/a;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsc/a;->e:Ljava/lang/Object;

    invoke-static {p1}, Lse/a;->e(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lsc/a;->b:Z

    const-string v0, "privacy_apps_shield_message_enable"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lxc/q;->c()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lsc/a$a;

    invoke-direct {v2, v0, p0, v1}, Lsc/a$a;-><init>(Landroid/net/Uri;Lsc/a;Landroid/os/Handler;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lsc/a;->g()V

    return-void
.end method

.method public static final synthetic a(Lsc/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lsc/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic b(Lsc/a;)V
    .locals 0

    invoke-direct {p0}, Lsc/a;->g()V

    return-void
.end method

.method public static final synthetic c(Lsc/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lsc/a;->b:Z

    return-void
.end method

.method public static final synthetic d(Lsc/a;)V
    .locals 0

    invoke-direct {p0}, Lsc/a;->h()V

    return-void
.end method

.method private final g()V
    .locals 7

    iget-boolean v0, p0, Lsc/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsc/a;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.miui.gamebooster.PPRIVACYAPP"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lsc/a$c;

    invoke-direct {v2, p0}, Lsc/a$c;-><init>(Lsc/a;)V

    iput-object v2, p0, Lsc/a;->c:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lsc/a;->a:Landroid/content/Context;

    invoke-static {}, Lxc/q;->c()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x4

    const-string v4, "com.miui.dock.permission.DOCK_EVENT"

    invoke-static/range {v1 .. v6}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsc/a;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lsc/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lsc/a;->c:Landroid/content/BroadcastReceiver;

    :cond_1
    :goto_0
    invoke-direct {p0}, Lsc/a;->h()V

    return-void
.end method

.method private final h()V
    .locals 5

    iget-object v0, p0, Lsc/a;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lsc/a;->b:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lsc/a;->d:Landroid/util/SparseArray;

    iget-object v1, p0, Lsc/a;->a:Landroid/content/Context;

    const-string v2, "security"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type miui.security.SecurityManager"

    invoke-static {v1, v2}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lmiui/security/SecurityManager;

    invoke-static {}, Lx4/z1;->e()I

    move-result v2

    iget-object v3, p0, Lsc/a;->d:Landroid/util/SparseArray;

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lmiui/security/SecurityManager;->getAllPrivacyApps(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Lx4/z1;->r()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsc/a;->d:Landroid/util/SparseArray;

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    const/16 v3, 0x3e7

    invoke-virtual {v1, v3}, Lmiui/security/SecurityManager;->getAllPrivacyApps(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lsc/a;->d:Landroid/util/SparseArray;

    :cond_1
    :goto_0
    sget-object v1, Loj/t;->a:Loj/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final e(Ljava/lang/String;I)Z
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-class v0, Ljava/lang/String;

    const-string v1, "packageName"

    invoke-static {p1, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/miui/appmanager/AppManageUtils;->c(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsc/a;->a:Landroid/content/Context;

    const-string v4, "permission"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v2

    aput-object v0, v5, v3

    const-class v6, Landroid/os/UserHandle;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v6, 0x3

    aput-object v0, v5, v6

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "android.permission.POST_NOTIFICATIONS"

    aput-object p1, v0, v3

    invoke-static {p2}, Lx4/z1;->l(I)Landroid/os/UserHandle;

    move-result-object p1

    aput-object p1, v0, v7

    const-string p1, "not kill"

    aput-object p1, v0, v6

    const-string p1, "revokeRuntimePermission"

    invoke-static {v1, p1, v5, v0}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v2}, Lcom/miui/appmanager/AppManageUtils;->z0(Ljava/lang/String;IZ)V

    :goto_0
    return v3

    :cond_1
    return v2
.end method

.method public final f(Ljava/lang/String;I)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lsc/a;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lsc/a;->b:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsc/a;->d:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
