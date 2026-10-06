.class La8/g1$c;
.super Lcom/milink/sdk/client/MiLinkCastCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La8/g1;->p(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic k:La8/g1;


# direct methods
.method constructor <init>(La8/g1;Z)V
    .locals 0

    iput-object p1, p0, La8/g1$c;->k:La8/g1;

    iput-boolean p2, p0, La8/g1$c;->a:Z

    invoke-direct {p0}, Lcom/milink/sdk/client/MiLinkCastCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Lcom/milink/sdk/cast/MiLinkDevice;I)V
    .locals 1

    const-string p1, "MiLinkUtils"

    const-string p2, "onConnected"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, La8/g1$c;->k:La8/g1;

    const/16 p2, 0x81

    const/16 v0, 0xc8

    invoke-static {p1, p2, v0}, La8/g1;->h(La8/g1;II)V

    return-void
.end method

.method public onDisconnected(Lcom/milink/sdk/cast/MiLinkDevice;I)V
    .locals 0

    const-string p1, "MiLinkUtils"

    const-string p2, "onDisconnected"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, La8/g1$c;->k:La8/g1;

    const/16 p2, 0x84

    invoke-static {p1, p2}, La8/g1;->i(La8/g1;I)V

    return-void
.end method

.method public onFailure(II)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFailure: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiLinkUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, La8/g1$c;->k:La8/g1;

    const/16 p2, 0x82

    invoke-static {p1, p2}, La8/g1;->i(La8/g1;I)V

    return-void
.end method

.method public onInit()V
    .locals 3

    const-string v0, "MiLinkUtils"

    const-string v1, "onInit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La8/g1$c;->k:La8/g1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, La8/g1;->g(La8/g1;I)I

    iget-boolean v0, p0, La8/g1$c;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La8/g1$c;->k:La8/g1;

    const/16 v1, 0x83

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, La8/g1;->h(La8/g1;II)V

    :cond_0
    return-void
.end method
