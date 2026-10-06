.class public abstract Lcom/miui/autotask/activity/BaseSelectActivity;
.super Lcom/miui/powercenter/autotask/BaseSettingActivity;
.source "SourceFile"


# instance fields
.field protected d:Lr3/z;

.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/n;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Lmiuix/recyclerview/widget/RecyclerView;

.field protected g:I

.field protected h:Lcom/miui/autotask/activity/BaseSelectActivity;

.field protected i:Z

.field private final j:Lr3/z$d;

.field private k:Lr3/z$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/BaseSettingActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->i:Z

    new-instance v0, Lcom/miui/autotask/activity/i;

    invoke-direct {v0, p0}, Lcom/miui/autotask/activity/i;-><init>(Lcom/miui/autotask/activity/BaseSelectActivity;)V

    iput-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->j:Lr3/z$d;

    new-instance v0, Lcom/miui/autotask/activity/BaseSelectActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/autotask/activity/BaseSelectActivity$a;-><init>(Lcom/miui/autotask/activity/BaseSelectActivity;)V

    iput-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->k:Lr3/z$c;

    return-void
.end method

.method public static synthetic i0(Lcom/miui/autotask/activity/BaseSelectActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/activity/BaseSelectActivity;->r0(IZ)V

    return-void
.end method

.method public static synthetic j0(Lcom/miui/autotask/activity/BaseSelectActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/BaseSelectActivity;->s0(I)V

    return-void
.end method

.method public static synthetic k0(Lcom/miui/autotask/activity/BaseSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/BaseSelectActivity;->q0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic l0(Lcom/miui/autotask/activity/BaseSelectActivity;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/activity/BaseSelectActivity;->y0(ZI)V

    return-void
.end method

.method private synthetic q0(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->b:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/autotask/activity/BaseSelectActivity;->w0()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic r0(IZ)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/miui/autotask/activity/BaseSelectActivity;->x0(Z)V

    return-void
.end method

.method private synthetic s0(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->d:Lr3/z;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method private u0()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/autotask/bean/q;

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private y0(ZI)V
    .locals 4

    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/bean/n;

    invoke-virtual {v0, p1}, Lcom/miui/autotask/bean/n;->e(Z)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->g:I

    if-eq p1, v1, :cond_0

    iget-object v2, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/autotask/bean/n;

    invoke-virtual {v2, v0}, Lcom/miui/autotask/bean/n;->e(Z)V

    iget-object v2, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->f:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/miui/autotask/activity/k;

    invoke-direct {v3, p0, p1}, Lcom/miui/autotask/activity/k;-><init>(Lcom/miui/autotask/activity/BaseSelectActivity;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput p2, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->g:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->g:I

    :goto_0
    iget-object p1, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    iget p2, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->g:I

    if-eq p2, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected d0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/miui/autotask/activity/j;

    invoke-direct {v0, p0}, Lcom/miui/autotask/activity/j;-><init>(Lcom/miui/autotask/activity/BaseSelectActivity;)V

    return-object v0
.end method

.method protected f0()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected init()V
    .locals 4

    iput-object p0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->h:Lcom/miui/autotask/activity/BaseSelectActivity;

    invoke-virtual {p0}, Lcom/miui/autotask/activity/BaseSelectActivity;->n0()Lr3/z;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->d:Lr3/z;

    iget-object v1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->k:Lr3/z$c;

    invoke-virtual {v0, v1}, Lr3/z;->u(Lr3/z$c;)V

    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->d:Lr3/z;

    iget-object v1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->j:Lr3/z$d;

    invoke-virtual {v0, v1}, Lr3/z;->v(Lr3/z$d;)V

    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->f:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->d:Lr3/z;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->f:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v1, Lt3/d;

    const/4 v2, 0x0

    new-array v3, v2, [I

    invoke-direct {v1, p0, v3}, Lt3/d;-><init>(Landroid/content/Context;[I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method protected m0()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/autotask/activity/BaseSelectActivity;->z0(Z)V

    return-void
.end method

.method protected abstract n0()Lr3/z;
.end method

.method protected o0()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->g:I

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/miui/autotask/activity/BaseSelectActivity;->u0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/bean/q;

    invoke-virtual {v0, v1}, Lcom/miui/autotask/bean/q;->i(Z)V

    invoke-virtual {v0, v1}, Lcom/miui/autotask/bean/q;->j(Z)V

    iget-object v2, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->i:Z

    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->d:Lr3/z;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/BaseSettingActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0044

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const p1, 0x7f0b00e9

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->f:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/miui/autotask/activity/BaseSelectActivity;->init()V

    invoke-virtual {p0}, Lcom/miui/autotask/activity/BaseSelectActivity;->t0()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/BaseSettingActivity;->e0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/BaseSettingActivity;->e0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected p0()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/autotask/activity/BaseSelectActivity;->u0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/bean/q;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/autotask/bean/q;->i(Z)V

    invoke-virtual {v0, v1}, Lcom/miui/autotask/bean/q;->j(Z)V

    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->d:Lr3/z;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method protected abstract t0()V
.end method

.method protected v0()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/autotask/activity/BaseSelectActivity;->z0(Z)V

    return-void
.end method

.method protected abstract w0()V
.end method

.method protected abstract x0(Z)V
.end method

.method protected z0(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/autotask/activity/BaseSelectActivity;->u0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/bean/q;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/autotask/bean/q;->j(Z)V

    invoke-virtual {v0, p1}, Lcom/miui/autotask/bean/q;->i(Z)V

    iget-object p1, p0, Lcom/miui/autotask/activity/BaseSelectActivity;->d:Lr3/z;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method
