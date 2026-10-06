.class public abstract Lcom/miui/gamebooster/service/u;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final h:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Z

.field private final d:Ljava/lang/Object;

.field private e:Landroid/content/ServiceConnection;

.field private volatile f:Z

.field private final g:Lcom/miui/gamebooster/service/z;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/service/u;->h:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/miui/gamebooster/service/u;->i:Landroid/util/ArrayMap;

    const-string v2, "com.miui.securitycore"

    const-string v3, "com.miui.xspace.ui.activity.XSpaceResolveActivity"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "android"

    const-string v3, "com.android.internal.app.MiuiResolverActivity"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.miui.securitycenter"

    const-string v2, "com.miui.permcenter.settings.InstalledPermissionDialog"

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.miui.wakepath.ui.ConfirmStartActivity"

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/u;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/u;->b:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/service/u;->d:Ljava/lang/Object;

    new-instance v0, Lcom/miui/gamebooster/service/u$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/u$a;-><init>(Lcom/miui/gamebooster/service/u;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/u;->e:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/service/u;->g:Lcom/miui/gamebooster/service/z;

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/service/u;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/service/u;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/miui/gamebooster/service/u;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/u;->b:Z

    return p1
.end method

.method static synthetic c(Lcom/miui/gamebooster/service/u;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/u;->a:Z

    return p1
.end method

.method protected static d()Lcom/gzy/redmiport/compat/process/ForegroundInfo;
    .locals 1
    invoke-static {}, Lcom/gzy/redmiport/ForegroundMonitor;->current()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;
    return-object v0
.end method


# virtual methods
.method protected abstract e()Lcom/miui/gamebooster/mutiwindow/b$b;
.end method

.method protected f()Z
    .locals 5

    invoke-static {}, Lx5/p;->H0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lx5/p;->l0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x1

    const-string v4, ""

    if-le v0, v2, :cond_1

    invoke-static {}, La8/a0;->M()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, La8/a0;->s(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v4

    :goto_1
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v0}, Lw5/f;->c(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    :goto_2
    return v1
.end method

.method protected g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/u;->a:Z

    return v0
.end method

.method protected h(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/miui/gamebooster/service/u;->i:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, La8/a0;->M()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, La8/a0;->s(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method protected i()Z
    .locals 1

    invoke-static {}, La8/z;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/u;->a:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected j(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/miui/gamebooster/service/u;->h:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, La8/a0;->M()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, La8/a0;->s(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract k()V
.end method

.method protected l()V
    .locals 2
    invoke-virtual {p0}, Lcom/miui/gamebooster/service/u;->e()Lcom/miui/gamebooster/mutiwindow/b$b;
    move-result-object v0
    if-eqz v0, :done
    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;
    move-result-object v1
    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/mutiwindow/b;->b(Lcom/miui/gamebooster/mutiwindow/b$b;)V
    invoke-virtual {v1}, Lcom/miui/gamebooster/mutiwindow/b;->f()V
    :done
    return-void
.end method

.method protected abstract m()Z
.end method

.method protected n()V
    .locals 2
    invoke-virtual {p0}, Lcom/miui/gamebooster/service/u;->e()Lcom/miui/gamebooster/mutiwindow/b$b;
    move-result-object v0
    if-eqz v0, :done
    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;
    move-result-object v1
    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/mutiwindow/b;->g(Lcom/miui/gamebooster/mutiwindow/b$b;)V
    :done
    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/u;->l()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/u;->n()V

    return-void
.end method
