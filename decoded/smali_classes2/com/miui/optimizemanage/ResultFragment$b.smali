.class Lcom/miui/optimizemanage/ResultFragment$b;
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

    iput-object p1, p0, Lcom/miui/optimizemanage/ResultFragment$b;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment$b;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-static {p1}, Lcom/miui/optimizemanage/ResultFragment;->p0(Lcom/miui/optimizemanage/ResultFragment;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment$b;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-static {p1}, Lcom/miui/optimizemanage/ResultFragment;->r0(Lcom/miui/optimizemanage/ResultFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment$b;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-static {p1}, Lcom/miui/optimizemanage/ResultFragment;->p0(Lcom/miui/optimizemanage/ResultFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/optimizemanage/ResultFragment;->t0(Lcom/miui/optimizemanage/ResultFragment;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment$b;->a:Lcom/miui/optimizemanage/ResultFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/optimizemanage/ResultFragment;->s0(Lcom/miui/optimizemanage/ResultFragment;Z)Z

    :cond_0
    return-void
.end method
