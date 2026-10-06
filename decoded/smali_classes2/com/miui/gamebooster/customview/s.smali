.class public Lcom/miui/gamebooster/customview/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/customview/s$c;,
        Lcom/miui/gamebooster/customview/s$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gamebooster/customview/s$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/s;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/gamebooster/customview/s;Lcom/miui/gamebooster/customview/s$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/customview/s;->k(Lcom/miui/gamebooster/customview/s$b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/gamebooster/customview/s;Lcom/miui/gamebooster/customview/s$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/customview/s;->i(Lcom/miui/gamebooster/customview/s$b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/gamebooster/customview/s;Landroid/widget/RadioGroup;Lcom/miui/gamebooster/customview/s$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/customview/s;->l(Landroid/widget/RadioGroup;Lcom/miui/gamebooster/customview/s$b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/gamebooster/customview/s;Lcom/miui/gamebooster/customview/s$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/customview/s;->j(Lcom/miui/gamebooster/customview/s$b;Landroid/view/View;)V

    return-void
.end method

.method public static h()Lcom/miui/gamebooster/customview/s;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/customview/s$c;->a:Lcom/miui/gamebooster/customview/s;

    return-object v0
.end method

.method private synthetic i(Lcom/miui/gamebooster/customview/s$b;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/miui/gamebooster/customview/s$b;->a(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/s;->e()V

    return-void
.end method

.method private synthetic j(Lcom/miui/gamebooster/customview/s$b;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/miui/gamebooster/customview/s$b;->a(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/s;->e()V

    return-void
.end method

.method private synthetic k(Lcom/miui/gamebooster/customview/s$b;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/miui/gamebooster/customview/s$b;->a(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/s;->e()V

    return-void
.end method

.method private synthetic l(Landroid/widget/RadioGroup;Lcom/miui/gamebooster/customview/s$b;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const p3, 0x7f0b0949

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-static {p1}, Lr8/b;->l(I)V

    invoke-static {}, Lr8/b;->a()I

    move-result p1

    invoke-static {p1}, Lcom/miui/gamebooster/utils/a;->I0(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/s;->b:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/customview/s;->f(Landroid/view/View;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/miui/gamebooster/customview/s$b;->a(Ljava/util/Map;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/s;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/s;->f(Landroid/view/View;)V

    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/s;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/s;->f(Landroid/view/View;)V

    return-void
.end method

.method public m(Landroid/view/ViewGroup;IIILcom/miui/gamebooster/customview/s$b;Lcom/miui/gamebooster/customview/s$b;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/miui/gamebooster/customview/s;->n(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gamebooster/customview/s$b;Lcom/miui/gamebooster/customview/s$b;)V

    return-void
.end method

.method public n(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gamebooster/customview/s$b;Lcom/miui/gamebooster/customview/s$b;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/miui/gamebooster/customview/s;->o(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gamebooster/customview/s$b;Lcom/miui/gamebooster/customview/s$b;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public o(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gamebooster/customview/s$b;Lcom/miui/gamebooster/customview/s$b;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3
    .param p7    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/s;->a:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e012f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/customview/s;->a:Landroid/view/View;

    :cond_1
    if-eqz p7, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/s;->a:Landroid/view/View;

    const v1, 0x7f0b02a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    invoke-virtual {v0, p7}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    iget-object p7, p0, Lcom/miui/gamebooster/customview/s;->a:Landroid/view/View;

    const v0, 0x7f0b0be4

    invoke-virtual {p7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Landroid/widget/TextView;

    invoke-virtual {p7, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/gamebooster/customview/s;->a:Landroid/view/View;

    const p7, 0x7f0b030b

    invoke-virtual {p2, p7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    if-eqz p8, :cond_3

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p7

    invoke-virtual {p2, p7}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    iget-object p7, p0, Lcom/miui/gamebooster/customview/s;->a:Landroid/view/View;

    const p8, 0x7f0b030c

    invoke-virtual {p7, p8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Landroid/widget/Button;

    if-eqz p9, :cond_4

    invoke-virtual {p9}, Ljava/lang/Integer;->intValue()I

    move-result p8

    invoke-virtual {p7, p8}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    if-eqz p7, :cond_5

    invoke-virtual {p7, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p4, Lcom/miui/gamebooster/customview/p;

    invoke-direct {p4, p0, p6}, Lcom/miui/gamebooster/customview/p;-><init>(Lcom/miui/gamebooster/customview/s;Lcom/miui/gamebooster/customview/s$b;)V

    invoke-virtual {p7, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Lcom/miui/gamebooster/customview/q;

    invoke-direct {p3, p0, p5}, Lcom/miui/gamebooster/customview/q;-><init>(Lcom/miui/gamebooster/customview/s;Lcom/miui/gamebooster/customview/s$b;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object p2, p0, Lcom/miui/gamebooster/customview/s;->a:Landroid/view/View;

    const p3, 0x7f0b027f

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    new-instance p3, Lcom/miui/gamebooster/customview/r;

    invoke-direct {p3, p0, p5}, Lcom/miui/gamebooster/customview/r;-><init>(Lcom/miui/gamebooster/customview/s;Lcom/miui/gamebooster/customview/s$b;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/gamebooster/customview/s;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/miui/gamebooster/customview/s;->a:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public p(Landroid/view/ViewGroup;Lcom/miui/gamebooster/customview/s$b;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/s;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/s;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/s;->f(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/customview/s;->b:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0130

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/customview/s;->b:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/customview/s;->b:Landroid/view/View;

    const v1, 0x7f0b0940

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-static {}, Lr8/b;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const v1, 0x7f0b0949

    goto :goto_0

    :cond_3
    const v1, 0x7f0b0943

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/customview/s;->b:Landroid/view/View;

    const v2, 0x7f0b030c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/customview/o;

    invoke-direct {v2, p0, v0, p2}, Lcom/miui/gamebooster/customview/o;-><init>(Lcom/miui/gamebooster/customview/s;Landroid/widget/RadioGroup;Lcom/miui/gamebooster/customview/s$b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/gamebooster/customview/s;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/miui/gamebooster/customview/s;->b:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public q(Landroid/view/ViewGroup;I)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/s;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/s;->c:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0131

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/customview/s;->c:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/customview/s;->c:Landroid/view/View;

    const v1, 0x7f0b0780

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p0, Lcom/miui/gamebooster/customview/s;->c:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/miui/gamebooster/customview/s;->c:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method
