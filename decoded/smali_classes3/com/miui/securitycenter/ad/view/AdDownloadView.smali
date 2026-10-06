.class public Lcom/miui/securitycenter/ad/view/AdDownloadView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Lcom/google/android/flexbox/FlexboxLayout;

.field private t:Z

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securitycenter/ad/view/AdDownloadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic f(Lcom/miui/securitycenter/ad/view/AdDownloadView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->j()V

    return-void
.end method

.method static synthetic g(Lcom/miui/securitycenter/ad/view/AdDownloadView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method public static getStateLoadPause()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static getStateLoadReady()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getStateLoadStart()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private h()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->i()V

    invoke-virtual {p0}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->m()V

    invoke-virtual {p0}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->n()V

    invoke-virtual {p0}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->k()V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lgf/e;->a:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lgf/e;->d:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lgf/e;->e:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lgf/e;->f:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lgf/e;->b:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lgf/e;->c:I

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->t:Z

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lgf/e;->b:I

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lgf/e;->c:I

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->u:Z

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasVersionTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",hasDevelopTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->s:Lcom/google/android/flexbox/FlexboxLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/miui/securitycenter/ad/view/a;

    invoke-direct {v1, p0}, Lcom/miui/securitycenter/ad/view/a;-><init>(Lcom/miui/securitycenter/ad/view/AdDownloadView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic j()V
    .locals 7

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->s:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayout;->getFlexLines()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/flexbox/FlexLine;

    invoke-virtual {v6}, Lcom/google/android/flexbox/FlexLine;->getItemCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->s:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v4, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->s:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Lgf/d;->a:I

    goto :goto_2

    :cond_2
    sget v5, Lgf/d;->b:I

    :goto_2
    invoke-virtual {v4, v3, v3, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public getAdXView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method public getAppNameView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method public getBigImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBtnView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCancelView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDescView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDeveloperView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDspView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImg1()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->p:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImg2()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->q:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImg3()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIntroduceView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPermissionView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPrivacyView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public getVersionView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->f:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->e:Landroid/widget/TextView;

    :cond_0
    return-object v0
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget v1, Lgf/g;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->k:Landroid/widget/TextView;

    sget v1, Lgf/g;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget v1, Lgf/g;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget v1, Lgf/g;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->i()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    sget v0, Lgf/e;->g:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->s:Lcom/google/android/flexbox/FlexboxLayout;

    sget v0, Lgf/e;->h:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->a:Landroid/widget/ImageView;

    sget v0, Lgf/e;->x:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->b:Landroid/widget/TextView;

    sget v0, Lgf/e;->u:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->g:Landroid/widget/TextView;

    sget v0, Lgf/e;->r:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->c:Landroid/widget/TextView;

    sget v0, Lgf/e;->t:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->d:Landroid/widget/TextView;

    sget v0, Lgf/e;->y:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->e:Landroid/widget/TextView;

    sget v0, Lgf/e;->o:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->f:Landroid/widget/TextView;

    sget v0, Lgf/e;->w:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->h:Landroid/widget/TextView;

    sget v0, Lgf/e;->v:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->i:Landroid/widget/TextView;

    sget v0, Lgf/e;->s:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->j:Landroid/widget/TextView;

    sget v0, Lgf/e;->p:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->k:Landroid/widget/TextView;

    sget v0, Lgf/e;->q:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->l:Landroid/widget/TextView;

    sget v0, Lgf/e;->m:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->m:Landroid/widget/TextView;

    sget v0, Lgf/e;->n:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->n:Landroid/widget/TextView;

    sget v0, Lgf/e;->l:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->o:Landroid/widget/ImageView;

    sget v0, Lgf/e;->i:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->p:Landroid/widget/ImageView;

    sget v0, Lgf/e;->j:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->q:Landroid/widget/ImageView;

    sget v0, Lgf/e;->k:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->r:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->h()V

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/securitycenter/ad/view/AdDownloadView$a;

    invoke-direct {v1, p0}, Lcom/miui/securitycenter/ad/view/AdDownloadView$a;-><init>(Lcom/miui/securitycenter/ad/view/AdDownloadView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public setDeveloper(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->u:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lgf/g;->c:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setDsp(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getVersionView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView;->t:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getVersionView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getVersionView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lgf/g;->f:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
