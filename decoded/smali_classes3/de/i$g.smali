.class Lde/i$g;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/i;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lde/i;


# direct methods
.method constructor <init>(Lde/i;JJ)V
    .locals 0

    iput-object p1, p0, Lde/i$g;->a:Lde/i;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lde/i$g;->a:Lde/i;

    invoke-static {v0}, Lde/i;->u(Lde/i;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/i$g;->a:Lde/i;

    invoke-static {v0}, Lde/i;->u(Lde/i;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/i$g;->a:Lde/i;

    invoke-static {v0}, Lde/i;->u(Lde/i;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lde/i$g;->a:Lde/i;

    invoke-static {v0}, Lde/i;->e(Lde/i;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lde/i$g;->a:Lde/i;

    invoke-static {v0}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/j;->f(Landroid/content/Context;)V

    iget-object v0, p0, Lde/i$g;->a:Lde/i;

    invoke-static {v0}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde/i$g;->a:Lde/i;

    invoke-static {v0}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lme/w;->x0(Landroid/content/Context;I)V

    iget-object v0, p0, Lde/i$g;->a:Lde/i;

    invoke-static {v0}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lme/w;->s0(Landroid/content/Context;I)V

    iget-object v0, p0, Lde/i$g;->a:Lde/i;

    invoke-static {v0}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121032

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/i;->x(Lde/i;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lde/i$g;->a:Lde/i;

    invoke-static {v0}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lme/w;->w0(Landroid/content/Context;ZZ)V

    :goto_0
    const-string v0, "PowerNoticeUI"

    const-string v1, "mCountDownTimer finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
