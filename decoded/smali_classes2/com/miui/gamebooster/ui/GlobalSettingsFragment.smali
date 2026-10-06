.class public Lcom/miui/gamebooster/ui/GlobalSettingsFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;
.implements Landroid/view/View$OnClickListener;
.implements Ll8/e;
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/GlobalSettingsFragment$c;,
        Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/ui/BaseFragment;",
        "Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;",
        "Landroid/view/View$OnClickListener;",
        "Ll8/e;",
        "Landroidx/loader/app/a$a<",
        "Ljava/util/List<",
        "Lu7/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private h:Lcom/miui/gamebooster/widget/ValueSettingItemView;

.field private i:Lcom/miui/gamebooster/widget/ValueSettingItemView;

.field private j:Lcom/miui/gamebooster/widget/ValueSettingItemView;

.field private k:Lcom/miui/gamebooster/ui/GlobalSettingsFragment$c;

.field private l:Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;

.field private m:Ly7/k;

.field private n:Ll8/f;

.field private o:Li7/i$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->m0(Z)V

    return-void
.end method

.method static synthetic c0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->t0(Z)V

    return-void
.end method

.method static synthetic d0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->p0(Z)V

    return-void
.end method

.method static synthetic e0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->a:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    return-object p0
.end method

.method static synthetic j0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    return-object p0
.end method

.method private synthetic m0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->j:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/widget/ValueSettingItemView;->setDotVisible(Z)V

    return-void
.end method

