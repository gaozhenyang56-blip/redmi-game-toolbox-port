.class public La8/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:La8/i0;


# instance fields
.field private a:Lo4/a;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/i0;->b:Landroid/content/Context;

    invoke-static {p1}, Lo4/a;->c(Landroid/content/Context;)Lo4/a;

    move-result-object v0

    iput-object v0, p0, La8/i0;->a:Lo4/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, La8/i0;->c:Landroid/content/ContentResolver;

    return-void
.end method

.method public static b()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.gamebooster.service.GameBoosterServices"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)La8/i0;
    .locals 2

    const-class v0, La8/i0;

    monitor-enter v0

    :try_start_0
    sget-object v1, La8/i0;->d:La8/i0;

    if-nez v1, :cond_0

    new-instance v1, La8/i0;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, La8/i0;-><init>(Landroid/content/Context;)V

    sput-object v1, La8/i0;->d:La8/i0;

    :cond_0
    sget-object p0, La8/i0;->d:La8/i0;
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
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBindGameService :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La8/i0;->a:Lo4/a;

    const-string v2, "com.miui.gamebooster.service.GameBoosterServices"

    const-string v3, "com.miui.securitycenter"

    invoke-virtual {v1, v2, v3, p1}, Lo4/a;->d(Ljava/lang/String;Ljava/lang/String;Lo4/a$a;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameBoosterManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, La8/i0;->a:Lo4/a;

    const-string v1, "com.miui.gamebooster.service.GameBoosterServices"

    invoke-virtual {v0, v1}, Lo4/a;->h(Ljava/lang/String;)V

    return-void
.end method
