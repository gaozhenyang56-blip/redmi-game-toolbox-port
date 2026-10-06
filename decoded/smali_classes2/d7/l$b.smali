.class Ld7/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/shoulderkey/widget/TbGuideView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/l;->U(Landroid/content/Context;ZLandroid/view/WindowManager$LayoutParams;Lcom/miui/dock/sidebar/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld7/l;


# direct methods
.method constructor <init>(Ld7/l;)V
    .locals 0

    iput-object p1, p0, Ld7/l$b;->a:Ld7/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ld7/l$b;->a:Ld7/l;

    invoke-static {v0}, Ld7/l;->g(Ld7/l;)Ld7/v;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld7/l$b;->a:Ld7/l;

    invoke-static {v0}, Ld7/l;->g(Ld7/l;)Ld7/v;

    move-result-object v0

    invoke-virtual {v0}, Ld7/v;->c()V

    :cond_0
    iget-object v0, p0, Ld7/l$b;->a:Ld7/l;

    invoke-static {v0}, Ld7/l;->i(Ld7/l;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Ld7/l$b;->a:Ld7/l;

    invoke-static {v0}, Ld7/l;->g(Ld7/l;)Ld7/v;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld7/l$b;->a:Ld7/l;

    invoke-static {v0}, Ld7/l;->g(Ld7/l;)Ld7/v;

    move-result-object v0

    invoke-virtual {v0}, Ld7/v;->c()V

    iget-object v0, p0, Ld7/l$b;->a:Ld7/l;

    invoke-static {v0}, Ld7/l;->g(Ld7/l;)Ld7/v;

    move-result-object v0

    invoke-virtual {v0}, Ld7/v;->d()V

    :cond_0
    iget-object v0, p0, Ld7/l$b;->a:Ld7/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld7/l;->h(Ld7/l;Ld7/v;)Ld7/v;

    iget-object v0, p0, Ld7/l$b;->a:Ld7/l;

    invoke-static {v0}, Ld7/l;->i(Ld7/l;)V

    return-void
.end method
