.class Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->r0(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$b;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public onItemSelected(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;I)V
    .locals 2

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$b;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    iget-object v0, p1, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->v:I

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$b;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    invoke-static {p1, p2}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d0(Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;I)I

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$b;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    invoke-virtual {p1}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->s0()V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$b;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    iget-object v0, p1, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    iget p1, p1, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->v:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ll2/g;->A(Z)V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$b;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    iget-object v0, p1, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->f:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->e0(Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
