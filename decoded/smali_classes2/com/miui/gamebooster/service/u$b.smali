.class Lcom/miui/gamebooster/service/u$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/u;


# direct methods
.method private constructor <init>(Lcom/miui/gamebooster/service/u;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/u$b;->a:Lcom/miui/gamebooster/service/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gamebooster/service/u;Lcom/miui/gamebooster/service/u$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/u$b;-><init>(Lcom/miui/gamebooster/service/u;)V

    return-void
.end method


# virtual methods
.method public onDisplayFoldChanged(IZ)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDisplayFoldChanged "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isFirst : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/gamebooster/service/u$b;->a:Lcom/miui/gamebooster/service/u;

    invoke-static {v0}, Lcom/miui/gamebooster/service/u;->a(Lcom/miui/gamebooster/service/u;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EntertainmentService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/service/u$b;->a:Lcom/miui/gamebooster/service/u;

    invoke-static {}, La8/z;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-static {p1, p2}, Lcom/miui/gamebooster/service/u;->c(Lcom/miui/gamebooster/service/u;Z)Z

    iget-object p1, p0, Lcom/miui/gamebooster/service/u$b;->a:Lcom/miui/gamebooster/service/u;

    invoke-static {p1}, Lcom/miui/gamebooster/service/u;->a(Lcom/miui/gamebooster/service/u;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/service/u$b;->a:Lcom/miui/gamebooster/service/u;

    invoke-static {p1, v1}, Lcom/miui/gamebooster/service/u;->b(Lcom/miui/gamebooster/service/u;Z)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/service/u$b;->a:Lcom/miui/gamebooster/service/u;

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/u;->k()V

    return-void
.end method
