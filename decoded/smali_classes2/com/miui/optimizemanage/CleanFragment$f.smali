.class Lcom/miui/optimizemanage/CleanFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llb/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizemanage/CleanFragment;->y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizemanage/CleanFragment;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/CleanFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/CleanFragment$f;->a:Lcom/miui/optimizemanage/CleanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 4

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment$f;->a:Lcom/miui/optimizemanage/CleanFragment;

    invoke-static {v0}, Lcom/miui/optimizemanage/CleanFragment;->l0(Lcom/miui/optimizemanage/CleanFragment;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/optimizemanage/CleanFragment$f;->a:Lcom/miui/optimizemanage/CleanFragment;

    invoke-static {v1}, Lcom/miui/optimizemanage/CleanFragment;->p0(Lcom/miui/optimizemanage/CleanFragment;)Lcom/miui/optimizemanage/view/OptimizeManageAnimView;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/miui/optimizemanage/CleanFragment$f;->a:Lcom/miui/optimizemanage/CleanFragment;

    invoke-static {v1}, Lcom/miui/optimizemanage/CleanFragment;->h0(Lcom/miui/optimizemanage/CleanFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/miui/optimizemanage/CleanFragment$f;->a:Lcom/miui/optimizemanage/CleanFragment;

    invoke-static {v1}, Lcom/miui/optimizemanage/CleanFragment;->i0(Lcom/miui/optimizemanage/CleanFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/miui/optimizemanage/CleanFragment$f;->a:Lcom/miui/optimizemanage/CleanFragment;

    invoke-static {v1}, Lcom/miui/optimizemanage/CleanFragment;->j0(Lcom/miui/optimizemanage/CleanFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment$f;->a:Lcom/miui/optimizemanage/CleanFragment;

    invoke-static {p1}, Lcom/miui/optimizemanage/CleanFragment;->p0(Lcom/miui/optimizemanage/CleanFragment;)Lcom/miui/optimizemanage/view/OptimizeManageAnimView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/common/ui/a;->b()V

    :cond_0
    return-void
.end method
