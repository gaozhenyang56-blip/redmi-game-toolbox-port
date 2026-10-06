.class Lo8/k$f;
.super Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo8/k;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo8/k;


# direct methods
.method constructor <init>(Lo8/k;)V
    .locals 0

    iput-object p1, p0, Lo8/k$f;->a:Lo8/k;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceAvaliable(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceAvaliable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceChangeCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object p1

    invoke-virtual {p1}, Lo8/k;->T()V

    invoke-static {}, Lo8/k$g;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo8/k$f;->a:Lo8/k;

    invoke-static {}, Lo8/k$g;->b()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lo8/k;->Q(ILcom/miui/gamebooster/service/MiuiVoiceChangeCallback;)V

    invoke-static {}, Lo8/k$g;->d()V

    const-string p1, "open xunyou voice product page..."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lo8/k$f;->a:Lo8/k;

    invoke-static {p1}, Lo8/k;->f(Lo8/k;)I

    move-result v0

    invoke-static {p1, v0}, Lo8/k;->e(Lo8/k;I)I

    iget-object p1, p0, Lo8/k$f;->a:Lo8/k;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lo8/k;->g(Lo8/k;J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-static {}, La8/j2;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, La8/j2;->l(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object p1

    invoke-virtual {p1}, Lo8/k;->f0()V

    :cond_2
    :goto_0
    return-void
.end method
