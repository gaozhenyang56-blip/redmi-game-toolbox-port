.class Lcom/miui/antispam/ui/activity/KeywordListActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/antispam/ui/view/RecyclerViewExt$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/activity/KeywordListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/activity/KeywordListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Lcom/miui/antispam/ui/activity/KeywordListActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/antispam/ui/activity/KeywordListActivity$h;[JLandroid/util/SparseBooleanArray;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->c([JLandroid/util/SparseBooleanArray;)V

    return-void
.end method

.method private b(Landroid/view/ActionMode;Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

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

.method private c([JLandroid/util/SparseBooleanArray;)V
    .locals 1

    new-instance v0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$b;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$b;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity$h;Landroid/util/SparseBooleanArray;[J)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private d(Landroid/view/ActionMode;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->g0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;->y()[J

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->g0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/antispam/ui/view/a;->q()Landroid/util/SparseBooleanArray;

    move-result-object v1

    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-direct {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1206a4

    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$a;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$a;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity$h;[JLandroid/util/SparseBooleanArray;Landroid/view/ActionMode;)V

    const p1, 0x7f1206a1

    invoke-virtual {v2, p1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public H(Landroid/view/ActionMode;IZ)V
    .locals 0

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->g0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-virtual {p2, p3, p1}, Lcom/miui/antispam/ui/view/a;->x(Landroid/content/Context;Landroid/view/ActionMode;)V

    invoke-static {}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->i0()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->g0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/antispam/ui/view/a;->p()I

    move-result p2

    iget-object p3, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {p3}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->g0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;->getItemCount()I

    move-result p3

    if-ne p2, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->b(Landroid/view/ActionMode;Z)V

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
    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->d(Landroid/view/ActionMode;)V

    goto :goto_0

    :sswitch_1
    iget-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->g0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->g0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/antispam/ui/view/a;->r()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p2, v1}, Lcom/miui/antispam/ui/view/a;->t(Z)V

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->g0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-virtual {p2, v1, p1}, Lcom/miui/antispam/ui/view/a;->x(Landroid/content/Context;Landroid/view/ActionMode;)V

    invoke-static {}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->i0()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->g0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/antispam/ui/view/a;->r()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->b(Landroid/view/ActionMode;Z)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :goto_0
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
    .locals 4

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->g0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antispam/ui/view/a;->l()V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0009

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0b035e

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->h0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->i0()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

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

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->g0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/antispam/ui/view/a;->m()V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->h0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
