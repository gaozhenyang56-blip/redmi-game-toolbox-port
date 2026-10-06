.class public Lf7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lf7/a;


# instance fields
.field private a:Lo4/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lo4/a;->c(Landroid/content/Context;)Lo4/a;

    move-result-object p1

    iput-object p1, p0, Lf7/a;->a:Lo4/a;

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lf7/a;
    .locals 2

    const-class v0, Lf7/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf7/a;->b:Lf7/a;

    if-nez v1, :cond_0

    new-instance v1, Lf7/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lf7/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lf7/a;->b:Lf7/a;

    :cond_0
    sget-object p0, Lf7/a;->b:Lf7/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Lo4/a$a;)V
    .locals 3

    iget-object v0, p0, Lf7/a;->a:Lo4/a;

    const-string v1, "com.miui.gamebooster.mutiwindow.FreeformWindowService"

    const-string v2, "com.miui.securitycenter"

    invoke-virtual {v0, v1, v2, p1}, Lo4/a;->d(Ljava/lang/String;Ljava/lang/String;Lo4/a$a;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindFreeformWindowService: isSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FWBinderManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lf7/a;->a:Lo4/a;

    const-string v1, "com.miui.gamebooster.mutiwindow.FreeformWindowService"

    invoke-virtual {v0, v1}, Lo4/a;->h(Ljava/lang/String;)V

    return-void
.end method
