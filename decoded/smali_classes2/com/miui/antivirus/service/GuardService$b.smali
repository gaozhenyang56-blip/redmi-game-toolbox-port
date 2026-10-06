.class Lcom/miui/antivirus/service/GuardService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo2/g$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/service/GuardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/service/GuardService;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/GuardService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/GuardService$b;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$b;->a:Lcom/miui/antivirus/service/GuardService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/antivirus/service/GuardService;->e(Lcom/miui/antivirus/service/GuardService;Z)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$b;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->c(Lcom/miui/antivirus/service/GuardService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$b;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->l(Lcom/miui/antivirus/service/GuardService;)Lcom/miui/antivirus/service/GuardService$g;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$b;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->c(Lcom/miui/antivirus/service/GuardService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$b;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->j(Lcom/miui/antivirus/service/GuardService;)I

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$b;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->h(Lcom/miui/antivirus/service/GuardService;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$b;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->l(Lcom/miui/antivirus/service/GuardService;)Lcom/miui/antivirus/service/GuardService$g;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "GuardService"

    const-string v1, "onStartScan"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$b;->a:Lcom/miui/antivirus/service/GuardService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/antivirus/service/GuardService;->d(Lcom/miui/antivirus/service/GuardService;Z)Z

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$b;->a:Lcom/miui/antivirus/service/GuardService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/antivirus/service/GuardService;->e(Lcom/miui/antivirus/service/GuardService;Z)Z

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$b;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0, v1}, Lcom/miui/antivirus/service/GuardService;->g(Lcom/miui/antivirus/service/GuardService;I)I

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$b;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0, v1}, Lcom/miui/antivirus/service/GuardService;->i(Lcom/miui/antivirus/service/GuardService;I)I

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$b;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->k(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public e(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$b;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->k(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$b;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->k(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$b;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->f(Lcom/miui/antivirus/service/GuardService;)I

    move-result v0

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$b;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0, p1}, Lcom/miui/antivirus/service/GuardService;->g(Lcom/miui/antivirus/service/GuardService;I)I

    :cond_1
    return-void
.end method
