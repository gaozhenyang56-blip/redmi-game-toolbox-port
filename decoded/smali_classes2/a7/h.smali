.class public La7/h;
.super La7/c;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Lcom/miui/gamebooster/service/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/w;)V
    .locals 0

    invoke-direct {p0}, La7/c;-><init>()V

    iput-object p1, p0, La7/h;->b:Landroid/content/Context;

    iput-object p2, p0, La7/h;->c:Lcom/miui/gamebooster/service/w;

    return-void
.end method

.method private f()Z
    .locals 1

    invoke-static {}, La8/g0;->n0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, La8/g0;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-direct {p0}, La7/h;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, La7/h;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "GameBoosterService"

    const-string v1, "mGWSDService...stop "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La7/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string v3, "gb_gwsd"

    invoke-static {v0, v3, v1, v2}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 4

    invoke-direct {p0}, La7/h;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, La7/h;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "GameBoosterService"

    const-string v1, "mGWSDService...start "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La7/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x2

    const-string v3, "gb_gwsd"

    invoke-static {v0, v3, v1, v2}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lm6/a;->v(Z)Z

    move-result v0

    iput-boolean v0, p0, La7/h;->a:Z

    return-void
.end method

.method public e()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
