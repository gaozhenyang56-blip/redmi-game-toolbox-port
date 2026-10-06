.class Ld7/l$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/l$f;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld7/l$f;


# direct methods
.method constructor <init>(Ld7/l$f;)V
    .locals 0

    iput-object p1, p0, Ld7/l$f$a;->a:Ld7/l$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Ld7/l$f$a;->a:Ld7/l$f;

    iget-object p1, p1, Ld7/l$f;->g:Ld7/l;

    invoke-static {p1}, Ld7/l;->g(Ld7/l;)Ld7/v;

    move-result-object p1

    instance-of p1, p1, Ld7/x;

    if-eqz p1, :cond_0

    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object p1

    iget-object v0, p0, Ld7/l$f$a;->a:Ld7/l$f;

    iget-object v0, v0, Ld7/l$f;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lp7/a;->c(Ljava/lang/String;)V

    iget-object p1, p0, Ld7/l$f$a;->a:Ld7/l$f;

    iget-object p1, p1, Ld7/l$f;->g:Ld7/l;

    invoke-static {p1}, Ld7/l;->v(Ld7/l;)V

    iget-object p1, p0, Ld7/l$f$a;->a:Ld7/l$f;

    iget-object p1, p1, Ld7/l$f;->c:Landroid/content/Context;

    invoke-static {p1}, Ls8/h;->I0(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ld7/l$f$a;->a:Ld7/l$f;

    iget-object p1, p1, Ld7/l$f;->g:Ld7/l;

    invoke-static {p1}, Ld7/l;->g(Ld7/l;)Ld7/v;

    move-result-object p1

    instance-of p1, p1, Ld7/u;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld7/l$f$a;->a:Ld7/l$f;

    iget-object p1, p1, Ld7/l$f;->g:Ld7/l;

    invoke-static {p1}, Ld7/l;->v(Ld7/l;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ld7/l$f$a;->a:Ld7/l$f;

    iget-object p1, p1, Ld7/l$f;->g:Ld7/l;

    invoke-static {p1}, Ld7/l;->g(Ld7/l;)Ld7/v;

    move-result-object p1

    instance-of p1, p1, Ld7/y;

    if-eqz p1, :cond_3

    iget-object p1, p0, Ld7/l$f$a;->a:Ld7/l$f;

    iget-boolean v0, p1, Ld7/l$f;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Ld7/l$f;->g:Ld7/l;

    iget-object v1, p1, Ld7/l$f;->b:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    iget-object p1, p1, Ld7/l$f;->e:Landroid/view/WindowManager;

    invoke-static {v0, v1, p1}, Ld7/l;->l(Ld7/l;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Ld7/l$f;->g:Ld7/l;

    iget-object p1, p1, Ld7/l$f;->b:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    invoke-static {v0, p1}, Ld7/l;->m(Ld7/l;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;)V

    :cond_3
    :goto_0
    return-void
.end method
