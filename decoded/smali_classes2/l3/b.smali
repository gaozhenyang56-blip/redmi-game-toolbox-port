.class public Ll3/b;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/b$c;,
        Ll3/b$a;,
        Ll3/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/apppredict/bean/AppClassificationBaseBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ll3/b$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/apppredict/bean/AppClassificationBaseBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput-object p1, p0, Ll3/b;->a:Landroid/content/Context;

    iput-object p2, p0, Ll3/b;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic k(Ll3/b;Ll3/b$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ll3/b;->p(Ll3/b$a;Landroid/view/View;)V

    return-void
.end method

.method static synthetic l()Z
    .locals 1

    invoke-static {}, Ll3/b;->o()Z

    move-result v0

    return v0
.end method

.method private m(Ll3/b$a;Lcom/miui/apppredict/bean/AppClassificationContentBean;)V
    .locals 4

    invoke-virtual {p2}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getIconPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ll3/b$a;->a:Landroid/widget/ImageView;

    sget-object v2, Lx4/o0;->f:Lrh/c;

    const v3, 0x7f0804c9

    invoke-static {v0, v1, v2, v3}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object v0, p1, Ll3/b$a;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071d8d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x42dc0000    # 110.0f

    mul-float/2addr p2, v0

    const/high16 v0, 0x42ea0000    # 117.0f

    div-float/2addr p2, v0

    float-to-int p2, p2

    iget-object v0, p1, Ll3/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v0, p1, Ll3/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setHeight(I)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Ll3/a;

    invoke-direct {v0, p0, p1}, Ll3/a;-><init>(Ll3/b;Ll3/b$a;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/view/View;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-array v0, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, p1, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private n(Ll3/b$b;ILcom/miui/apppredict/bean/AppClassificationHeadBean;)V
    .locals 1

    iget-object v0, p1, Ll3/b$b;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/apppredict/bean/AppClassificationHeadBean;->getHeadName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Ll3/b$b;->b:Landroid/view/View;

    if-nez p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static o()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/text/k;->a(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private synthetic p(Ll3/b$a;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Ll3/b;->c:Ll3/b$c;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result p1

    invoke-interface {p2, p1}, Ll3/b$c;->onItemClick(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Ll3/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Ll3/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/apppredict/bean/AppClassificationBaseBean;

    invoke-virtual {p1}, Lcom/miui/apppredict/bean/AppClassificationBaseBean;->getType()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Ll3/b$b;

    if-eqz v0, :cond_0

    check-cast p1, Ll3/b$b;

    iget-object v0, p0, Ll3/b;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/apppredict/bean/AppClassificationHeadBean;

    invoke-direct {p0, p1, p2, v0}, Ll3/b;->n(Ll3/b$b;ILcom/miui/apppredict/bean/AppClassificationHeadBean;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ll3/b$a;

    if-eqz v0, :cond_1

    check-cast p1, Ll3/b$a;

    iget-object v0, p0, Ll3/b;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/apppredict/bean/AppClassificationContentBean;

    invoke-direct {p0, p1, p2}, Ll3/b;->m(Ll3/b$a;Lcom/miui/apppredict/bean/AppClassificationContentBean;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Ll3/b;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e0072

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ll3/b$b;

    invoke-direct {p2, p1}, Ll3/b$b;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    iget-object p2, p0, Ll3/b;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e0071

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ll3/b$a;

    invoke-direct {p2, p1}, Ll3/b$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public q(Ll3/b$c;)V
    .locals 0

    iput-object p1, p0, Ll3/b;->c:Ll3/b$c;

    return-void
.end method
