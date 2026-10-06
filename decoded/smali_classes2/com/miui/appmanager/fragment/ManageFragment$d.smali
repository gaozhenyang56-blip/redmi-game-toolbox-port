.class Lcom/miui/appmanager/fragment/ManageFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/appmanager/fragment/ManageFragment;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/fragment/ManageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->D0(Lcom/miui/appmanager/fragment/ManageFragment;)Le3/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    const v0, 0x7f0b00c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->u0(Lcom/miui/appmanager/fragment/ManageFragment;)Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setAnchorView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->u0(Lcom/miui/appmanager/fragment/ManageFragment;)Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->v0(Lcom/miui/appmanager/fragment/ManageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setItems(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->u0(Lcom/miui/appmanager/fragment/ManageFragment;)Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->U0(Lcom/miui/appmanager/fragment/ManageFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setSelectedItem(I)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->u0(Lcom/miui/appmanager/fragment/ManageFragment;)Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    move-result-object p1

    new-instance v0, Lcom/miui/appmanager/fragment/ManageFragment$d$a;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/fragment/ManageFragment$d$a;-><init>(Lcom/miui/appmanager/fragment/ManageFragment$d;)V

    invoke-virtual {p1, v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setOnMenuListener(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->u0(Lcom/miui/appmanager/fragment/ManageFragment;)Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->show()V

    const-string p1, "item"

    invoke-static {p1}, Lf3/a;->d(Ljava/lang/String;)V

    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$d;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->U0(Lcom/miui/appmanager/fragment/ManageFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lgb/b;->s(I)V

    return-void
.end method
