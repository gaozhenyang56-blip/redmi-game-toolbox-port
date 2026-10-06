.class Lcom/miui/optimizemanage/ResultFragment$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llb/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/ResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "o"
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

.field private final b:I


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/ResultFragment;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/ResultFragment$o;->a:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/miui/optimizemanage/ResultFragment$o;->b:I

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment$o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/ResultFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/optimizemanage/ResultFragment$o;->b:I

    rsub-int/lit8 v2, v1, 0x0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    add-int/2addr v1, p1

    invoke-static {v0}, Lcom/miui/optimizemanage/ResultFragment;->j0(Lcom/miui/optimizemanage/ResultFragment;)Landroid/widget/ImageView;

    move-result-object p1

    int-to-float v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    :goto_0
    return-void
.end method
