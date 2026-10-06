.class public Ly7/k;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Ljava/util/List<",
        "Lu7/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field private q:Landroid/content/Context;

.field private r:Lmiui/security/SecurityManager;

.field private s:Z

.field t:Lo4/a$a;

.field private u:Lcom/miui/gamebooster/service/IGameBooster;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lw4/d;-><init>(Landroid/content/Context;)V

    new-instance v0, Ly7/k$a;

    invoke-direct {v0, p0}, Ly7/k$a;-><init>(Ly7/k;)V

    iput-object v0, p0, Ly7/k;->t:Lo4/a$a;

    iput-boolean p2, p0, Ly7/k;->s:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ly7/k;->q:Landroid/content/Context;

    invoke-static {p1}, La8/i0;->c(Landroid/content/Context;)La8/i0;

    move-result-object p1

    iget-object p2, p0, Ly7/k;->t:Lo4/a$a;

    invoke-virtual {p1, p2}, La8/i0;->a(Lo4/a$a;)V

    return-void
.end method

.method static synthetic J(Ly7/k;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 0

    iget-object p0, p0, Ly7/k;->u:Lcom/miui/gamebooster/service/IGameBooster;

    return-object p0
.end method

.method static synthetic K(Ly7/k;Lcom/miui/gamebooster/service/IGameBooster;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 0

    iput-object p1, p0, Ly7/k;->u:Lcom/miui/gamebooster/service/IGameBooster;

    return-object p1
.end method

.method private M()V
    .locals 0
    return-void
.end method

.method private N()V
    .locals 0
    return-void
.end method

.method private O()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ly7/k;->u:Lcom/miui/gamebooster/service/IGameBooster;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ly7/k;->q:Landroid/content/Context;

    invoke-static {v1}, La8/j0;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/gamebooster/service/IGameBooster;->Z1(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageGameTask"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ly7/k;->L()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public L()Ljava/util/List;
    .locals 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    return-object v0
.end method
