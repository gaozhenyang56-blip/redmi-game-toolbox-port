.class Lcom/miui/optimizemanage/view/OptimizeMainView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/common/ui/VlcTextureView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/view/OptimizeMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizemanage/view/OptimizeMainView;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/view/OptimizeMainView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/view/OptimizeMainView$a;->a:Lcom/miui/optimizemanage/view/OptimizeMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView$a;->a:Lcom/miui/optimizemanage/view/OptimizeMainView;

    invoke-static {v0}, Lcom/miui/optimizemanage/view/OptimizeMainView;->f(Lcom/miui/optimizemanage/view/OptimizeMainView;)Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    move-result-object v0

    sget-object v1, Lcom/miui/optimizemanage/view/OptimizeMainView$c;->a:Lcom/miui/optimizemanage/view/OptimizeMainView$c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView$a;->a:Lcom/miui/optimizemanage/view/OptimizeMainView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/optimizemanage/view/OptimizeMainView;->m(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OptimizeMainView$a;->a:Lcom/miui/optimizemanage/view/OptimizeMainView;

    invoke-static {v0}, Lcom/miui/optimizemanage/view/OptimizeMainView;->g(Lcom/miui/optimizemanage/view/OptimizeMainView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/optimizemanage/view/OptimizeMainView$a$a;

    invoke-direct {v1, p0}, Lcom/miui/optimizemanage/view/OptimizeMainView$a$a;-><init>(Lcom/miui/optimizemanage/view/OptimizeMainView$a;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
