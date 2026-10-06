.class public Lcom/miui/gamebooster/windowmanager/newbox/k;
.super Lt8/a;
.source "SourceFile"

# interfaces
.implements Lb6/b;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/windowmanager/newbox/k$c;,
        Lcom/miui/gamebooster/windowmanager/newbox/k$b;
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:Landroid/view/View;

.field f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field h:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field i:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field j:Landroidx/recyclerview/widget/RecyclerView;

.field private k:Landroid/view/View;

.field private l:Lq6/f;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/j;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/miui/gamebooster/windowmanager/newbox/k$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lt8/a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->d:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e01a5

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iput p3, p0, Lt8/a;->b:I

    iput-object p2, p0, Lt8/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/k;->p()V

    return-void
.end method

.method public static synthetic g(Lcom/miui/gamebooster/windowmanager/newbox/k;Landroid/os/IBinder;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/k;->r(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/miui/gamebooster/windowmanager/newbox/k;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/k;->s(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/miui/gamebooster/windowmanager/newbox/k;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/windowmanager/newbox/k;->q(Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic j(Lcom/miui/gamebooster/windowmanager/newbox/k;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/k;->l(I)V

    return-void
.end method

.method private k()V
    .locals 3

    new-instance v0, La8/h;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, La8/h;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/h;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/windowmanager/newbox/h;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/k;)V

    const v2, 0x7f0e0137

    invoke-virtual {v0, v2, p0, v1}, La8/h;->c(ILandroid/view/ViewGroup;La8/h$f;)V

    return-void
.end method

.method private l(I)V
    .locals 4

    iget-object v0, p0, Lt8/a;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->e:Landroid/view/View;

    const v1, 0x7f0b032e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, La8/l0;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b0c7f

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lt8/a;->a:Ljava/lang/String;

    iget v2, p0, Lt8/a;->b:I

    const-string v3, "settings_hdr"

    invoke-static {v0, v1, v2, v3, p1}, La8/j0;->s(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v0, Lcom/miui/gamebooster/windowmanager/newbox/j;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/windowmanager/newbox/j;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/k;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, La8/i0;->c(Landroid/content/Context;)La8/i0;

    move-result-object v1

    invoke-virtual {v1, v0}, La8/i0;->a(Lo4/a$a;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->n:Lcom/miui/gamebooster/windowmanager/newbox/k$b;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->n(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->n:Lcom/miui/gamebooster/windowmanager/newbox/k$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method private m()V
    .locals 3

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->q()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->m:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->j:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/k$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/windowmanager/newbox/k$a;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/k;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v0, Lq6/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lq6/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->l:Lq6/f;

    new-instance v1, La6/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, La6/c;-><init>(Lb6/b;Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime$a;)V

    invoke-virtual {v0, v1}, Lq6/f;->o(Lq6/b;)Lq6/f;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->l:Lq6/f;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lq6/f;->F(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->l:Lq6/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->B()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v1, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/windowmanager/newbox/k;->u(Z)V

    return-void
.end method

.method private n()V
    .locals 7

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->a()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;

    move-result-object v0

    const v1, 0x7f0b05b3

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const v1, 0x7f0b09cd

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->j:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0b05b9

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->h:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v1, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    const v1, 0x7f0b05b8

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->i:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const v1, 0x7f0b043c

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->i:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v1, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->T()Z

    move-result v1

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->S()Z

    move-result v2

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->Q()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initDisplayEnhanceView: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GameDisplayEnhanceView"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    if-nez v1, :cond_3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->h:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->i:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/k;->m()V

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->h:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->h:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->i:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->k:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->h:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->c()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->d(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;Z)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->i:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->b()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->d(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;Z)V

    :goto_3
    return-void
.end method

.method private o()V
    .locals 3

    const v0, 0x7f0b05b6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-static {}, La8/g0;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lt8/a;->a:Ljava/lang/String;

    iget v2, p0, Lt8/a;->b:I

    invoke-static {v0, v1, v2}, La8/l0;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const v1, 0x7f0b0c7f

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, La8/l0;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->n:Lcom/miui/gamebooster/windowmanager/newbox/k$b;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->n(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private p()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/k;->n()V

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/k;->k()V

    return-void
.end method

.method private synthetic q(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->e:Landroid/view/View;

    const p2, 0x7f0b032f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, La8/r;->b()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, La8/r;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->d:Landroid/content/Context;

    invoke-static {v2, v1}, La8/l0;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/miui/gamebooster/windowmanager/newbox/k$b;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->d:Landroid/content/Context;

    invoke-direct {v0, p2, p3, v1}, Lcom/miui/gamebooster/windowmanager/newbox/k$b;-><init>(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->n:Lcom/miui/gamebooster/windowmanager/newbox/k$b;

    const p2, 0x7f0b0968

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->d:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->n:Lcom/miui/gamebooster/windowmanager/newbox/k$b;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->n:Lcom/miui/gamebooster/windowmanager/newbox/k$b;

    new-instance p2, Lcom/miui/gamebooster/windowmanager/newbox/i;

    invoke-direct {p2, p0}, Lcom/miui/gamebooster/windowmanager/newbox/i;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/k;)V

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/k$b;->o(Lcom/miui/gamebooster/windowmanager/newbox/k$b$a;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/k;->o()V

    return-void
.end method

.method private synthetic r(Landroid/os/IBinder;)Z
    .locals 3

    invoke-static {p1}, Lcom/miui/gamebooster/service/IGameBooster$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gameBooster :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GameDisplayEnhanceView"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :try_start_0
    invoke-interface {p1, v0}, Lcom/miui/gamebooster/service/IGameBooster;->F0(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, La8/i0;->c(Landroid/content/Context;)La8/i0;

    move-result-object p1

    invoke-virtual {p1}, La8/i0;->d()V

    return v1
.end method

.method private synthetic s(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->getTouchUpEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr v2, v0

    const/4 v0, 0x0

    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v2, v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-le v1, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_2
    neg-float v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    neg-int v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private t()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lt8/a;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->e:Landroid/view/View;

    const v1, 0x7f0b032e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/g;

    invoke-direct {v1, p0, v0}, Lcom/miui/gamebooster/windowmanager/newbox/g;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/k;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private u(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSwitchView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameDisplayEnhanceView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->m:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->l:Lq6/f;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6/h;

    invoke-virtual {v1, p1}, Lc6/h;->h(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->l:Lq6/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public e(Lc6/a;Landroid/view/View;I)V
    .locals 3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "GameDisplayEnhanceView"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->m:Ljava/util/List;

    if-eqz p2, :cond_3

    iget-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->l:Lq6/f;

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x1

    move v0, p3

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6/h;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p3}, Lc6/h;->j(Z)V

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object v0

    invoke-virtual {v1}, Lc6/h;->c()Lc6/h$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->y(Lc6/h$a;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc6/h;->j(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->l:Lq6/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    const/4 p1, -0x1

    if-eq v0, p1, :cond_3

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g0(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getTitle()I
    .locals 1

    const v0, 0x7f120931

    return v0
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 4

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->a()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->b()Z

    move-result v0

    invoke-virtual {p2}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->c()Z

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->h:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object p1

    invoke-virtual {p1, v0, v2, v1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->k0(ZZI)V

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->i:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object p1

    invoke-virtual {p1, v2, p2, v1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->k0(ZZI)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->B()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->f0(Z)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/k;->u(Z)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b05b3 -> :sswitch_2
        0x7f0b05b8 -> :sswitch_1
        0x7f0b05b9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b032f

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b05b6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/k;->t()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lt8/a;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method
