.class public Lcom/miui/securityscan/fileobserver/b;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/fileobserver/b$c;,
        Lcom/miui/securityscan/fileobserver/b$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/miui/securityscan/fileobserver/b$b;

.field private d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/b;->d:Ljava/util/Queue;

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/securityscan/fileobserver/b;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic b(Lcom/miui/securityscan/fileobserver/b;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/fileobserver/b;->c(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic c(ILandroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/miui/securityscan/fileobserver/b;->c:Lcom/miui/securityscan/fileobserver/b$b;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/miui/securityscan/fileobserver/b$b;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public d(Lcom/miui/securityscan/fileobserver/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/b;->c:Lcom/miui/securityscan/fileobserver/b$b;

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/b;->d:Ljava/util/Queue;

    invoke-interface {p1, p3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/b;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/b;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/b;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/fileobserver/b$c;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/b;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e023f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/securityscan/fileobserver/b$c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/securityscan/fileobserver/b$c;-><init>(Lcom/miui/securityscan/fileobserver/b;Lcom/miui/securityscan/fileobserver/b$a;)V

    const v3, 0x7f0b0544

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iput-object v3, v2, Lcom/miui/securityscan/fileobserver/b$c;->a:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, v2, Lcom/miui/securityscan/fileobserver/b$c;->a:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setOrientation(I)V

    iget-object v3, v2, Lcom/miui/securityscan/fileobserver/b$c;->a:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/a;->m(Ljava/lang/String;)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/a;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, v2, Lcom/miui/securityscan/fileobserver/b$c;->a:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    new-instance v0, Lvf/o;

    invoke-direct {v0, p0, p2}, Lvf/o;-><init>(Lcom/miui/securityscan/fileobserver/b;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
