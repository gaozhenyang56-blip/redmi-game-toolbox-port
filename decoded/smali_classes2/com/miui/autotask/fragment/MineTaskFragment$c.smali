.class Lcom/miui/autotask/fragment/MineTaskFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autotask/fragment/MineTaskFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/autotask/fragment/MineTaskFragment;


# direct methods
.method constructor <init>(Lcom/miui/autotask/fragment/MineTaskFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/autotask/fragment/MineTaskFragment$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/fragment/MineTaskFragment$c;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {v0}, Lcom/miui/autotask/fragment/MineTaskFragment;->q0(Lcom/miui/autotask/fragment/MineTaskFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-virtual {v0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-virtual {v0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setViewPagerDraggable(Z)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const/4 v0, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    iget-object p2, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p2, p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->h0(Lcom/miui/autotask/fragment/MineTaskFragment;Landroid/view/ActionMode;)V

    goto :goto_2

    :sswitch_1
    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->j0(Lcom/miui/autotask/fragment/MineTaskFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p2}, Lcom/miui/autotask/fragment/MineTaskFragment;->f0(Lcom/miui/autotask/fragment/MineTaskFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->f0(Lcom/miui/autotask/fragment/MineTaskFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/autotask/fragment/MineTaskFragment;->k0(Lcom/miui/autotask/fragment/MineTaskFragment;I)I

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->f0(Lcom/miui/autotask/fragment/MineTaskFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/autotask/bean/r;

    invoke-virtual {p2, v0}, Lcom/miui/autotask/bean/r;->E(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/autotask/fragment/MineTaskFragment;->k0(Lcom/miui/autotask/fragment/MineTaskFragment;I)I

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->f0(Lcom/miui/autotask/fragment/MineTaskFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/autotask/bean/r;

    invoke-virtual {v1, p2}, Lcom/miui/autotask/bean/r;->E(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->n0(Lcom/miui/autotask/fragment/MineTaskFragment;)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->i0(Lcom/miui/autotask/fragment/MineTaskFragment;)Lr3/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    goto :goto_2

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_2
        0x102001a -> :sswitch_1
        0x7f0b035d -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-virtual {v0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setViewPagerDraggable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000a

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p2, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/miui/autotask/activity/TaskManagerActivity;

    invoke-virtual {p2}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result p2

    check-cast p1, Lmiuix/view/g;

    const v0, 0x1020019

    invoke-static {p2}, Lx4/r0;->a(Z)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lmiuix/view/g;->setButton(ILjava/lang/CharSequence;I)V

    const v0, 0x102001a

    invoke-static {p2}, Lx4/r0;->c(Z)I

    move-result p2

    invoke-interface {p1, v0, v2, p2}, Lmiuix/view/g;->setButton(ILjava/lang/CharSequence;I)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lx4/y1;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, 0x8000000

    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->i0(Lcom/miui/autotask/fragment/MineTaskFragment;)Lr3/f;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr3/f;->r(Z)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1, v0}, Lcom/miui/autotask/fragment/MineTaskFragment;->k0(Lcom/miui/autotask/fragment/MineTaskFragment;I)I

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->f0(Lcom/miui/autotask/fragment/MineTaskFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/autotask/bean/r;

    invoke-virtual {v1, v0}, Lcom/miui/autotask/bean/r;->E(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->i0(Lcom/miui/autotask/fragment/MineTaskFragment;)Lr3/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->q0(Lcom/miui/autotask/fragment/MineTaskFragment;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/miui/autotask/fragment/a;

    invoke-direct {v0, p0}, Lcom/miui/autotask/fragment/a;-><init>(Lcom/miui/autotask/fragment/MineTaskFragment$c;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lx4/y1;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$c;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
