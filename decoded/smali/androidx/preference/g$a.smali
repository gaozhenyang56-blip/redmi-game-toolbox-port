.class Landroidx/preference/g$a;
.super Landroidx/core/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/preference/g;


# direct methods
.method constructor <init>(Landroidx/preference/g;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/g$a;->a:Landroidx/preference/g;

    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lc0/k;)V
    .locals 2

    iget-object v0, p0, Landroidx/preference/g$a;->a:Landroidx/preference/g;

    iget-object v0, v0, Landroidx/preference/g;->b:Landroidx/core/view/a;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lc0/k;)V

    iget-object v0, p0, Landroidx/preference/g$a;->a:Landroidx/preference/g;

    iget-object v0, v0, Landroidx/preference/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Landroidx/preference/g$a;->a:Landroidx/preference/g;

    iget-object v0, v0, Landroidx/preference/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    instance-of v1, v0, Landroidx/preference/c;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroidx/preference/c;

    invoke-virtual {v0, p1}, Landroidx/preference/c;->n(I)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->onInitializeAccessibilityNodeInfo(Lc0/k;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroidx/preference/g$a;->a:Landroidx/preference/g;

    iget-object v0, v0, Landroidx/preference/g;->b:Landroidx/core/view/a;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
