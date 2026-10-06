.class public Lp7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lp7/a;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lp7/a;
    .locals 2

    const-class v0, Lp7/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp7/a;->b:Lp7/a;

    if-nez v1, :cond_0

    new-instance v1, Lp7/a;

    invoke-direct {v1}, Lp7/a;-><init>()V

    sput-object v1, Lp7/a;->b:Lp7/a;

    :cond_0
    sget-object v1, Lp7/a;->b:Lp7/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lp7/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lp7/a;->a:Ljava/lang/String;

    invoke-static {}, Lp7/h;->C()Lp7/h;

    move-result-object p1

    iget-object v0, p0, Lp7/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lp7/h;->x(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object v1

    invoke-virtual {v1}, Lp7/d;->d()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lp7/a;->h(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lp7/h;->Z(Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterGameTurboMode: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\t isH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShoulderKeyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lp7/a;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object v0

    invoke-virtual {v0}, Lp7/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lp7/h;->C()Lp7/h;

    move-result-object p1

    invoke-virtual {p1}, Lp7/h;->U()V

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object p1

    invoke-virtual {p1}, Lp7/d;->a()Lp7/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lp7/d$a;->c()Lp7/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lp7/d$a;->a()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lp7/h;->C()Lp7/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp7/h;->T(Ljava/lang/String;)V

    invoke-static {}, Lp7/h;->C()Lp7/h;

    move-result-object p1

    invoke-virtual {p1}, Lp7/h;->X()V

    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "status"

    const-string v1, "2"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shoulder_key_settings"

    invoke-static {v0, p1}, Lp7/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lp7/a;->f()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    invoke-static {}, Lp7/c;->a()Lp7/c;

    move-result-object v0

    invoke-virtual {v0}, Lp7/c;->c()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1

    invoke-virtual {p0}, Lp7/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lp7/a;->a:Ljava/lang/String;

    invoke-static {}, Lp7/h;->C()Lp7/h;

    move-result-object v0

    invoke-virtual {v0}, Lp7/h;->z()V

    return-void
.end method

.method public h(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string v1, "shoulder_quick_star_gameturbo"

    invoke-static {p1, v1, p2, v0}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    return-void
.end method
