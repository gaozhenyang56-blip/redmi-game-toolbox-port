.class public Lcom/miui/gamebooster/ui/WonderFullVideoFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lt5/r$c;
.implements Ll8/e;


# instance fields
.field private a:Ll8/f;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/view/View;

.field private e:I

.field private f:Lt5/r;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/f;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/app/Activity;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/animation/ValueAnimator;

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->g:Ljava/util/List;

    new-instance v0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$a;-><init>(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->l:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic b0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->r0(Z)V

    return-void
.end method

.method static synthetic c0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->s0()V

    return-void
.end method

.method static synthetic d0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->h:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->n0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->y0()V

    return-void
.end method

.method static synthetic h0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->c:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->m0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic j0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->u0()V

    return-void
.end method

.method static synthetic k0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->p0()Z

    move-result p0

    return p0
.end method

.method static synthetic l0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->b:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private m0(Landroid/content/Context;)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f:Lt5/r;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f:Lt5/r;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f:Lt5/r;

    invoke-interface {v4, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gamebooster/model/f;

    instance-of v5, v4, Lcom/miui/gamebooster/model/z;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/miui/gamebooster/model/z;

    invoke-virtual {v4}, Lcom/miui/gamebooster/model/z;->i()I

    move-result v5

    if-lez v5, :cond_1

    add-int/lit8 v5, v5, -0x1

    :goto_1
    if-ltz v5, :cond_1

    invoke-virtual {v4}, Lcom/miui/gamebooster/model/z;->j()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gamebooster/model/y;

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/y;->j()Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v6}, La8/q;->c(Lcom/miui/gamebooster/model/y;)V

    invoke-static {p1, v6}, La8/q;->e(Landroid/content/Context;Lcom/miui/gamebooster/model/y;)V

    invoke-virtual {v4}, Lcom/miui/gamebooster/model/z;->j()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-interface {v0, v2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, La8/q;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f:Lt5/r;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f:Lt5/r;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f:Lt5/r;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    :goto_3
    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f:Lt5/r;

    invoke-virtual {p1}, Lt5/r;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->n0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/miui/gamebooster/utils/a;->W(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method private n0()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->e:I

    if-nez v0, :cond_0

    const-string v0, "kpl"

    return-object v0

    :cond_0
    const-string v0, "pubg"

    return-object v0
.end method

.method private o0()Z
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f:Lt5/r;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f:Lt5/r;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f:Lt5/r;

    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/model/f;

    instance-of v3, v2, Lcom/miui/gamebooster/model/z;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/miui/gamebooster/model/z;

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/z;->i()I

    move-result v3

    if-lez v3, :cond_1

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_1

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/z;->j()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gamebooster/model/y;

    invoke-virtual {v4}, Lcom/miui/gamebooster/model/y;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private p0()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f:Lt5/r;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private q0()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "key_download_click"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->h:Landroid/app/Activity;

    invoke-static {v1}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lr0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLocalBroadcastReceiver: failed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WonderFullVideoFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic r0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method private s0()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$b;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$b;-><init>(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private t0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->h:Landroid/app/Activity;

    invoke-static {v0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lr0/a;->e(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseLocalBroadcastReceiver: failed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WonderFullVideoFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private u0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->o0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private v0(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->c:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->k:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->k:Landroid/animation/ValueAnimator;

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f070f86

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object v3, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    if-eq v3, p1, :cond_3

    new-array v1, v1, [I

    iget-object v3, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    aput v3, v1, v2

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->c:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v1, [I

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    aput v1, p1, v2

    aput v2, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->k:Landroid/animation/ValueAnimator;

    :cond_3
    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->k:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->k:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$c;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$c;-><init>(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method

.method private x0(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f130023

    invoke-direct {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120a72

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120499

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$e;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$e;-><init>(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120f48

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$d;

    invoke-direct {v2, p0, p1}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$d;-><init>(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private y0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->h:Landroid/app/Activity;

    instance-of v0, v0, Lcom/miui/common/base/BaseActivity;

    if-eqz v0, :cond_1

    new-instance v0, Lt5/r;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->h:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->g:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lt5/r;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f:Lt5/r;

    invoke-virtual {v0, p0}, Lt5/r;->i(Lt5/r$c;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f:Lt5/r;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f:Lt5/r;

    new-instance v1, Ly7/o;

    invoke-direct {v1, p0}, Ly7/o;-><init>(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)V

    invoke-virtual {v0, v1}, Lt5/r;->g(Lt5/r$b;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public S(Ll8/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->a:Ll8/f;

    return-void
.end method

.method protected initView()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->h:Landroid/app/Activity;

    const v0, 0x7f0b01aa

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01a5

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01a7

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0700

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->d:Landroid/view/View;

    const v0, 0x7f0b06f6

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0b06ce

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->c:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->s0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->q0()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b01aa

    if-ne v1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->x0(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0b01a5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f:Lt5/r;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lt5/r;->h(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f:Lt5/r;

    invoke-virtual {p1}, Lt5/r;->e()V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f:Lt5/r;

    invoke-virtual {p1}, Lt5/r;->notifyDataSetChanged()V

    :cond_1
    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->t(IZ)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0b01a7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_4

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->f:Lt5/r;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lt5/r;->f(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->u0()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e01e4

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->t0()V

    return-void
.end method

.method public t(IZ)V
    .locals 2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->d:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->h:Landroid/app/Activity;

    instance-of v1, v0, Lcom/miui/common/base/BaseActivity;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->h:Landroid/app/Activity;

    const v1, 0x7f010049

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f01004a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->d:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->u0()V

    invoke-direct {p0, p2}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->v0(Z)V

    :cond_1
    return-void
.end method

.method public w0(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->e:I

    return-void
.end method

.method public x(I)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->u0()V

    return-void
.end method
