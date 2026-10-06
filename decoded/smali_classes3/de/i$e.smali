.class Lde/i$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/i;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lde/i;


# direct methods
.method constructor <init>(Lde/i;)V
    .locals 0

    iput-object p1, p0, Lde/i$e;->a:Lde/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lde/i$e;->a:Lde/i;

    invoke-static {p1}, Lde/i;->t(Lde/i;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lde/i$e;->a:Lde/i;

    invoke-static {p1}, Lde/i;->t(Lde/i;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    iget-object p1, p0, Lde/i$e;->a:Lde/i;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lde/i;->v(Lde/i;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    iget-object p1, p0, Lde/i$e;->a:Lde/i;

    invoke-static {p1}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f121032

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lde/i;->x(Lde/i;Ljava/lang/String;)V

    iget-object p1, p0, Lde/i$e;->a:Lde/i;

    invoke-static {p1}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2, p2}, Lme/w;->w0(Landroid/content/Context;ZZ)V

    iget-object p1, p0, Lde/i$e;->a:Lde/i;

    invoke-static {p1}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lme/w;->c(Landroid/content/Context;)V

    const-string p1, "PowerNoticeUI"

    const-string p2, "come_extreme_now"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
