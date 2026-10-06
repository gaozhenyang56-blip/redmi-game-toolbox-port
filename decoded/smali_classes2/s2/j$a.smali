.class Ls2/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls2/j;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ls2/j;


# direct methods
.method constructor <init>(Ls2/j;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ls2/j$a;->c:Ls2/j;

    iput-object p2, p0, Ls2/j$a;->a:Landroid/content/Intent;

    iput-object p3, p0, Ls2/j$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ls2/j$a;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls2/j$a;->c:Ls2/j;

    iget-object v1, p0, Ls2/j$a;->b:Landroid/content/Context;

    iget-object v2, p0, Ls2/j$a;->a:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Ls2/j;->j(Ls2/j;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls2/j$a;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls2/j$a;->c:Ls2/j;

    iget-object v1, p0, Ls2/j$a;->b:Landroid/content/Context;

    iget-object v2, p0, Ls2/j$a;->a:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Ls2/j;->k(Ls2/j;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ls2/j$a;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ls2/j$a;->c:Ls2/j;

    iget-object v1, p0, Ls2/j$a;->b:Landroid/content/Context;

    iget-object v2, p0, Ls2/j$a;->a:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Ls2/j;->l(Ls2/j;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ls2/j$a;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ls2/j$a;->b:Landroid/content/Context;

    iget-object v1, p0, Ls2/j$a;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lz4/b;->i(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Ls2/j$a;->c:Ls2/j;

    iget-object v1, p0, Ls2/j$a;->b:Landroid/content/Context;

    iget-object v2, p0, Ls2/j$a;->a:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Ls2/j;->m(Ls2/j;Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Ls2/j$a;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/miui/permcenter/q;->q(Landroid/content/Intent;)V

    return-void
.end method
