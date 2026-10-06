.class Lh8/k$a;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh8/k;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic k:Lh8/k;


# direct methods
.method constructor <init>(Lh8/k;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lh8/k$a;->k:Lh8/k;

    iput-object p2, p0, Lh8/k$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/miui/gamebooster/utils/a$o;->i(Z)V

    invoke-static {}, Lve/l;->F()Lve/l;

    move-result-object p1

    iget-object v0, p0, Lh8/k$a;->k:Lh8/k;

    invoke-static {v0}, Lh8/k;->u(Lh8/k;)Lcom/miui/gamebooster/model/ActiveModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lve/l;->G(Lcom/miui/gamebooster/model/ActiveModel;)V

    invoke-static {}, Lc3/k;->g()Lc3/k;

    move-result-object p1

    iget-object v0, p0, Lh8/k$a;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lc3/k;->l(Landroid/content/Context;)V

    return-void
.end method
