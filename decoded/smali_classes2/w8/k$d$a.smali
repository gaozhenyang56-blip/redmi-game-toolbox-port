.class Lw8/k$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw8/k$d;->onVpnStateChanged(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw8/k;

.field final synthetic b:Lw8/k$d;


# direct methods
.method constructor <init>(Lw8/k$d;Lw8/k;)V
    .locals 0

    iput-object p1, p0, Lw8/k$d$a;->b:Lw8/k$d;

    iput-object p2, p0, Lw8/k$d$a;->a:Lw8/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lw8/k$d$a;->a:Lw8/k;

    invoke-static {v0}, Lw8/k;->o(Lw8/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw8/k$d$a;->a:Lw8/k;

    invoke-virtual {v0}, Lw8/k;->v()V

    iget-object v0, p0, Lw8/k$d$a;->a:Lw8/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lw8/k;->p(Lw8/k;Z)V

    :cond_0
    iget-object v0, p0, Lw8/k$d$a;->a:Lw8/k;

    invoke-static {v0}, Lw8/k;->q(Lw8/k;)Z

    move-result v0

    const/4 v1, -0x1

    const v2, 0x7f121ca6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lw8/k$d$a;->a:Lw8/k;

    invoke-static {v0}, Lw8/k;->k(Lw8/k;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lw8/k$d$a;->a:Lw8/k;

    invoke-static {v3}, Lw8/k;->l(Lw8/k;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lw8/k$d$a;->a:Lw8/k;

    invoke-static {v4}, Lw8/k;->k(Lw8/k;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lw8/k$d$a;->a:Lw8/k;

    invoke-static {v4}, Lw8/k;->d(Lw8/k;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v2, v4, v1}, La8/k0;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lw8/k$d$a;->a:Lw8/k;

    invoke-static {v0}, Lw8/k;->k(Lw8/k;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lw8/k$d$a;->a:Lw8/k;

    invoke-static {v3}, Lw8/k;->l(Lw8/k;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lw8/k$d$a;->a:Lw8/k;

    invoke-static {v4}, Lw8/k;->k(Lw8/k;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lw8/k$d$a;->a:Lw8/k;

    invoke-static {v4}, Lw8/k;->d(Lw8/k;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v2, v4, v1}, La8/k0;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lw8/k$d$a;->a:Lw8/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lw8/k;->p(Lw8/k;Z)V

    return-void
.end method
