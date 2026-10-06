.class public Lcom/miui/gamebooster/model/l;
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

    const v0, 0x7f120942

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f08095e

    return v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public d()I
    .locals 1

    const v0, 0x7f120943

    return v0
.end method

.method public e()Z
    .locals 1

    invoke-static {}, Lv6/a;->b()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 2

    const-string v0, "GameAudioFunctionModel"

    const-string v1, "onClick: GameAudioFunctionModel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
