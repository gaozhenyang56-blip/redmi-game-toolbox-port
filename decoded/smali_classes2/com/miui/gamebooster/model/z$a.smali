.class public Lcom/miui/gamebooster/model/z$a;
.super Lt5/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/model/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:[Landroid/view/View;

.field private c:[Landroid/widget/ImageView;

.field private d:[Landroid/widget/TextView;

.field private e:[Landroid/widget/ImageView;

.field private f:[Landroid/widget/ImageView;

.field private g:[Landroid/widget/CheckBox;

.field private h:[Landroid/widget/TextView;

.field private i:[Landroid/widget/TextView;

.field private j:Lrh/c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Lt5/b;-><init>(Landroid/view/View;)V

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gamebooster/model/z$a;->c:[Landroid/widget/ImageView;

    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gamebooster/model/z$a;->d:[Landroid/widget/TextView;

    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gamebooster/model/z$a;->e:[Landroid/widget/ImageView;

    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gamebooster/model/z$a;->f:[Landroid/widget/ImageView;

    new-array v1, v0, [Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/miui/gamebooster/model/z$a;->g:[Landroid/widget/CheckBox;

    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gamebooster/model/z$a;->h:[Landroid/widget/TextView;

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/model/z$a;->i:[Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/model/z$a;->a:Landroid/content/Context;

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    const v2, 0x7f08076e

    invoke-virtual {v0, v2}, Lrh/c$b;->I(I)Lrh/c$b;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/model/z$a;->j:Lrh/c;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/model/z$a;->i(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/miui/gamebooster/model/z$a;)[Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/model/z$a;->g:[Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/gamebooster/model/z$a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/model/z$a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/gamebooster/model/z$a;Lcom/miui/gamebooster/model/y;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/model/z$a;->h(Lcom/miui/gamebooster/model/y;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/miui/gamebooster/model/z$a;Landroid/view/View;Lcom/miui/gamebooster/model/y;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/model/z$a;->k(Landroid/view/View;Lcom/miui/gamebooster/model/y;)V

    return-void
.end method

.method private f(ILandroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->c:[Landroid/widget/ImageView;

    const v1, 0x7f0b05e9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->d:[Landroid/widget/TextView;

    const v1, 0x7f0b0d05

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->e:[Landroid/widget/ImageView;

    const v1, 0x7f0b01ac

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->g:[Landroid/widget/CheckBox;

    const v1, 0x7f0b05ec

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->h:[Landroid/widget/TextView;

    const v1, 0x7f0b0c6a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->i:[Landroid/widget/TextView;

    const v1, 0x7f0b0cd2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->f:[Landroid/widget/ImageView;

    const v1, 0x7f0b0627

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    aput-object p2, v0, p1

    return-void
.end method

.method private g(IILcom/miui/gamebooster/model/y;ZLt5/r$c;)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/miui/gamebooster/model/y;->i()Z

    move-result v0

    sget-object v1, Lwh/c$a;->n:Lwh/c$a;

    invoke-direct {p0, p3}, Lcom/miui/gamebooster/model/z$a;->h(Lcom/miui/gamebooster/model/y;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwh/c$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/model/z$a;->c:[Landroid/widget/ImageView;

    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/miui/gamebooster/model/z$a;->j:Lrh/c;

    invoke-static {v1, v2, v3}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->d:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    const v1, 0x7f120a66

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->d:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    const v1, 0x7f080667

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->d:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    const v1, 0x7f120a68

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->d:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    const v1, 0x7f080668

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->h:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    invoke-virtual {p3}, Lcom/miui/gamebooster/model/y;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->i:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    invoke-virtual {p3}, Lcom/miui/gamebooster/model/y;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->g:[Landroid/widget/CheckBox;

    aget-object v0, v0, p2

    invoke-virtual {p3}, Lcom/miui/gamebooster/model/y;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->g:[Landroid/widget/CheckBox;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p4, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, p2

    if-eqz p4, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->e:[Landroid/widget/ImageView;

    aget-object v0, v0, p2

    if-nez p4, :cond_4

    invoke-static {p3}, La8/i2;->d(Lcom/miui/gamebooster/model/y;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct/range {p0 .. p5}, Lcom/miui/gamebooster/model/z$a;->j(IILcom/miui/gamebooster/model/y;ZLt5/r$c;)V

    return-void
.end method

.method private h(Lcom/miui/gamebooster/model/y;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/y;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/y;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/y;->b(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/y;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/y;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/y;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/y;->b(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/y;->h()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private j(IILcom/miui/gamebooster/model/y;ZLt5/r$c;)V
    .locals 9

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->b:[Landroid/view/View;

    array-length v1, v0

    if-lt p2, v1, :cond_0

    return-void

    :cond_0
    aget-object v0, v0, p2

    new-instance v7, Lcom/miui/gamebooster/model/z$a$a;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move-object v4, p3

    move-object v5, p5

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamebooster/model/z$a$a;-><init>(Lcom/miui/gamebooster/model/z$a;ZLcom/miui/gamebooster/model/y;Lt5/r$c;I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->e:[Landroid/widget/ImageView;

    aget-object v0, v0, p2

    new-instance v7, Lcom/miui/gamebooster/model/z$a$b;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamebooster/model/z$a$b;-><init>(Lcom/miui/gamebooster/model/z$a;ZLcom/miui/gamebooster/model/y;Lt5/r$c;I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->b:[Landroid/view/View;

    aget-object v0, v0, p2

    new-instance v8, Lcom/miui/gamebooster/model/z$a$c;

    move-object v1, v8

    move v5, p2

    move-object v6, p5

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/miui/gamebooster/model/z$a$c;-><init>(Lcom/miui/gamebooster/model/z$a;ZLcom/miui/gamebooster/model/y;ILt5/r$c;I)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a;->g:[Landroid/widget/CheckBox;

    aget-object v0, v0, p2

    new-instance v7, Lcom/miui/gamebooster/model/z$a$d;

    move-object v1, v7

    move v3, p2

    move-object v5, p5

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamebooster/model/z$a$d;-><init>(Lcom/miui/gamebooster/model/z$a;ILcom/miui/gamebooster/model/y;Lt5/r$c;I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/gamebooster/model/z$a;->f:[Landroid/widget/ImageView;

    aget-object p1, p1, p2

    new-instance p5, Lcom/miui/gamebooster/model/z$a$e;

    invoke-direct {p5, p0, p4, p3}, Lcom/miui/gamebooster/model/z$a$e;-><init>(Lcom/miui/gamebooster/model/z$a;ZLcom/miui/gamebooster/model/y;)V

    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/gamebooster/model/z$a;->e:[Landroid/widget/ImageView;

    aget-object p1, p1, p2

    new-instance p2, Lcom/miui/gamebooster/model/z$a$f;

    invoke-direct {p2, p0, p4, p3}, Lcom/miui/gamebooster/model/z$a$f;-><init>(Lcom/miui/gamebooster/model/z$a;ZLcom/miui/gamebooster/model/y;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private k(Landroid/view/View;Lcom/miui/gamebooster/model/y;)V
    .locals 2

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/y;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/model/z$a$g;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/gamebooster/model/z$a$g;-><init>(Lcom/miui/gamebooster/model/z$a;Lcom/miui/gamebooster/model/y;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILjava/lang/Object;Lt5/r$c;)V
    .locals 8

    check-cast p3, Lcom/miui/gamebooster/model/z;

    invoke-virtual {p3}, Lcom/miui/gamebooster/model/z;->j()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/model/z$a;->b:[Landroid/view/View;

    array-length v1, v1

    if-ge v7, v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/model/z$a;->b:[Landroid/view/View;

    aget-object v1, v1, v7

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/miui/gamebooster/model/y;

    invoke-virtual {p3}, Lcom/miui/gamebooster/model/f;->e()Z

    move-result v5

    move-object v1, p0

    move v2, p2

    move v3, v7

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamebooster/model/z$a;->g(IILcom/miui/gamebooster/model/y;ZLt5/r$c;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/model/z$a;->b:[Landroid/view/View;

    aget-object v1, v1, v7

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public i(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f0b0211

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/miui/gamebooster/model/z$a;->f(ILandroid/view/View;)V

    const v2, 0x7f0b0210

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3, v2}, Lcom/miui/gamebooster/model/z$a;->f(ILandroid/view/View;)V

    const v4, 0x7f0b0212

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v4, 0x2

    invoke-direct {p0, v4, p1}, Lcom/miui/gamebooster/model/z$a;->f(ILandroid/view/View;)V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/view/View;

    aput-object v0, v5, v1

    aput-object v2, v5, v3

    aput-object p1, v5, v4

    iput-object v5, p0, Lcom/miui/gamebooster/model/z$a;->b:[Landroid/view/View;

    return-void
.end method
