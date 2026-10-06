.class Lcom/miui/optimizemanage/ResultFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizemanage/ResultFragment;->O0()V
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

    iput-object p1, p0, Lcom/miui/optimizemanage/ResultFragment$f;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment$f;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->x0(Lcom/miui/optimizemanage/ResultFragment;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment$f;->a:Lcom/miui/optimizemanage/ResultFragment;

    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->x0(Lcom/miui/optimizemanage/ResultFragment;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    :cond_0
    return-void
.end method
