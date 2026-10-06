.class La7/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:La7/i;


# direct methods
.method public constructor <init>(La7/i;I)V
    .locals 0

    iput-object p1, p0, La7/i$d;->b:La7/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, La7/i$d;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "GameBoxService"

    :try_start_0
    iget v1, p0, La7/i$d;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, La7/i$d;->b:La7/i;

    iget-object v1, v1, La7/i;->g:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    if-eqz v1, :cond_1

    invoke-interface {v1, v3, v3}, Lcom/miui/gamebooster/service/IGameBoosterWindow;->w0(ZZ)V

    :cond_1
    invoke-static {}, La8/r0;->a()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, La7/i$d;->b:La7/i;

    invoke-static {v1}, La7/i;->g(La7/i;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, La7/i;->s(Landroid/content/Context;)Z

    move-result v3

    iget-object v1, p0, La7/i$d;->b:La7/i;

    iget-object v1, v1, La7/i;->g:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    if-eqz v1, :cond_3

    invoke-interface {v1, v2, v3}, Lcom/miui/gamebooster/service/IGameBoosterWindow;->w0(ZZ)V

    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slide: status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, La7/i$d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\tstartFreeFrom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GameBoosterUtils:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
