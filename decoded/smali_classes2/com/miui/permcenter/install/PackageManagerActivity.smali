.class public Lcom/miui/permcenter/install/PackageManagerActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lwb/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/install/PackageManagerActivity$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/BaseActivity;",
        "Landroidx/loader/app/a$a<",
        "Lxb/f;",
        ">;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Lwb/b;"
    }
.end annotation


# instance fields
.field private a:Lmiuix/recyclerview/widget/RecyclerView;

.field private b:Lcom/miui/permcenter/install/PackageManagerActivity$d;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->e:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/permcenter/install/PackageManagerActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/install/PackageManagerActivity$a;-><init>(Lcom/miui/permcenter/install/PackageManagerActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic d0(Lcom/miui/permcenter/install/PackageManagerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/install/PackageManagerActivity;->h0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e0(Lcom/miui/permcenter/install/PackageManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/install/PackageManagerActivity;->j0()V

    return-void
.end method

.method private f0(Lmiuix/appcompat/app/ActionBar;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12002a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f0803ac

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v1, Lcom/miui/permcenter/install/PackageManagerActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/install/PackageManagerActivity$b;-><init>(Lcom/miui/permcenter/install/PackageManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    return-void
.end method

.method private g0()V
    .locals 4

    const v0, 0x7f0b077c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->c:Landroid/view/View;

    const v0, 0x7f0b0778

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0b025b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lxb/h;

    invoke-direct {v1, p0}, Lxb/h;-><init>(Lcom/miui/permcenter/install/PackageManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b06d4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v2, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v0, Lcom/miui/permcenter/install/PackageManagerActivity$d;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/install/PackageManagerActivity$d;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->b:Lcom/miui/permcenter/install/PackageManagerActivity$d;

    invoke-virtual {v0, p0}, Lwb/a;->k(Lwb/b;)V

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->b:Lcom/miui/permcenter/install/PackageManagerActivity$d;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060b72

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lmiuix/recyclerview/card/f;

    invoke-direct {v0, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->b:Lcom/miui/permcenter/install/PackageManagerActivity$d;

    invoke-virtual {v0, p0}, Lcom/miui/permcenter/install/PackageManagerActivity$d;->n(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private synthetic h0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->c:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private j0()V
    .locals 6

    invoke-static {p0}, Lxb/b;->m(Landroid/content/Context;)Lxb/b;

    move-result-object v0

    invoke-virtual {v0}, Lxb/b;->n()I

    move-result v1

    invoke-virtual {v0}, Lxb/b;->o()Ljava/lang/String;

    move-result-object v2

    if-lez v1, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lxb/b;->g()V

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->c:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    if-le v1, v0, :cond_0

    const v4, 0x7f12155c

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0x7f12155d

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private k0(Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxb/g;

    invoke-virtual {p1}, Lxb/g;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {p0}, Lxb/b;->m(Landroid/content/Context;)Lxb/b;

    move-result-object v0

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Lxb/b;->G(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Lxb/f;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lxb/f;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/install/PackageManagerActivity;->i0(Lq0/c;Lxb/f;)V

    return-void
.end method

.method public finish()V
    .locals 3

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    invoke-static {p0}, Lxb/b;->m(Landroid/content/Context;)Lxb/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lxb/b;->A(Ljava/lang/String;)V

    invoke-static {v2}, Lmb/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i0(Lq0/c;Lxb/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Lxb/f;",
            ">;",
            "Lxb/f;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->b:Lcom/miui/permcenter/install/PackageManagerActivity$d;

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Lcom/miui/permcenter/install/PackageManagerActivity$d;->o(Lxb/f;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/install/PackageManagerActivity;->k0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const v0, 0x7f0e0424

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-static {}, Lcom/miui/permcenter/n;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lxb/b;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/permcenter/install/PackageManagerActivity;->f0(Lmiuix/appcompat/app/ActionBar;)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/permcenter/install/PackageManagerActivity;->g0()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    if-eqz p1, :cond_2

    const-string v0, "packages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iput-object p1, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->e:Ljava/util/ArrayList;

    :cond_2
    invoke-direct {p0}, Lcom/miui/permcenter/install/PackageManagerActivity;->j0()V

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.miui.permcenter.install.action_data_change"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Lr0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Lxb/f;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/miui/permcenter/install/PackageManagerActivity$c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/miui/permcenter/install/PackageManagerActivity$c;-><init>(Lcom/miui/permcenter/install/PackageManagerActivity;Landroid/content/Context;)V

    return-object p1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lr0/a;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onExtraPaddingChanged(I)V

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    instance-of v1, v0, Lmiuix/recyclerview/card/f;

    if-eqz v1, :cond_0

    int-to-float p1, p1

    sget v1, Ltm/e;->d:I

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    check-cast v0, Lmiuix/recyclerview/card/f;

    invoke-virtual {v0, p1}, Lmiuix/recyclerview/card/f;->v(I)V

    invoke-virtual {v0, p1}, Lmiuix/recyclerview/card/f;->u(I)V

    iget-object p1, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->e:Ljava/util/ArrayList;

    const-string v1, "packages"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public setHorizontalPadding(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setViewHorizontalPadding(Landroid/view/View;)V

    :cond_0
    return-void
.end method
