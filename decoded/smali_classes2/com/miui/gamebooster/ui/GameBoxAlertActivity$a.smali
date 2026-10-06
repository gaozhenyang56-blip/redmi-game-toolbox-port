.class Lcom/miui/gamebooster/ui/GameBoxAlertActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/GameBoxAlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/GameBoxAlertActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameBoxAlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity$a;->a:Lcom/miui/gamebooster/ui/GameBoxAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity$a;->a:Lcom/miui/gamebooster/ui/GameBoxAlertActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->j0(Lcom/miui/gamebooster/ui/GameBoxAlertActivity;)I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity$a;->a:Lcom/miui/gamebooster/ui/GameBoxAlertActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->i0(Lcom/miui/gamebooster/ui/GameBoxAlertActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity$a;->a:Lcom/miui/gamebooster/ui/GameBoxAlertActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->k0(Lcom/miui/gamebooster/ui/GameBoxAlertActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity$a;->a:Lcom/miui/gamebooster/ui/GameBoxAlertActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->k0(Lcom/miui/gamebooster/ui/GameBoxAlertActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity$a;->a:Lcom/miui/gamebooster/ui/GameBoxAlertActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120f48

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity$a;->a:Lcom/miui/gamebooster/ui/GameBoxAlertActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->k0(Lcom/miui/gamebooster/ui/GameBoxAlertActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity$a;->a:Lcom/miui/gamebooster/ui/GameBoxAlertActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1209b7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity$a;->a:Lcom/miui/gamebooster/ui/GameBoxAlertActivity;

    invoke-static {v5}, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->i0(Lcom/miui/gamebooster/ui/GameBoxAlertActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity$a;->a:Lcom/miui/gamebooster/ui/GameBoxAlertActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->m0(Lcom/miui/gamebooster/ui/GameBoxAlertActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity$a;->a:Lcom/miui/gamebooster/ui/GameBoxAlertActivity;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->l0(Lcom/miui/gamebooster/ui/GameBoxAlertActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GameBoosterReflectUtils"

    const-string v2, "setAlertParams"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