.method private n0()V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;-><init>(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->l:Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private p0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setEnabled(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "storage"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const/16 v1, 0xcfd

    invoke-virtual {p1, v1}, Landroidx/loader/app/a;->d(I)Lq0/c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/loader/app/a;->a(I)V

    :cond_0
    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    invoke-virtual {p1, v1, v0, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    return-void
.end method

.method private r0(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lv7/c;->a()Lv7/c;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$a;-><init>(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)V

    invoke-virtual {p1, v0, v1}, Lv7/c;->c(Landroid/content/Context;Lv7/c$e;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->t0(Z)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->p0(Z)V

    :goto_0
    return-void
.end method

.method private s0(Z)V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->k:Lcom/miui/gamebooster/ui/GlobalSettingsFragment$c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment$c;->Z(Z)V

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v5, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    aput-object v5, v1, v2

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v5, v1, v2

    if-eqz v5, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v4, v3, v3}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    :cond_3
    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_4

    invoke-static {p1}, La8/c;->a(Landroid/content/Context;)V

    :cond_4
    const-string p1, "game_IsAntiMsg"

    invoke-static {p1, v3}, Lr4/a;->n(Ljava/lang/String;Z)V

    :cond_5
    return-void
.end method

.method private t0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    invoke-static {p1}, Lm6/a;->B0(Z)V

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lu7/a;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public S(Ll8/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->n:Ll8/f;

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->o0(Lq0/c;Ljava/util/List;)V

    return-void
.end method

.method protected initView()V
    .locals 5

    const v0, 0x7f0b048c

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->a:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    const v0, 0x7f0b0475

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    const v0, 0x7f0b0aaa

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    const v0, 0x7f0b0a5b

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    invoke-static {}, La8/h0;->d()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/common/i;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/common/i;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0b02a0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    invoke-static {}, La8/g0;->O()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v0, 0x7f0b0a5e

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object v0

    invoke-virtual {v0}, Lp7/a;->f()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object v3

    invoke-virtual {v3}, Lp7/d;->d()Z

    move-result v3

    invoke-virtual {v0, v3, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object v4

    invoke-virtual {v4}, Lp7/d;->d()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lp7/a;->h(Landroid/content/Context;Z)V

    :goto_0
    const v0, 0x7f0b045a

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {}, Lx4/z1;->y()I

    move-result v4

    invoke-static {v3, v4}, La8/g0;->F(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b045b

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/ValueSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->h:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/ValueSettingItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0474

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/ValueSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->i:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/ValueSettingItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b08e8

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/ValueSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->j:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/ValueSettingItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Li7/i;->t(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->j:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-static {}, La8/g0;->U()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v0

    invoke-virtual {v0}, Lm6/a;->x()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->s0(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v1, v3}, La8/v1;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Li7/i;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/miui/gamebooster/ui/SettingsActivity;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/miui/gamebooster/ui/SettingsActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/SettingsActivity;->r0()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    move v0, v2

    :goto_3
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->j:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->onClick(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/miui/gamebooster/ui/SettingsActivity;

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/ui/SettingsActivity;->s0(Z)V

    :cond_8
    new-instance v0, Ly7/e;

    invoke-direct {v0, p0}, Ly7/e;-><init>(Lcom/miui/gamebooster/ui/GlobalSettingsFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->o:Li7/i$f;

    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->o:Li7/i$f;

    invoke-virtual {v0, v1}, Li7/i;->k(Li7/i$f;)V

    return-void
.end method

.method public o0(Lq0/c;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lu7/a;",
            ">;>;",
            "Ljava/util/List<",
            "Lu7/a;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const/16 p2, 0xcfd

    invoke-virtual {p1, p2}, Landroidx/loader/app/a;->a(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setEnabled(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pre_download"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->n:Ll8/f;

    new-instance v1, Lcom/miui/gamebooster/predownload/PreDownloadFragment;

    invoke-direct {v1}, Lcom/miui/gamebooster/predownload/PreDownloadFragment;-><init>()V

    invoke-interface {v0, v1}, Ll8/f;->C(Lmiuix/appcompat/app/Fragment;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 7

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->a:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->s0(Z)V

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/miui/gamebooster/ui/SettingsActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/gamebooster/ui/SettingsActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/SettingsActivity;->o0()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2, v0, p1}, La8/z0;->b(ZLandroid/app/Activity;Lcom/miui/gamebooster/service/IGameBooster;)V

    invoke-static {p2}, Lcom/miui/gamebooster/utils/a$n;->B(Z)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_2

    invoke-static {p2}, La8/z0;->c(Z)V

    invoke-static {p2}, Lcom/miui/gamebooster/utils/a$n;->A(Z)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, La8/z0;->d(ZLandroid/app/Activity;)V

    invoke-static {p2}, Lcom/miui/gamebooster/utils/a$n;->z(Z)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const-string v1, "gs_event_click"

    const-string v2, "on"

    const-string v3, "off"

    const-string v4, "pos"

    const-string v5, "speed_set_0"

    const-string v6, "page_name"

    if-ne p1, v0, :cond_5

    invoke-static {p2}, Lm6/a;->w0(Z)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "second_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackGameBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_6

    invoke-direct {p0, p2}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->r0(Z)V

    invoke-static {p2}, Lcom/miui/gamebooster/utils/a$n;->v(Z)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_7

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lp7/d;->n(Z)V

    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lp7/a;->h(Landroid/content/Context;Z)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eighth_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_8

    invoke-static {p2}, La8/o0;->p(Z)V

    invoke-static {p2}, Lcom/miui/gamebooster/utils/a$n;->s(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->h:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->n:Ll8/f;

    if-eqz v0, :cond_0

    new-instance p1, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;

    invoke-direct {p1}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;-><init>()V

    invoke-interface {v0, p1}, Ll8/f;->C(Lmiuix/appcompat/app/Fragment;)V

    invoke-static {}, Lcom/miui/gamebooster/utils/a$n;->C()V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->i:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    invoke-static {}, Lm6/a;->d()I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, La8/g0;->Y()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const-class p1, Lcom/miui/gamebooster/ui/SelectGameLandActivity;

    goto :goto_1

    :cond_2
    const-class p1, Lcom/miui/gamebooster/ui/SelectGameActivity;

    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "page_name"

    const-string v1, "speed_set_0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pos"

    const-string v1, "ninth_0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gs_event_click"

    invoke-static {v0, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackGameBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->j:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->n:Ll8/f;

    new-instance v0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;

    invoke-direct {v0}, Lcom/miui/gamebooster/predownload/PreDownloadFragment;-><init>()V

    invoke-interface {p1, v0}, Ll8/f;->C(Lmiuix/appcompat/app/Fragment;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lu7/a;",
            ">;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string p1, "storage"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Ly7/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ly7/k;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->m:Ly7/k;

    return-object p2
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e01db

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->l:Lcom/miui/gamebooster/ui/GlobalSettingsFragment$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    invoke-static {}, Lv7/c;->a()Lv7/c;

    move-result-object v0

    invoke-virtual {v0}, Lv7/c;->b()V

    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->o:Li7/i$f;

    invoke-virtual {v0, v1}, Li7/i;->A(Li7/i$f;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->j:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object v1

    invoke-virtual {v1}, Li7/i;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/widget/ValueSettingItemView;->setDotVisible(Z)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->n0()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page_name"

    const-string v2, "speed_set_0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gs_event_pv"

    invoke-static {v1, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackGameBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public q0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->k:Lcom/miui/gamebooster/ui/GlobalSettingsFragment$c;

    return-void
.end method
