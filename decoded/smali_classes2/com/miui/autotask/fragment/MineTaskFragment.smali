.class public Lcom/miui/autotask/fragment/MineTaskFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lmiuix/recyclerview/widget/RecyclerView;

.field private b:Lr3/f;

.field private c:Lt3/d;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/r;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/miui/optimizecenter/storage/view/EmptyView;

.field private f:Landroid/view/View;

.field private g:I

.field private h:I

.field private i:Landroid/view/ActionMode;

.field private j:Z

.field private k:Lr3/f$a;

.field private l:Landroid/view/ActionMode$Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->g:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->h:I

    iput-boolean v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->j:Z

    new-instance v0, Lcom/miui/autotask/fragment/MineTaskFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/autotask/fragment/MineTaskFragment$b;-><init>(Lcom/miui/autotask/fragment/MineTaskFragment;)V

    iput-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->k:Lr3/f$a;

    new-instance v0, Lcom/miui/autotask/fragment/MineTaskFragment$c;

    invoke-direct {v0, p0}, Lcom/miui/autotask/fragment/MineTaskFragment$c;-><init>(Lcom/miui/autotask/fragment/MineTaskFragment;)V

    iput-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->l:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method private synthetic A0(Landroid/view/ActionMode;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/fragment/MineTaskFragment;->v0()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return-void
.end method

.method private B0()V
    .locals 2

    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object v0

    new-instance v1, Lcom/miui/autotask/fragment/MineTaskFragment$a;

    invoke-direct {v1, p0}, Lcom/miui/autotask/fragment/MineTaskFragment$a;-><init>(Lcom/miui/autotask/fragment/MineTaskFragment;)V

    invoke-virtual {v0, v1}, Lu3/c;->e0(Lvf/b;)V

    return-void
.end method

.method private C0(Lcom/miui/autotask/bean/r;)V
    .locals 3

    invoke-virtual {p1}, Lcom/miui/autotask/bean/r;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lu3/c;->h0(Ljava/lang/String;)V

    invoke-static {v0}, Ly3/a;->o(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/autotask/bean/r;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/autotask/taskitem/TaskItem;

    instance-of v2, v1, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;

    if-eqz v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu3/c;->h0(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private D0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "show_short_cut_dialog_after_add_task"

    invoke-static {v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e00a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120365

    new-instance v2, Lv3/w1;

    invoke-direct {v2}, Lv3/w1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120236

    new-instance v2, Lv3/x1;

    invoke-direct {v2, p0}, Lv3/x1;-><init>(Lcom/miui/autotask/fragment/MineTaskFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private E0(Landroid/view/ActionMode;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120301

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1206a1

    new-instance v2, Lv3/u1;

    invoke-direct {v2, p0, p1}, Lv3/u1;-><init>(Lcom/miui/autotask/fragment/MineTaskFragment;Landroid/view/ActionMode;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static synthetic b0(Lcom/miui/autotask/fragment/MineTaskFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/MineTaskFragment;->z0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/autotask/fragment/MineTaskFragment;Landroid/view/ActionMode;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/autotask/fragment/MineTaskFragment;->A0(Landroid/view/ActionMode;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->y0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/autotask/fragment/MineTaskFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->x0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f0(Lcom/miui/autotask/fragment/MineTaskFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/autotask/fragment/MineTaskFragment;)Lcom/miui/optimizecenter/storage/view/EmptyView;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->e:Lcom/miui/optimizecenter/storage/view/EmptyView;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/autotask/fragment/MineTaskFragment;Landroid/view/ActionMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->E0(Landroid/view/ActionMode;)V

    return-void
.end method

.method static synthetic i0(Lcom/miui/autotask/fragment/MineTaskFragment;)Lr3/f;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->b:Lr3/f;

    return-object p0
.end method

.method static synthetic j0(Lcom/miui/autotask/fragment/MineTaskFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->g:I

    return p0
.end method

.method static synthetic k0(Lcom/miui/autotask/fragment/MineTaskFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->g:I

    return p1
.end method

.method static synthetic l0(Lcom/miui/autotask/fragment/MineTaskFragment;I)I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->g:I

    return v0
.end method

.method static synthetic m0(Lcom/miui/autotask/fragment/MineTaskFragment;I)I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->g:I

    return v0
.end method

.method static synthetic n0(Lcom/miui/autotask/fragment/MineTaskFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/fragment/MineTaskFragment;->t0()V

    return-void
.end method

.method static synthetic o0(Lcom/miui/autotask/fragment/MineTaskFragment;)Lmiuix/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic p0(Lcom/miui/autotask/fragment/MineTaskFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->h:I

    return p1
.end method

.method static synthetic q0(Lcom/miui/autotask/fragment/MineTaskFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic r0(Lcom/miui/autotask/fragment/MineTaskFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->i:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic s0(Lcom/miui/autotask/fragment/MineTaskFragment;)Landroid/view/ActionMode$Callback;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->l:Landroid/view/ActionMode$Callback;

    return-object p0
.end method

.method private t0()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/activity/TaskManagerActivity;

    invoke-virtual {v0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->i:Landroid/view/ActionMode;

    check-cast v1, Lmiuix/view/g;

    const v2, 0x102001a

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->g:I

    iget-object v5, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-static {v0}, Lx4/r0;->b(Z)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lx4/r0;->c(Z)I

    move-result v0

    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lmiuix/view/g;->setButton(ILjava/lang/CharSequence;I)V

    iget v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->g:I

    const v1, 0x7f0b035d

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const v0, 0x7f12034a

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->i:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f100076

    iget v4, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->g:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0, v3, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->i:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    iget-object v1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->i:Landroid/view/ActionMode;

    invoke-virtual {v1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private u0()V
    .locals 2

    invoke-static {}, Lef/x;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/shortcut/d$b;->n:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {v0, v1}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/common/i;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/common/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lef/x;->m0(Z)V

    invoke-direct {p0}, Lcom/miui/autotask/fragment/MineTaskFragment;->D0()V

    :cond_1
    return-void
.end method

.method private v0()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/autotask/bean/r;

    invoke-virtual {v2}, Lcom/miui/autotask/bean/r;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/miui/autotask/bean/r;->s()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/miui/autotask/fragment/MineTaskFragment;->C0(Lcom/miui/autotask/bean/r;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/ai/service/OperationListCollectService;->z(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lu3/c;->M(Ljava/util/List;)V

    invoke-static {}, Lt3/a;->b()Lt3/a;

    move-result-object v0

    const-string v1, "userDelete"

    invoke-virtual {v0, v1}, Lt3/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->b:Lr3/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->e:Lcom/miui/optimizecenter/storage/view/EmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private w0(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0b02f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b0379

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizecenter/storage/view/EmptyView;

    iput-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->e:Lcom/miui/optimizecenter/storage/view/EmptyView;

    const v0, 0x7f0b0088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->f:Landroid/view/View;

    new-instance p1, Lr3/f;

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->k:Lr3/f$a;

    invoke-direct {p1, v0, v1}, Lr3/f;-><init>(Ljava/util/List;Lr3/f$a;)V

    iput-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->b:Lr3/f;

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    new-instance p1, Lt3/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {p1, v0, v1}, Lt3/d;-><init>(Landroid/content/Context;[I)V

    iput-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->c:Lt3/d;

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->e:Lcom/miui/optimizecenter/storage/view/EmptyView;

    const v0, 0x7f060dbb

    const v1, 0x7f120082

    invoke-virtual {p1, v0, v1}, Lcom/miui/optimizecenter/storage/view/EmptyView;->a(II)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->f:Landroid/view/View;

    new-instance v0, Lv3/v1;

    invoke-direct {v0, p0}, Lv3/v1;-><init>(Lcom/miui/autotask/fragment/MineTaskFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic x0(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/miui/autotask/activity/NewTaskActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x3f8

    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-static {}, Lhd/a;->Q()V

    return-void
.end method

.method private static synthetic y0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "short_cut_dialog_after_add_task_click_cancel"

    invoke-static {p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic z0(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p2, "short_cut_add_task_dialog"

    invoke-static {p2}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->n:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p2, v0}, Lcom/miui/securityscan/shortcut/d;->c(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xd3

    const-string v0, "taskBean"

    if-eq p1, p2, :cond_2

    const/16 p2, 0x3f7

    if-eq p1, p2, :cond_0

    const/16 p2, 0x3f8

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of p2, p1, Lcom/miui/autotask/bean/r;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->d:Ljava/util/List;

    check-cast p1, Lcom/miui/autotask/bean/r;

    const/4 p3, 0x0

    invoke-interface {p2, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->b:Lr3/f;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemInserted(I)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    const p2, 0x7f1202e9

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/miui/autotask/fragment/MineTaskFragment;->u0()V

    :cond_1
    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->e:Lcom/miui/optimizecenter/storage/view/EmptyView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of p2, p1, Lcom/miui/autotask/bean/r;

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->h:I

    if-ltz p2, :cond_3

    iget-object p3, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    iget-object p2, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->d:Ljava/util/List;

    iget p3, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->h:I

    invoke-interface {p2, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p2, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->d:Ljava/util/List;

    iget p3, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->h:I

    check-cast p1, Lcom/miui/autotask/bean/r;

    invoke-interface {p2, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->b:Lr3/f;

    iget p2, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->h:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->h:I

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13043e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setExtraHorizontalPaddingEnable(Z)V

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onExtraPaddingChanged(I)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->c:Lt3/d;

    iget-object v1, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, v1}, Lt3/d;->y(ILandroidx/recyclerview/widget/RecyclerView;)I

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0e0178

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->w0(Landroid/view/View;)V

    return-object p1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment;->j:Z

    invoke-static {}, Lhd/a;->M0()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/autotask/fragment/MineTaskFragment;->B0()V

    return-void
.end method
