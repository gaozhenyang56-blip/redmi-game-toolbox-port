.class public Lh3/d$a;
.super Lh3/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lh3/g;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lh3/d$a;->e:Landroid/content/Context;

    const v0, 0x7f0b00b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lh3/d$a;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b00b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh3/d$a;->c:Landroid/widget/TextView;

    const v0, 0x7f0b0d5d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lh3/d$a;->d:Landroid/widget/TextView;

    iget-object p1, p0, Lh3/d$a;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lh3/d$a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method private d(Landroid/widget/TextView;Landroid/text/SpannableString;Ljava/lang/String;)V
    .locals 3

    if-eqz p3, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v0

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#ff0000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x12

    invoke-virtual {p2, v1, v0, p3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private e(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz p3, :cond_3

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p0

    iget-object v4, v3, Lh3/d$a;->e:Landroid/content/Context;

    const v5, 0x7f1215ee

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xe

    const-string v8, "\\"

    const-string v9, "$"

    const-string v10, "("

    const-string v11, ")"

    const-string v12, "*"

    const-string v13, "+"

    const-string v14, "."

    const-string v15, "["

    const-string v16, "]"

    const-string v17, "?"

    const-string v18, "^"

    const-string v19, "{"

    const-string v20, "}"

    const-string v21, "|"

    filled-new-array/range {v8 .. v21}, [Ljava/lang/String;

    move-result-object v8

    move v9, v7

    :goto_0
    if-ge v9, v6, :cond_2

    aget-object v10, v8, v9

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    move v5, v7

    :goto_1
    if-nez v5, :cond_4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    :goto_2
    move-object/from16 v3, p0

    invoke-virtual/range {p1 .. p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lh3/f;I)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lh3/g;->a(Landroid/view/View;Lh3/f;I)V

    check-cast p2, Lh3/d;

    iget-object p3, p0, Lh3/d$a;->b:Landroid/widget/ImageView;

    if-eqz p3, :cond_0

    invoke-static {p2}, Lh3/d;->j(Lh3/d;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lh3/d$a;->b:Landroid/widget/ImageView;

    sget-object v1, Lx4/o0;->f:Lrh/c;

    const v2, 0x7f0804c9

    invoke-static {p3, v0, v1, v2}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :cond_0
    iget-object p3, p0, Lh3/d$a;->c:Landroid/widget/TextView;

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    invoke-static {p2}, Lh3/d;->k(Lh3/d;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p1, p0, Lh3/d$a;->c:Landroid/widget/TextView;

    invoke-static {p2}, Lh3/d;->l(Lh3/d;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Lh3/d;->m(Lh3/d;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p3, v1}, Lh3/d$a;->e(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lh3/d;->l(Lh3/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v3, 0x7f080328

    invoke-direct {v2, p1, v3, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v3, 0x12

    invoke-virtual {v1, v2, p1, p3, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lh3/d$a;->c:Landroid/widget/TextView;

    invoke-static {p2}, Lh3/d;->m(Lh3/d;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, v1, p3}, Lh3/d$a;->d(Landroid/widget/TextView;Landroid/text/SpannableString;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget p1, p2, Lh3/f;->g:I

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    const/4 p3, 0x3

    if-eq p1, p3, :cond_4

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lh3/d$a;->d:Landroid/widget/TextView;

    invoke-static {p2}, Lh3/d;->o(Lh3/d;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lh3/d$a;->d:Landroid/widget/TextView;

    iget-object p3, p0, Lh3/d$a;->e:Landroid/content/Context;

    invoke-static {p2}, Lh3/d;->n(Lh3/d;)J

    move-result-wide v0

    invoke-static {p3, v0, v1}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
