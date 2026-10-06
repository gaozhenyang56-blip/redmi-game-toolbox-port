.class Lcom/miui/appmanager/fragment/AppFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/AppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/AppFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/AppFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AppFragment$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AppFragment$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/fragment/AppFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/appmanager/fragment/AppFragment;->d0(Lcom/miui/appmanager/fragment/AppFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AppFragment;->e0(Lcom/miui/appmanager/fragment/AppFragment;)Lh3/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lh3/j;->k(I)V

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AppFragment;->f0(Lcom/miui/appmanager/fragment/AppFragment;)Lcom/miui/appmanager/widget/AMMainTopView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AppFragment;->g0(Lcom/miui/appmanager/fragment/AppFragment;)Le3/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method
