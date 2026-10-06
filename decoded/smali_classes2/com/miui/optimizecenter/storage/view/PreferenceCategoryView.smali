.class public Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$a;,
        Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$b;
    }
.end annotation


# instance fields
.field private a:Lab/g;

.field private b:Lab/b;

.field private c:Landroid/content/res/Resources;

.field private d:Z

.field private e:Landroid/widget/TextView;

.field private f:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

.field private g:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

.field private h:Lcom/miui/optimizecenter/storage/view/PreferenceItemSpaceView;

.field private i:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$a;

.field private m:Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->d:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->c:Landroid/content/res/Resources;

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;
    .locals 2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0e04e0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;

    return-object p0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->f:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->d:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1215e7

    const v1, 0x7f1215e8

    goto :goto_0

    :cond_0
    const v0, 0x7f121b1d

    const v1, 0x7f121b1e

    :goto_0
    iget-object v2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->f:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->c:Landroid/content/res/Resources;

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->f:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->c:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->i:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldb/i;->k(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->g:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    invoke-static {v0, v1}, Ldb/i;->k(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->h:Lcom/miui/optimizecenter/storage/view/PreferenceItemSpaceView;

    invoke-static {v0, v1}, Ldb/i;->k(Landroid/view/View;I)V

    return-void
.end method

.method private d(I)V
    .locals 3

    const v0, 0x7f1215ec

    const v1, 0x7f121b23

    if-eqz p1, :cond_2

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->f:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->d:Z

    if-eqz p1, :cond_1

    const p1, 0x7f1215eb

    goto :goto_2

    :cond_1
    const p1, 0x7f121b21

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->f:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->d:Z

    if-eqz p1, :cond_3

    const p1, 0x7f1215ed

    goto :goto_2

    :cond_3
    const p1, 0x7f121b24

    :goto_1
    move v0, v1

    :goto_2
    iget-object v1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->f:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->c:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->f:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->c:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->setSummary(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->g:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Ldb/i;->k(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->i:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    invoke-static {p1, v0}, Ldb/i;->k(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->h:Lcom/miui/optimizecenter/storage/view/PreferenceItemSpaceView;

    invoke-static {p1, v0}, Ldb/i;->k(Landroid/view/View;I)V

    return-void
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->a:Lab/g;

    invoke-virtual {v0}, Lab/g;->e()I

    move-result v0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->f:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->d(I)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->c()V

    :goto_1
    iget-boolean v3, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->j:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->k:Ljava/lang/String;

    const-string v4, "mtp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->k:Ljava/lang/String;

    const-string v4, "ptp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->f:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    const v3, 0x7f120e59

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->f:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->c:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->setSummary(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->g:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->g:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->c:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->setSummary(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->g:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->f:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->d:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->g:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    const v1, 0x7f1215ea

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->g:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    const v1, 0x7f121b20

    :goto_2
    invoke-virtual {v0, v1}, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->setSummary(I)V

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public a(Lab/g;Lab/b;Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$a;)V
    .locals 4

    iput-object p2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->b:Lab/b;

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->a:Lab/g;

    invoke-virtual {p2}, Lab/b;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->d:Z

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->e:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->b:Lab/b;

    invoke-virtual {p2}, Lab/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ldb/i;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->l:Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e04dd

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/optimizecenter/storage/view/PreferenceItemSpaceView;

    iput-object p2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->h:Lcom/miui/optimizecenter/storage/view/PreferenceItemSpaceView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean p2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->d:Z

    if-eqz p2, :cond_1

    const p2, 0x7f1215e7

    const v0, 0x7f1215e8

    goto :goto_0

    :cond_1
    const p2, 0x7f121b1d

    const v0, 0x7f121b1e

    :goto_0
    sget-object v2, Lbb/a;->a:Lbb/a;

    invoke-static {p1, p0, v2}, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lbb/a;)Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->f:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->c:Landroid/content/res/Resources;

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->setTitle(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->f:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->c:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->setSummary(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->f:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->f:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean p2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->d:Z

    if-eqz p2, :cond_2

    const p2, 0x7f1215e9

    const v0, 0x7f1215ea

    goto :goto_1

    :cond_2
    const p2, 0x7f121b1f

    const v0, 0x7f121b20

    :goto_1
    sget-object v2, Lbb/a;->b:Lbb/a;

    invoke-static {p1, p0, v2}, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lbb/a;)Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->g:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->c:Landroid/content/res/Resources;

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->setTitle(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->g:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->c:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->setSummary(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->g:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->g:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean p2, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->d:Z

    if-eqz p2, :cond_3

    sget-object p2, Lbb/a;->c:Lbb/a;

    invoke-static {p1, p0, p2}, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lbb/a;)Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->i:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    const p2, 0x7f12141c

    invoke-virtual {p1, p2}, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->setTitle(I)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->i:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    const p2, 0x7f12141b

    invoke-virtual {p1, p2}, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->setSummary(I)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->i:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->i:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->a:Lab/g;

    invoke-virtual {p1}, Lab/g;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$b;

    invoke-direct {p1, p0}, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$b;-><init>(Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;)V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->m:Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$b;

    new-array p2, p3, [Lab/g;

    iget-object p3, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->a:Lab/g;

    aput-object p3, p2, v1

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->f()V

    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->m:Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$b;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$b;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->a:Lab/g;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$b;

    invoke-direct {v0, p0}, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$b;-><init>(Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;)V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->m:Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$b;

    const/4 v1, 0x1

    new-array v1, v1, [Lab/g;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->a:Lab/g;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public g(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->h:Lcom/miui/optimizecenter/storage/view/PreferenceItemSpaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/optimizecenter/storage/view/PreferenceItemSpaceView;->a(JJ)V

    :cond_0
    return-void
.end method

.method public getmDiskInfoCompat()Lab/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->b:Lab/b;

    return-object v0
.end method

.method public getmVolumeInfo()Lab/g;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->a:Lab/g;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->f:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->a:Lab/g;

    invoke-virtual {p1}, Lab/g;->e()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->a:Lab/g;

    invoke-virtual {v0}, Lab/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lua/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance p1, Lya/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->a:Lab/g;

    invoke-direct {p1, v0, v1}, Lya/b;-><init>(Landroid/content/Context;Lab/g;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->g:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->l:Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$a;

    if-eqz p1, :cond_3

    sget-object v0, Lbb/a;->b:Lbb/a;

    :goto_0
    invoke-interface {p1, p0, v0}, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$a;->O(Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;Lbb/a;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->i:Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->l:Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$a;

    if-eqz p1, :cond_3

    sget-object v0, Lbb/a;->c:Lbb/a;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b04a5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->e:Landroid/widget/TextView;

    return-void
.end method
