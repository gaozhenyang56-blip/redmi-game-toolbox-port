.class public La7/f;
.super La7/c;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/gamebooster/service/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/w;)V
    .locals 0

    invoke-direct {p0}, La7/c;-><init>()V

    iput-object p1, p0, La7/f;->a:Landroid/content/Context;

    iput-object p2, p0, La7/f;->b:Lcom/miui/gamebooster/service/w;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lm6/a;->o(Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, La7/f;->a:Landroid/content/Context;

    invoke-static {v1}, La8/k0;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "GameBoosterService"

    const-string v2, "mDataBooster...stop "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, La7/f;->a:Landroid/content/Context;

    invoke-static {v1, v0}, La8/l0;->k(Landroid/content/Context;Z)V

    invoke-static {v0}, Lm6/a;->W(Z)V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
