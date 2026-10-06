.class public Lcom/miui/gamebooster/model/j;
.super Lcom/miui/gamebooster/model/o;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/model/o;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/model/j;->a:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/j;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120945

    goto :goto_0

    :cond_0
    const v0, 0x7f120944

    :goto_0
    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f08095a

    return v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()I
    .locals 1

    const v0, 0x7f120931

    return v0
.end method

.method public f()V
    .locals 2

    const-string v0, "DisplayEnhanceFunctionModel"

    const-string v1, "onClick: DisplayEnhanceFunctionModel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/model/j;->a:Z

    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/model/j;->a:Z

    return v0
.end method
