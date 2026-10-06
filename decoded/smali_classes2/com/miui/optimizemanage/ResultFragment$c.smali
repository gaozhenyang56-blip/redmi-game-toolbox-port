.class Lcom/miui/optimizemanage/ResultFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizemanage/ResultFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizemanage/ResultFragment;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/ResultFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/ResultFragment$c;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p2, p0, Lcom/miui/optimizemanage/ResultFragment$c;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-static {p2}, Lcom/miui/optimizemanage/ResultFragment;->u0(Lcom/miui/optimizemanage/ResultFragment;)I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/optimizemanage/ResultFragment$c;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcom/miui/optimizemanage/ResultFragment;->v0(Lcom/miui/optimizemanage/ResultFragment;I)I

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment$c;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071695

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p2, p0, Lcom/miui/optimizemanage/ResultFragment$c;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-static {p2}, Lcom/miui/optimizemanage/ResultFragment;->u0(Lcom/miui/optimizemanage/ResultFragment;)I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lcom/miui/optimizemanage/ResultFragment$c;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-static {p3}, Lcom/miui/optimizemanage/ResultFragment;->w0(Lcom/miui/optimizemanage/ResultFragment;)I

    move-result p3

    sub-int/2addr p1, p3

    invoke-static {p2, p1}, Lcom/miui/optimizemanage/ResultFragment;->q0(Lcom/miui/optimizemanage/ResultFragment;I)I

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment$c;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-static {p1}, Lcom/miui/optimizemanage/ResultFragment;->r0(Lcom/miui/optimizemanage/ResultFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment$c;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-static {p1}, Lcom/miui/optimizemanage/ResultFragment;->p0(Lcom/miui/optimizemanage/ResultFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/optimizemanage/ResultFragment;->t0(Lcom/miui/optimizemanage/ResultFragment;I)Z

    :cond_0
    return-void
.end method
