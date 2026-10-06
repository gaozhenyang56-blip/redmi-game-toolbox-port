.class Lcom/miui/optimizemanage/ResultFragment$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llb/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/ResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/optimizemanage/ResultFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/ResultFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/ResultFragment$m;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 6

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment$m;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/ResultFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const v1, 0x3fd9999a    # 1.7f

    float-to-double v2, p1

    const-wide v4, 0x3fe28f5c28f5c28fL    # 0.58

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    mul-float/2addr p1, v1

    :goto_0
    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->j0(Lcom/miui/optimizemanage/ResultFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->j0(Lcom/miui/optimizemanage/ResultFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    :goto_1
    return-void
.end method
