.class public Lcom/miui/optimizemanage/ResultFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lsf/e$c;
.implements Lsf/h$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizemanage/ResultFragment$j;,
        Lcom/miui/optimizemanage/ResultFragment$k;,
        Lcom/miui/optimizemanage/ResultFragment$o;,
        Lcom/miui/optimizemanage/ResultFragment$m;,
        Lcom/miui/optimizemanage/ResultFragment$n;,
        Lcom/miui/optimizemanage/ResultFragment$l;,
        Lcom/miui/optimizemanage/ResultFragment$i;,
        Lcom/miui/optimizemanage/ResultFragment$h;
    }
.end annotation


# instance fields
.field private A:Landroid/content/ServiceConnection;

.field private a:Lcom/miui/common/customview/AutoPasteListView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lmiuix/appcompat/app/AlertDialog;

.field private h:Lcom/miui/optimizemanage/optimizeresult/j;

.field private i:Landroid/animation/AnimatorSet;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:J

.field private r:Ljava/lang/String;

.field private s:Lcom/miui/optimizecenter/onekeyclean/shortcut/IShortcutCheck;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/optimizemanage/optimizeresult/c;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$c;

.field private v:Lx9/c;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private y:Z

.field private z:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/optimizemanage/ResultFragment;->j:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/ResultFragment;->l:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/ResultFragment;->m:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->t:Ljava/util/List;

    const-string v0, "key_hide_action_bar"

    iput-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->w:Ljava/lang/String;

    const-string v0, "key_save_state"

    iput-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->x:Ljava/lang/String;

    new-instance v0, Lcom/miui/optimizemanage/ResultFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/optimizemanage/ResultFragment$a;-><init>(Lcom/miui/optimizemanage/ResultFragment;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->A:Landroid/content/ServiceConnection;

    return-void
.end method

.method private A0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->s:Lcom/miui/optimizecenter/onekeyclean/shortcut/IShortcutCheck;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/miui/optimizecenter/onekeyclean/shortcut/IShortcutCheck;->createOneCleanShortcut()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ResultFragment"

    const-string v2, "create oneclean shortcut failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private B0()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lx4/t;->g()J

    move-result-wide v0

    invoke-static {}, Lx4/t;->m()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/optimizemanage/ResultFragment;->q:J

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v1, v5}, Lx4/j0;->b(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-wide v4, p0, Lcom/miui/optimizemanage/ResultFragment;->q:J

    const/4 v1, 0x1

    invoke-static {v0, v4, v5, v1}, Lx4/j0;->b(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const v0, 0x7f120f52

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120f8d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private C0()I
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lx4/t;->i(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lx4/t;->h()I

    move-result v1

    const/16 v2, 0x9

    if-le v1, v2, :cond_2

    const/16 v1, 0x780

    if-gt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071671

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071673

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private D0()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->s:Lcom/miui/optimizecenter/onekeyclean/shortcut/IShortcutCheck;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/miui/optimizecenter/onekeyclean/shortcut/IShortcutCheck;->isOneCleanShortcutCreated()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ResultFragment"

    const-string v2, "get oneclean shortcut is created failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic E0(F)V
    .locals 2

    const v0, -0x40666666    # -1.2f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/optimizemanage/ResultFragment;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v0, p0, Lcom/miui/optimizemanage/ResultFragment;->j:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    invoke-static {}, Lgb/a;->n()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/optimizemanage/ResultFragment;->j:Z

    :cond_0
    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->v:Lx9/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lx9/c;->i()V

    :cond_1
    return-void
.end method

.method private synthetic F0(Lcom/miui/international/bean/OptimizeGlobalAdBean;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/optimizemanage/ResultFragment;->t:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lcom/miui/international/bean/OptimizeGlobalAdBean;->addGlobalAd(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->t:Ljava/util/List;

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->h:Lcom/miui/optimizemanage/optimizeresult/j;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->h:Lcom/miui/optimizemanage/optimizeresult/j;

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->t:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->h:Lcom/miui/optimizemanage/optimizeresult/j;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private G0(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->h:Lcom/miui/optimizemanage/optimizeresult/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/optimizemanage/optimizeresult/j;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/optimizemanage/optimizeresult/c;

    instance-of v2, v1, Lcom/miui/optimizemanage/optimizeresult/b;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/miui/optimizemanage/optimizeresult/b;

    invoke-virtual {v1}, Lcom/miui/optimizemanage/optimizeresult/b;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->h:Lcom/miui/optimizemanage/optimizeresult/j;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private K0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->a:Lcom/miui/common/customview/AutoPasteListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->z:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/optimizemanage/ResultFragment;->a:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/optimizemanage/ResultFragment;->a:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method private L0(I)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->a:Lcom/miui/common/customview/AutoPasteListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/optimizemanage/ResultFragment;->a:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    iput p1, v1, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private M0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->e:Landroid/view/View;

    const v1, 0x7f0b0ae3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    new-instance v1, Lcom/miui/optimizemanage/ResultFragment$d;

    invoke-direct {v1, p0}, Lcom/miui/optimizemanage/ResultFragment$d;-><init>(Lcom/miui/optimizemanage/ResultFragment;)V

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->a(Lfl/f;)V

    return-void
.end method

.method private N0()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e03bd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/optimizemanage/ResultFragment$k;

    invoke-direct {v2, p0}, Lcom/miui/optimizemanage/ResultFragment$k;-><init>(Lcom/miui/optimizemanage/ResultFragment;)V

    new-instance v3, Lcom/miui/optimizemanage/ResultFragment$j;

    invoke-direct {v3, v0}, Lcom/miui/optimizemanage/ResultFragment$j;-><init>(Landroid/app/Activity;)V

    new-instance v4, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x104000a

    invoke-virtual {v0, v4, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->g:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->g:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/optimizemanage/ResultFragment;->l:Z

    const-string v0, "module_show"

    const-string v1, "show"

    invoke-static {v0, v1}, Lgb/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private O0()V
    .locals 10

    invoke-direct {p0}, Lcom/miui/optimizemanage/ResultFragment;->C0()I

    move-result v0

    iget-object v1, p0, Lcom/miui/optimizemanage/ResultFragment;->d:Landroid/widget/ImageView;

    const v2, 0x3fd9999a    # 1.7f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/miui/optimizemanage/ResultFragment;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/miui/optimizemanage/ResultFragment;->d:Landroid/widget/ImageView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/miui/optimizemanage/ResultFragment;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, Lcom/miui/optimizemanage/ResultFragment$m;

    invoke-direct {v1, p0}, Lcom/miui/optimizemanage/ResultFragment$m;-><init>(Lcom/miui/optimizemanage/ResultFragment;)V

    invoke-static {v1}, Llb/a;->c(Llb/a$c;)V

    new-instance v1, Lcom/miui/optimizemanage/ResultFragment$o;

    invoke-direct {v1, p0, v0}, Lcom/miui/optimizemanage/ResultFragment$o;-><init>(Lcom/miui/optimizemanage/ResultFragment;I)V

    invoke-static {v1}, Llb/a;->d(Llb/a$d;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->d:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/miui/optimizemanage/ResultFragment$e;

    invoke-direct {v6, p0}, Lcom/miui/optimizemanage/ResultFragment$e;-><init>(Lcom/miui/optimizemanage/ResultFragment;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v6, p0, Lcom/miui/optimizemanage/ResultFragment;->a:Lcom/miui/common/customview/AutoPasteListView;

    new-array v7, v1, [F

    const/4 v8, 0x0

    const v9, 0x44c0e000    # 1543.0f

    aput v9, v7, v8

    iget v8, p0, Lcom/miui/optimizemanage/ResultFragment;->p:I

    int-to-float v8, v8

    const/4 v9, 0x1

    aput v8, v7, v9

    const-string v8, "translationY"

    invoke-static {v6, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v7, 0x258

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v7, Lcom/miui/optimizemanage/view/a;

    invoke-direct {v7}, Lcom/miui/optimizemanage/view/a;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lx4/b;->a(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Llb/b;

    new-instance v8, Lcom/miui/optimizemanage/ResultFragment$f;

    invoke-direct {v8, p0}, Lcom/miui/optimizemanage/ResultFragment$f;-><init>(Lcom/miui/optimizemanage/ResultFragment;)V

    invoke-direct {v7, v8}, Llb/b;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v7, p0, Lcom/miui/optimizemanage/ResultFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, p0, Lcom/miui/optimizemanage/ResultFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/view/View;->setAlpha(F)V

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v2, Lcom/miui/optimizemanage/ResultFragment$g;

    invoke-direct {v2, p0}, Lcom/miui/optimizemanage/ResultFragment$g;-><init>(Lcom/miui/optimizemanage/ResultFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private P0()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07168c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f071691

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/miui/optimizemanage/ResultFragment$l;

    invoke-direct {v6, p0}, Lcom/miui/optimizemanage/ResultFragment$l;-><init>(Lcom/miui/optimizemanage/ResultFragment;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v2, [F

    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/miui/optimizemanage/ResultFragment$n;

    invoke-direct {v4, p0, v1, v0}, Lcom/miui/optimizemanage/ResultFragment$n;-><init>(Lcom/miui/optimizemanage/ResultFragment;II)V

    invoke-virtual {v6, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->i:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->i:Landroid/animation/AnimatorSet;

    new-array v1, v2, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v6, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f28f5c3    # 0.66f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private Q0()V
    .locals 9

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->d:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v5, 0x190

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->d:Landroid/widget/ImageView;

    new-array v7, v2, [F

    fill-array-data v7, :array_1

    const-string v8, "scaleY"

    invoke-static {v0, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->c:Landroid/widget/TextView;

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    const-string v4, "alpha"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v7, 0xc8

    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v3, p0, Lcom/miui/optimizemanage/ResultFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->b:Landroid/widget/TextView;

    new-array v3, v2, [F

    fill-array-data v3, :array_3

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v3, p0, Lcom/miui/optimizemanage/ResultFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->a:Lcom/miui/common/customview/AutoPasteListView;

    new-array v1, v2, [F

    const/4 v2, 0x0

    const v3, 0x44c0e000    # 1543.0f

    aput v3, v1, v2

    iget v2, p0, Lcom/miui/optimizemanage/ResultFragment;->p:I

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const-string v2, "translationY"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/miui/optimizemanage/view/a;

    invoke-direct {v1}, Lcom/miui/optimizemanage/view/a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private R0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/optimizemanage/ResultFragment;->s:Lcom/miui/optimizecenter/onekeyclean/shortcut/IShortcutCheck;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/optimizemanage/ResultFragment;->A:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public static synthetic b0(Lcom/miui/optimizemanage/ResultFragment;Lcom/miui/international/bean/OptimizeGlobalAdBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/ResultFragment;->F0(Lcom/miui/international/bean/OptimizeGlobalAdBean;)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/optimizemanage/ResultFragment;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/ResultFragment;->E0(F)V

    return-void
.end method

.method static synthetic d0(Lcom/miui/optimizemanage/ResultFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/ResultFragment;->t:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/optimizemanage/ResultFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->t:Ljava/util/List;

    return-object p1
.end method

.method static synthetic f0(Lcom/miui/optimizemanage/ResultFragment;)Lcom/miui/optimizemanage/optimizeresult/j;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/ResultFragment;->h:Lcom/miui/optimizemanage/optimizeresult/j;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/optimizemanage/ResultFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/ResultFragment;->r:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/optimizemanage/ResultFragment;)Lx9/c;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/ResultFragment;->v:Lx9/c;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/optimizemanage/ResultFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizemanage/ResultFragment;->P0()V

    return-void
.end method

.method static synthetic j0(Lcom/miui/optimizemanage/ResultFragment;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/ResultFragment;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/optimizemanage/ResultFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/ResultFragment;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/optimizemanage/ResultFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/ResultFragment;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic m0(Lcom/miui/optimizemanage/ResultFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizemanage/ResultFragment;->A0()V

    return-void
.end method

.method static synthetic n0(Lcom/miui/optimizemanage/ResultFragment;)Lcom/miui/optimizecenter/onekeyclean/shortcut/IShortcutCheck;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/ResultFragment;->s:Lcom/miui/optimizecenter/onekeyclean/shortcut/IShortcutCheck;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/optimizemanage/ResultFragment;Lcom/miui/optimizecenter/onekeyclean/shortcut/IShortcutCheck;)Lcom/miui/optimizecenter/onekeyclean/shortcut/IShortcutCheck;
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->s:Lcom/miui/optimizecenter/onekeyclean/shortcut/IShortcutCheck;

    return-object p1
.end method

.method static synthetic p0(Lcom/miui/optimizemanage/ResultFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/optimizemanage/ResultFragment;->o:I

    return p0
.end method

.method static synthetic q0(Lcom/miui/optimizemanage/ResultFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/optimizemanage/ResultFragment;->o:I

    return p1
.end method

.method static synthetic r0(Lcom/miui/optimizemanage/ResultFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/optimizemanage/ResultFragment;->m:Z

    return p0
.end method

.method static synthetic s0(Lcom/miui/optimizemanage/ResultFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizemanage/ResultFragment;->m:Z

    return p1
.end method

.method static synthetic t0(Lcom/miui/optimizemanage/ResultFragment;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/ResultFragment;->L0(I)Z

    move-result p0

    return p0
.end method

.method static synthetic u0(Lcom/miui/optimizemanage/ResultFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/optimizemanage/ResultFragment;->n:I

    return p0
.end method

.method static synthetic v0(Lcom/miui/optimizemanage/ResultFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/optimizemanage/ResultFragment;->n:I

    return p1
.end method

.method static synthetic w0(Lcom/miui/optimizemanage/ResultFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/optimizemanage/ResultFragment;->p:I

    return p0
.end method

.method static synthetic x0(Lcom/miui/optimizemanage/ResultFragment;)Lcom/miui/common/customview/AutoPasteListView;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/ResultFragment;->a:Lcom/miui/common/customview/AutoPasteListView;

    return-object p0
.end method

.method static synthetic y0(Lcom/miui/optimizemanage/ResultFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/ResultFragment;->f:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private z0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Llb/c;->a()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/optimizemanage/ResultFragment;->A:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public H0()V
    .locals 10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lkb/a;->k()I

    move-result v1

    invoke-static {}, Lkb/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    const-wide/32 v6, 0x5265c00

    int-to-long v8, v1

    mul-long/2addr v8, v6

    invoke-static {v8, v9}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v5

    :goto_1
    invoke-static {}, Llb/c;->a()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v2}, Llb/c;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/miui/optimizemanage/ResultFragment;->l:Z

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/miui/optimizemanage/ResultFragment;->D0()Z

    move-result v1

    if-nez v1, :cond_3

    move v4, v5

    :cond_3
    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/miui/optimizemanage/ResultFragment;->N0()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkb/a;->u(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method

.method public I0(Lcom/miui/optimizemanage/optimizeresult/a;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/optimizemanage/ResultFragment;->t:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    add-int/lit8 v1, v1, 0x1

    if-ltz v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/optimizemanage/optimizeresult/g;

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/optimizemanage/optimizeresult/g;

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->h:Lcom/miui/optimizemanage/optimizeresult/j;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->h:Lcom/miui/optimizemanage/optimizeresult/j;

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->h:Lcom/miui/optimizemanage/optimizeresult/j;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->t:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public J0(Lcom/miui/optimizemanage/optimizeresult/b;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/optimizemanage/ResultFragment;->t:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->h:Lcom/miui/optimizemanage/optimizeresult/j;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->h:Lcom/miui/optimizemanage/optimizeresult/j;

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->h:Lcom/miui/optimizemanage/optimizeresult/j;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->t:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public i(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/ResultFragment;->G0(Ljava/lang/String;)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/ResultFragment;->G0(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->b:Z

    iget-boolean v0, p0, Lcom/miui/optimizemanage/ResultFragment;->y:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->g0(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/optimizemanage/ResultFragment;->z0()V

    invoke-static {}, Lgb/a;->l()V

    invoke-static {p1}, Lsf/h;->c(Landroid/content/Context;)Lsf/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsf/h;->f(Lsf/h$b;)V

    invoke-static {p1}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lsf/e;->l(Lsf/e$c;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/miui/optimizemanage/ResultFragment;->K0()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->z:Landroid/app/Activity;

    const v0, 0x7f13043e

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "do_clean_anim"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/optimizemanage/ResultFragment;->k:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07168d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/ResultFragment;->p:I

    if-eqz p1, :cond_1

    const-string v0, "key_hide_action_bar"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/optimizemanage/ResultFragment;->y:Z

    const-string v0, "key_save_state"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/miui/optimizemanage/ResultFragment;->k:Z

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->u:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$c;

    invoke-static {v0}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->l0(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$c;)V

    invoke-static {}, Llb/a;->e()V

    invoke-static {}, Llb/a;->f()V

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->g:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->g:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->i:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    invoke-direct {p0}, Lcom/miui/optimizemanage/ResultFragment;->R0()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lsf/h;->c(Landroid/content/Context;)Lsf/h;

    move-result-object v1

    invoke-virtual {v1, p0}, Lsf/h;->g(Lsf/h$b;)V

    invoke-static {v0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsf/e;->p(Lsf/e$c;)V

    :cond_2
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const p2, 0x7f0e03ac

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->e:Landroid/view/View;

    const p2, 0x7f0b0248

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->f:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->e:Landroid/view/View;

    const p2, 0x7f0b024a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->d:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->e:Landroid/view/View;

    const p2, 0x7f0b024c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/common/customview/AutoPasteListView;

    iput-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->a:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {p1, v0}, Lcom/miui/common/customview/AutoPasteListView;->setAlignItem(I)V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->a:Lcom/miui/common/customview/AutoPasteListView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOverScrollMode(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->a:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    invoke-direct {p0}, Lcom/miui/optimizemanage/ResultFragment;->M0()V

    :goto_0
    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->a:Lcom/miui/common/customview/AutoPasteListView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/common/customview/AutoPasteListView;->setTopDraggable(Z)V

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->a:Lcom/miui/common/customview/AutoPasteListView;

    new-instance p2, Lcom/miui/optimizemanage/f;

    invoke-direct {p2, p0}, Lcom/miui/optimizemanage/f;-><init>(Lcom/miui/optimizemanage/ResultFragment;)V

    invoke-virtual {p1, p2}, Lcom/miui/common/customview/AutoPasteListView;->setOnScrollPercentChangeListener(Lcom/miui/common/customview/AutoPasteListView$c;)V

    new-instance p1, Lcom/miui/optimizemanage/optimizeresult/j;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/optimizemanage/optimizeresult/j;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->h:Lcom/miui/optimizemanage/optimizeresult/j;

    iget-object p2, p0, Lcom/miui/optimizemanage/ResultFragment;->a:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {p2, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->a:Lcom/miui/common/customview/AutoPasteListView;

    new-instance p2, Lcom/miui/optimizemanage/ResultFragment$b;

    invoke-direct {p2, p0}, Lcom/miui/optimizemanage/ResultFragment$b;-><init>(Lcom/miui/optimizemanage/ResultFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->e:Landroid/view/View;

    const p2, 0x7f0b024b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/optimizemanage/ResultFragment;->B0()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/optimizemanage/ResultFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/optimizemanage/ResultFragment;->e:Landroid/view/View;

    const p3, 0x7f0b0249

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/optimizemanage/ResultFragment;->c:Landroid/widget/TextView;

    new-instance p3, Lcom/miui/optimizemanage/ResultFragment$c;

    invoke-direct {p3, p0}, Lcom/miui/optimizemanage/ResultFragment$c;-><init>(Lcom/miui/optimizemanage/ResultFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    iget-boolean p2, p2, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->a:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120f53

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/optimizemanage/ResultFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/miui/optimizemanage/ResultFragment;->b:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    iget-wide p2, p2, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->c:J

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const v3, 0x7f120d83

    if-lez v2, :cond_2

    iget-wide v4, p0, Lcom/miui/optimizemanage/ResultFragment;->q:J

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lsm/a;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x64

    mul-long/2addr p2, v1

    iget-wide v1, p0, Lcom/miui/optimizemanage/ResultFragment;->q:J

    div-long/2addr p2, v1

    const-wide/16 v1, 0x1

    cmp-long v1, p2, v1

    if-ltz v1, :cond_2

    invoke-static {v0, p2, p3}, Llb/f;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    iget-object p3, p0, Lcom/miui/optimizemanage/ResultFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->r:Ljava/lang/String;

    new-instance p1, Lcom/miui/optimizemanage/ResultFragment$i;

    invoke-direct {p1, p0}, Lcom/miui/optimizemanage/ResultFragment$i;-><init>(Lcom/miui/optimizemanage/ResultFragment;)V

    invoke-static {p1}, Lx4/f;->b(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/miui/optimizemanage/ResultFragment$h;

    invoke-direct {p1, p0}, Lcom/miui/optimizemanage/ResultFragment$h;-><init>(Lcom/miui/optimizemanage/ResultFragment;)V

    iput-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->u:Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$c;

    invoke-static {p1}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->i0(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity$c;)V

    invoke-direct {p0}, Lcom/miui/optimizemanage/ResultFragment;->K0()V

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->e:Landroid/view/View;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_hide_action_bar"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "key_save_state"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 7

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_scanned"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cleanable_size"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "scan_time"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Lgb/b;->z(ZJI)V

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->h:Lcom/miui/optimizemanage/optimizeresult/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/miui/optimizemanage/ResultFragment;->h:Lcom/miui/optimizemanage/optimizeresult/j;

    invoke-virtual {v0}, Lcom/miui/optimizemanage/optimizeresult/j;->d()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/miui/optimizemanage/ResultFragment;->k:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/optimizemanage/ResultFragment;->O0()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/optimizemanage/ResultFragment;->Q0()V

    :goto_0
    new-instance p1, Landroidx/lifecycle/u0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/y0;)V

    const-class p2, Lx9/c;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/u0;->a(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object p1

    check-cast p1, Lx9/c;

    iput-object p1, p0, Lcom/miui/optimizemanage/ResultFragment;->v:Lx9/c;

    invoke-virtual {p1}, Lx9/b;->d()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object p2

    new-instance v0, Lcom/miui/optimizemanage/e;

    invoke-direct {v0, p0}, Lcom/miui/optimizemanage/e;-><init>(Lcom/miui/optimizemanage/ResultFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    return-void
.end method
