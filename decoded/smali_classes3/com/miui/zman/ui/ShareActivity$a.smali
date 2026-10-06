.class Lcom/miui/zman/ui/ShareActivity$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/zman/ui/ShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/zman/ui/ShareActivity;


# direct methods
.method constructor <init>(Lcom/miui/zman/ui/ShareActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zman/ui/ShareActivity$a;->a:Lcom/miui/zman/ui/ShareActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    invoke-static {}, Lhh/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/zman/ui/ShareActivity$a;->a:Lcom/miui/zman/ui/ShareActivity;

    invoke-static {p1}, Lcom/miui/zman/ui/ShareActivity;->c(Lcom/miui/zman/ui/ShareActivity;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lx4/z1;->e()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lx4/v;->t(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/miui/zman/ui/ShareActivity$a;->a:Lcom/miui/zman/ui/ShareActivity;

    invoke-static {v0}, Lcom/miui/zman/ui/ShareActivity;->c(Lcom/miui/zman/ui/ShareActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/zman/ui/ShareActivity$a;->a:Lcom/miui/zman/ui/ShareActivity;

    invoke-static {v0}, Lcom/miui/zman/ui/ShareActivity;->c(Lcom/miui/zman/ui/ShareActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/zman/ui/ShareActivity$a;->a:Lcom/miui/zman/ui/ShareActivity;

    invoke-static {v0}, Lcom/miui/zman/ui/ShareActivity;->c(Lcom/miui/zman/ui/ShareActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v0, -0x6fffffff

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/zman/ui/ShareActivity$a;->a:Lcom/miui/zman/ui/ShareActivity;

    invoke-static {v0}, Lcom/miui/zman/ui/ShareActivity;->c(Lcom/miui/zman/ui/ShareActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/zman/ui/ShareActivity$a;->a:Lcom/miui/zman/ui/ShareActivity;

    invoke-static {v0}, Lcom/miui/zman/ui/ShareActivity;->c(Lcom/miui/zman/ui/ShareActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/zman/ui/ShareActivity$a;->a:Lcom/miui/zman/ui/ShareActivity;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const-string p1, "ShareActivity"

    const-string v0, "onShareSuccess"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/zman/ui/ShareActivity$a;->a:Lcom/miui/zman/ui/ShareActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object p1, p0, Lcom/miui/zman/ui/ShareActivity$a;->a:Lcom/miui/zman/ui/ShareActivity;

    invoke-virtual {p1}, Lcom/miui/zman/ui/ShareActivity;->finish()V

    :cond_1
    return-void
.end method
