.class public Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/antispam/ui/view/RecyclerViewExt$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;


# direct methods
.method public constructor <init>(Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/ActionMode;Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    iget-object v0, v0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result v0

    check-cast p1, Lmiuix/view/g;

    if-eqz p2, :cond_0

    invoke-static {v0}, Lx4/r0;->b(Z)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lx4/r0;->c(Z)I

    move-result p2

    :goto_0
    const v0, 0x102001a

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lmiuix/view/g;->setButton(ILjava/lang/CharSequence;I)V

    return-void
.end method


# virtual methods
.method public H(Landroid/view/ActionMode;IZ)V
    .locals 0

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    iget-object p3, p2, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    iget-object p2, p2, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-virtual {p3, p2, p1}, Ll2/b;->w(Landroid/content/Context;Landroid/view/ActionMode;)V

    sget-boolean p2, Lm2/f;->b:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    iget-object p2, p2, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    invoke-virtual {p2}, Ll2/b;->q()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;->a(Landroid/view/ActionMode;Z)V

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const/4 v0, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->o0(Landroid/view/ActionMode;Z)V

    goto :goto_0

    :sswitch_1
    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    iget-object p2, p2, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    invoke-virtual {p2}, Ll2/b;->q()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ll2/b;->s(Z)V

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    iget-object v1, p2, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    iget-object p2, p2, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-virtual {v1, p2, p1}, Ll2/b;->w(Landroid/content/Context;Landroid/view/ActionMode;)V

    sget-boolean p2, Lm2/f;->b:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    iget-object p2, p2, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    invoke-virtual {p2}, Ll2/b;->q()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;->a(Landroid/view/ActionMode;Z)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_2
        0x102001a -> :sswitch_1
        0x7f0b035d -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    iget-object v0, v0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    invoke-virtual {v0}, Ll2/b;->l()V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    iget-object v0, v0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    iget-object v0, v0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0f0009

    invoke-virtual {v0, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0b035e

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    invoke-virtual {p2, v1}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->n0(Z)V

    sget-boolean p2, Lm2/f;->b:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    iget-object p2, p2, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-virtual {p2}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result p2

    check-cast p1, Lmiuix/view/g;

    const v1, 0x1020019

    invoke-static {p2}, Lx4/r0;->a(Z)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v2}, Lmiuix/view/g;->setButton(ILjava/lang/CharSequence;I)V

    const v1, 0x102001a

    invoke-static {p2}, Lx4/r0;->c(Z)I

    move-result p2

    invoke-interface {p1, v1, v3, p2}, Lmiuix/view/g;->setButton(ILjava/lang/CharSequence;I)V

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    iget-object p1, p1, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    invoke-virtual {p1}, Ll2/b;->m()V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    iget-object p1, p1, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->f:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab$c;->a:Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;

    invoke-virtual {p1, v0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->n0(Z)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
