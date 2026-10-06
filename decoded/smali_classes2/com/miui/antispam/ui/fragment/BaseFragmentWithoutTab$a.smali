.class Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$a;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$a;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    invoke-static {v0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->b0(Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$a;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    invoke-static {v2}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c0(Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v3, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$a;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    iget-object v4, v3, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->g:Lcom/miui/maml/component/MamlView;

    if-nez v4, :cond_0

    new-array v4, v0, [I

    invoke-static {v3}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->b0(Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0b0374

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v4, v2

    goto :goto_0

    :cond_0
    new-array v3, v0, [I

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v3, v2

    iget-object v3, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$a;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    invoke-static {v3}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c0(Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    :goto_0
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v4, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$a;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    iget-object v4, v4, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    div-int/2addr v3, v0

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$a;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    iget-object v1, v0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->g:Lcom/miui/maml/component/MamlView;

    if-eqz v1, :cond_1

    int-to-float v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$a;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    invoke-static {v1}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c0(Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->b0(Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;)Landroid/view/View;

    move-result-object v0

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    return-void
.end method
