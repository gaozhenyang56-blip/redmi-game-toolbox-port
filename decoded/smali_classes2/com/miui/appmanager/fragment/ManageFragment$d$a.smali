.class Lcom/miui/appmanager/fragment/ManageFragment$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/appmanager/fragment/ManageFragment$d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/appmanager/fragment/ManageFragment$d;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/fragment/ManageFragment$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$d$a;->a:Lcom/miui/appmanager/fragment/ManageFragment$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$d$a;->a:Lcom/miui/appmanager/fragment/ManageFragment$d;

    iget-object v0, v0, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->w0(Lcom/miui/appmanager/fragment/ManageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$d$a;->a:Lcom/miui/appmanager/fragment/ManageFragment$d;

    iget-object v0, v0, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->z0(Lcom/miui/appmanager/fragment/ManageFragment;)Lh3/k;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ManageFragment$d$a;->a:Lcom/miui/appmanager/fragment/ManageFragment$d;

    iget-object v1, v1, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ManageFragment;->y0(Lcom/miui/appmanager/fragment/ManageFragment;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ManageFragment$d$a;->a:Lcom/miui/appmanager/fragment/ManageFragment$d;

    iget-object v2, v2, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {v2}, Lcom/miui/appmanager/fragment/ManageFragment;->U0(Lcom/miui/appmanager/fragment/ManageFragment;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lh3/k;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$d$a;->a:Lcom/miui/appmanager/fragment/ManageFragment$d;

    iget-object v0, v0, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->d0(Lcom/miui/appmanager/fragment/ManageFragment;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$d$a;->a:Lcom/miui/appmanager/fragment/ManageFragment$d;

    iget-object v0, v0, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/appmanager/fragment/ManageFragment;->x0(Lcom/miui/appmanager/fragment/ManageFragment;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$d$a;->a:Lcom/miui/appmanager/fragment/ManageFragment$d;

    iget-object v0, v0, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->D0(Lcom/miui/appmanager/fragment/ManageFragment;)Le3/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onItemSelected(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$d$a;->a:Lcom/miui/appmanager/fragment/ManageFragment$d;

    iget-object p1, p1, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->U0(Lcom/miui/appmanager/fragment/ManageFragment;)I

    move-result p1

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$d$a;->a:Lcom/miui/appmanager/fragment/ManageFragment$d;

    iget-object p1, p1, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1, p2}, Lcom/miui/appmanager/fragment/ManageFragment;->V0(Lcom/miui/appmanager/fragment/ManageFragment;I)I

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$d$a;->a:Lcom/miui/appmanager/fragment/ManageFragment$d;

    iget-object p1, p1, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->D0(Lcom/miui/appmanager/fragment/ManageFragment;)Le3/a;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/appmanager/fragment/ManageFragment$d$a;->a:Lcom/miui/appmanager/fragment/ManageFragment$d;

    iget-object p2, p2, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p2}, Lcom/miui/appmanager/fragment/ManageFragment;->U0(Lcom/miui/appmanager/fragment/ManageFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Le3/a;->s(I)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$d$a;->a:Lcom/miui/appmanager/fragment/ManageFragment$d;

    iget-object p1, p1, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/appmanager/fragment/ManageFragment;->x0(Lcom/miui/appmanager/fragment/ManageFragment;Z)Z

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$d$a;->a:Lcom/miui/appmanager/fragment/ManageFragment$d;

    iget-object p1, p1, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->A0(Lcom/miui/appmanager/fragment/ManageFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf3/a;->j(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
