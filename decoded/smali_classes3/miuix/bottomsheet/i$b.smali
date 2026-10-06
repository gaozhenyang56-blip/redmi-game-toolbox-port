.class Lmiuix/bottomsheet/i$b;
.super Landroidx/core/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/i;->M(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/bottomsheet/i;


# direct methods
.method constructor <init>(Lmiuix/bottomsheet/i;)V
    .locals 0

    iput-object p1, p0, Lmiuix/bottomsheet/i$b;->a:Lmiuix/bottomsheet/i;

    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lc0/k;)V
    .locals 0
    .param p2    # Lc0/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lc0/k;)V

    iget-object p1, p0, Lmiuix/bottomsheet/i$b;->a:Lmiuix/bottomsheet/i;

    invoke-static {p1}, Lmiuix/bottomsheet/i;->n(Lmiuix/bottomsheet/i;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x100000

    invoke-virtual {p2, p1}, Lc0/k;->a(I)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lc0/k;->s0(Z)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/i$b;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->n(Lmiuix/bottomsheet/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lmiuix/bottomsheet/i$b;->a:Lmiuix/bottomsheet/i;

    invoke-virtual {p1}, Lmiuix/bottomsheet/i;->w()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
