.class Lde/i$c;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/i;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lde/i;


# direct methods
.method constructor <init>(Lde/i;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lde/i$c;->a:Lde/i;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lde/i$c;->a:Lde/i;

    invoke-static {}, Lgd/c;->N()Z

    move-result v0

    invoke-static {p1, v0}, Lde/i;->k(Lde/i;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "extremeModeUiOpen:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lde/i$c;->a:Lde/i;

    invoke-static {v0}, Lde/i;->i(Lde/i;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PowerNoticeUI"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lde/i$c;->a:Lde/i;

    invoke-static {p1}, Lde/i;->i(Lde/i;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lde/i$c;->a:Lde/i;

    invoke-static {p1}, Lde/i;->t(Lde/i;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lde/i$c;->a:Lde/i;

    invoke-static {p1}, Lde/i;->t(Lde/i;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object p1, p0, Lde/i$c;->a:Lde/i;

    invoke-static {p1}, Lde/i;->u(Lde/i;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lde/i$c;->a:Lde/i;

    invoke-static {p1}, Lde/i;->u(Lde/i;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lde/i$c;->a:Lde/i;

    invoke-static {p1}, Lde/i;->u(Lde/i;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object p1, p0, Lde/i$c;->a:Lde/i;

    invoke-static {p1}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lde/j;->f(Landroid/content/Context;)V

    iget-object p1, p0, Lde/i$c;->a:Lde/i;

    invoke-static {p1}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lme/w;->q(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lde/i$c;->a:Lde/i;

    invoke-static {p1}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121035

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lde/i;->x(Lde/i;Ljava/lang/String;)V

    iget-object p1, p0, Lde/i$c;->a:Lde/i;

    invoke-static {p1}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lme/w;->G(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lde/i$c;->a:Lde/i;

    invoke-static {p1}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lme/w;->w0(Landroid/content/Context;ZZ)V

    :cond_2
    iget-object p1, p0, Lde/i$c;->a:Lde/i;

    invoke-static {p1}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lme/w;->b(Landroid/content/Context;)V

    :cond_3
    iget-object p1, p0, Lde/i$c;->a:Lde/i;

    invoke-static {p1}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lme/w;->I(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lde/i$c;->a:Lde/i;

    invoke-static {p1}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lme/w;->c(Landroid/content/Context;)V

    :cond_4
    return-void
.end method
