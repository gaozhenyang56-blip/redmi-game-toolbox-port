.class Lcom/miui/phonemanage/PhoneManagerFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/phonemanage/PhoneManagerFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/phonemanage/PhoneManagerFragment;


# direct methods
.method constructor <init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$a;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$a;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->l0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/customview/FirstTouchRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-lez p3, :cond_3

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment$a;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->m0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/card/CardViewRvAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/common/card/CardViewRvAdapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$a;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->z0(Lcom/miui/phonemanage/PhoneManagerFragment;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$a;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->z0(Lcom/miui/phonemanage/PhoneManagerFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, p3

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    div-int/lit8 p1, p1, 0x2

    :goto_1
    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment$a;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->z0(Lcom/miui/phonemanage/PhoneManagerFragment;)Landroid/view/View;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    return-void
.end method
