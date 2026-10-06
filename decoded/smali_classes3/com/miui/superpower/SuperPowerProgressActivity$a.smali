.class Lcom/miui/superpower/SuperPowerProgressActivity$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/SuperPowerProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/miui/superpower/SuperPowerProgressActivity;


# direct methods
.method constructor <init>(Lcom/miui/superpower/SuperPowerProgressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->a:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, -0x1

    const v3, 0x7f081017

    const v4, 0x7f060d97

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->c0(Lcom/miui/superpower/SuperPowerProgressActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ljg/e;->G(Landroid/content/Context;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->l0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1, p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->m0(Lcom/miui/superpower/SuperPowerProgressActivity;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-virtual {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->finish()V

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->c0(Lcom/miui/superpower/SuperPowerProgressActivity;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Ljg/a;->f(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iput v1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->a:I

    goto/16 :goto_2

    :cond_3
    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->j0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->k0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->k0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/ImageView;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->c0(Lcom/miui/superpower/SuperPowerProgressActivity;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->h0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->i0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->i0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/ImageView;

    move-result-object p1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->c0(Lcom/miui/superpower/SuperPowerProgressActivity;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->d0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->g0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->g0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/ImageView;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->c0(Lcom/miui/superpower/SuperPowerProgressActivity;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->n0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v5, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->e0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->e0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iget v3, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->a:I

    iput v3, p1, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {v3}, Lcom/miui/superpower/SuperPowerProgressActivity;->f0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->a:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->a:I

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->c0(Lcom/miui/superpower/SuperPowerProgressActivity;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-wide/16 v3, 0x4e2

    goto :goto_1

    :cond_8
    const-wide/16 v3, 0x258

    :goto_1
    iget p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->a:I

    if-gt p1, v0, :cond_9

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$a;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->f0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_9
    :goto_2
    return-void
.end method
