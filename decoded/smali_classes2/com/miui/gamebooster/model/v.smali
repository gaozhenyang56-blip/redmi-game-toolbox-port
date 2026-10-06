.class public Lcom/miui/gamebooster/model/v;
.super Lcom/miui/gamebooster/model/o;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/model/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f120946

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f080974

    return v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public d()I
    .locals 1

    const v0, 0x7f120add

    return v0
.end method

.method public e()Z
    .locals 1

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v0

    invoke-virtual {v0}, La8/b;->v()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 2

    const-string v0, "MotionEnhanceFunctionModel"

    const-string v1, "onClick: MotionEnhanceFunctionModel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
