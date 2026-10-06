.class Lcom/miui/appmanager/fragment/ManageFragment$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/ManageFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/ManageFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$j;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/fragment/ManageFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->J0(Lcom/miui/appmanager/fragment/ManageFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->h0(Lcom/miui/appmanager/fragment/ManageFragment;)Lcom/miui/appmanager/widget/AMMainTopView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->N0(Lcom/miui/appmanager/fragment/ManageFragment;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->g0(Lcom/miui/appmanager/fragment/ManageFragment;)Lcom/miui/appmanager/widget/AMMessageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->g0(Lcom/miui/appmanager/fragment/ManageFragment;)Lcom/miui/appmanager/widget/AMMessageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    :cond_1
    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->P0(Lcom/miui/appmanager/fragment/ManageFragment;)Lh3/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lh3/i;->k(I)V

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->h0(Lcom/miui/appmanager/fragment/ManageFragment;)Lcom/miui/appmanager/widget/AMMainTopView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->D0(Lcom/miui/appmanager/fragment/ManageFragment;)Le3/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method
