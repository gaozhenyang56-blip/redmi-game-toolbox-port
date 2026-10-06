.class final Lcom/miui/gamebooster/customview/k$c;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/k;->onDetachedFromWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/p<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/customview/k;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/k$c;->a:Lcom/miui/gamebooster/customview/k;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pkg"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Batter scene:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameFilter_View"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/customview/k$c;->a:Lcom/miui/gamebooster/customview/k;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/k;->getPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    sget-object p1, La8/s0;->g:La8/s0$a;

    invoke-virtual {p1}, La8/s0$a;->a()La8/s0;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/customview/k$c;->a:Lcom/miui/gamebooster/customview/k;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f12099e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.getString(R.stri\u2026mebox_filter_toast_apply)"

    invoke-static {p2, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, La8/s0;->v(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/customview/k$c;->a(Ljava/lang/String;Z)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
