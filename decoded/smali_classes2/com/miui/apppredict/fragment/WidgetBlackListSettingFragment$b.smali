.class Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$b;->a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    check-cast p1, Lmiuix/view/l;

    iget-object p2, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$b;->a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;

    invoke-static {p2}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->h0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnchorView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$b;->a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;

    invoke-static {p2}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->i0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnimateView(Landroid/view/View;)V

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$b;->a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;

    invoke-static {p2}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->j0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Landroid/text/TextWatcher;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$b;->a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;

    invoke-static {p1}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->e0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Lcom/miui/optimizecenter/storage/view/EmptyView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$b;->a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;

    invoke-static {p1}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->k0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    check-cast p1, Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$b;->a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;

    invoke-static {v0}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->j0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$b;->a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;

    invoke-virtual {p1}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->exitSearchMode()V

    iget-object p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$b;->a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;

    invoke-static {p1}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->k0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$b;->a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;

    invoke-static {p1}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->f0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Lcom/miui/apppredict/fragment/a;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$b;->a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;

    invoke-static {v1}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->l0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$b;->a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;

    invoke-static {v2}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->e0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Lcom/miui/optimizecenter/storage/view/EmptyView;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/miui/apppredict/fragment/a;->r(Ljava/util/List;Landroid/view/View;Z)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
