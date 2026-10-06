.class public Lh8/k;
.super Lh8/i;
.source "SourceFile"


# static fields
.field private static final i:Landroid/util/SparseIntArray;


# instance fields
.field private g:Lcom/miui/gamebooster/model/ActiveModel;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lh8/k;->i:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const v2, 0x7f0e0554

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x1

    const v3, 0x7f0e0555

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lg8/b;Lcom/miui/gamebooster/model/ActiveModel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lh8/i;-><init>(Ljava/lang/String;Lg8/b;)V

    iput-object p2, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lh8/k;->h:Z

    return-void
.end method

.method public static synthetic t(Lh8/k;Lh8/b$a;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lh8/k;->x(Lh8/b$a;ILandroid/view/View;)V

    return-void
.end method

.method static synthetic u(Lh8/k;)Lcom/miui/gamebooster/model/ActiveModel;
    .locals 0

    iget-object p0, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    return-object p0
.end method

.method private v()V
    .locals 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a$o;->i(Z)V

    invoke-static {}, Lc3/k;->g()Lc3/k;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    new-instance v2, Lh8/k$a;

    invoke-direct {v2, p0, v1}, Lh8/k$a;-><init>(Lh8/k;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lc3/k;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1, v2}, Lc3/k;->i(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "VBFunctionGroupAd"

    const-string v1, "show ad x dialog failed, not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static w(Lcom/miui/gamebooster/model/ActiveModel;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lh8/k;->i:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getTemplateId()I

    move-result p0

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private synthetic x(Lh8/b$a;ILandroid/view/View;)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0c23

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lh8/k;->v()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/ActiveModel;->increaseClickTimes()V

    invoke-interface {p1, p0, p3, p2}, Lh8/b$a;->b(Lh8/b;Landroid/view/View;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k(ILandroid/view/View;Lh8/b$a;)V
    .locals 4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Ld8/m$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Ld8/m$b;

    iget-object v0, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p2, Ld8/m$b;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/ActiveModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldb/i;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p2, Ld8/m$b;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/ActiveModel;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldb/i;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p2, Ld8/m$b;->s:Landroid/widget/Button;

    iget-object v1, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/ActiveModel;->getButton()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldb/i;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p2, Ld8/m$b;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/ActiveModel;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Ld8/m$b;->o:Landroid/widget/ImageView;

    sget-object v2, Lx4/o0;->b:Lrh/c;

    const v3, 0x7f080954

    invoke-static {v0, v1, v2, v3}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :cond_2
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/ActiveModel;->getTemplateId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p2, Ld8/m$b;->q:Landroid/widget/TextView;

    const v2, 0x7f060e49

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x7f060e48

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Ldb/i;->d(Landroid/widget/TextView;II)V

    :cond_3
    iget-object v1, p2, Ld8/m$b;->t:Landroid/view/View;

    iget-object v2, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/ActiveModel;->isAdType()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/16 v2, 0x8

    :goto_0
    invoke-static {v1, v2}, Ldb/i;->k(Landroid/view/View;I)V

    iget-object v1, p2, Ld8/m$b;->s:Landroid/widget/Button;

    iget-object v2, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/ActiveModel;->getButton()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldb/i;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    const v1, 0x7f080f9a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/ActiveModel;->isCustomBtnColor()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p2, Ld8/m$b;->s:Landroid/widget/Button;

    const v2, 0x7f071de4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v2, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/ActiveModel;->getBtnBgN()I

    move-result v2

    iget-object v3, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v3}, Lcom/miui/gamebooster/model/ActiveModel;->getBtnBgP()I

    move-result v3

    invoke-static {v0, v2, v3}, Lof/f;->a(FII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Ldb/i;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p2, Ld8/m$b;->s:Landroid/widget/Button;

    iget-object v1, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/ActiveModel;->getBtnTxtColor()I

    move-result v1

    invoke-static {v0, v1}, Ldb/i;->g(Landroid/widget/TextView;I)V

    :cond_5
    new-instance v0, Lh8/j;

    invoke-direct {v0, p0, p3, p1}, Lh8/j;-><init>(Lh8/k;Lh8/b$a;I)V

    iget-object p1, p2, Ld8/m$b;->s:Landroid/widget/Button;

    invoke-static {p1, v0}, Ldb/i;->j(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object p1, p2, Ld8/m$b;->e:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Ldb/i;->j(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object p1, p2, Ld8/m$b;->t:Landroid/view/View;

    invoke-static {p1, v0}, Ldb/i;->j(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Lh8/k;->h:Z

    if-nez p1, :cond_6

    invoke-static {}, Lcom/miui/gamebooster/utils/c;->j()Lcom/miui/gamebooster/utils/c;

    move-result-object p1

    sget-object p2, Lve/d;->d:Lve/d;

    iget-object p3, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    const-string v0, "view"

    invoke-static {p2, p3, v0}, Lcom/miui/gamebooster/utils/c;->h(Lve/d;Lcom/miui/gamebooster/model/ActiveModel;Ljava/lang/String;)Lcom/miui/gamebooster/model/ActiveTrackModel;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/miui/gamebooster/utils/c;->f(Lcom/miui/gamebooster/model/ActiveTrackModel;)V

    invoke-virtual {p2}, Lve/d;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/ActiveModel;->isHandleByFloatingWindow()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/utils/a;->t0(Ljava/lang/String;Z)V

    iget-object p1, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->increaseShowTimes()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh8/k;->h:Z

    :cond_6
    return-void
.end method

.method public n()I
    .locals 2

    sget-object v0, Lh8/k;->i:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/ActiveModel;->getTemplateId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lh8/k;->g:Lcom/miui/gamebooster/model/ActiveModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/model/ActiveModel;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
