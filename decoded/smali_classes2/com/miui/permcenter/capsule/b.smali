.class public Lcom/miui/permcenter/capsule/b;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/capsule/b$b;,
        Lcom/miui/permcenter/capsule/b$d;,
        Lcom/miui/permcenter/capsule/b$f;,
        Lcom/miui/permcenter/capsule/b$c;,
        Lcom/miui/permcenter/capsule/b$e;
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
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/permcenter/capsule/b$d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/miui/permcenter/capsule/b$b;

.field private final d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    invoke-static {}, Lcom/miui/permcenter/o;->M()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/capsule/b;->d:Z

    iput-object p1, p0, Lcom/miui/permcenter/capsule/b;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/capsule/b;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic k(Lcom/miui/permcenter/capsule/b;ZLcom/miui/permcenter/capsule/b$d;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/permcenter/capsule/b;->l(ZLcom/miui/permcenter/capsule/b$d;Landroid/view/View;)V

    return-void
.end method

.method private synthetic l(ZLcom/miui/permcenter/capsule/b$d;Landroid/view/View;)V
    .locals 0

    iget-object p3, p0, Lcom/miui/permcenter/capsule/b;->c:Lcom/miui/permcenter/capsule/b$b;

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-interface {p3, p1}, Lcom/miui/permcenter/capsule/b$b;->a(Ltc/h;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/capsule/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/capsule/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/capsule/b$d;

    iget-boolean v0, p1, Lcom/miui/permcenter/capsule/b$d;->a:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/miui/permcenter/capsule/b$d;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p1, Lcom/miui/permcenter/capsule/b$d;->b:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public m(Lcom/miui/permcenter/capsule/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/capsule/b;->c:Lcom/miui/permcenter/capsule/b$b;

    return-void
.end method

.method public n(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltc/h;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/capsule/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltc/h;

    invoke-virtual {v1}, Ltc/h;->d()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltc/h;

    invoke-virtual {v3}, Ltc/h;->d()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltc/h;

    invoke-virtual {v3}, Ltc/h;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    new-instance v4, Lcom/miui/permcenter/capsule/b$d;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/miui/permcenter/capsule/b$d;-><init>(Lcom/miui/permcenter/capsule/b$a;)V

    if-eqz v1, :cond_1

    iput-boolean v2, v4, Lcom/miui/permcenter/capsule/b$d;->a:Z

    goto :goto_1

    :cond_1
    iput-boolean v2, v4, Lcom/miui/permcenter/capsule/b$d;->c:Z

    :goto_1
    iget-object v1, p0, Lcom/miui/permcenter/capsule/b;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    new-instance v1, Lcom/miui/permcenter/capsule/b$d;

    invoke-direct {v1, v5}, Lcom/miui/permcenter/capsule/b$d;-><init>(Lcom/miui/permcenter/capsule/b$a;)V

    if-eqz v3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltc/h;

    invoke-virtual {v4}, Ltc/h;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v0, -0x1

    if-ltz v4, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltc/h;

    invoke-virtual {v4}, Ltc/h;->d()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/miui/permcenter/capsule/b$d;

    invoke-direct {v4, v5}, Lcom/miui/permcenter/capsule/b$d;-><init>(Lcom/miui/permcenter/capsule/b$a;)V

    iput-boolean v2, v4, Lcom/miui/permcenter/capsule/b$d;->b:Z

    iget-object v6, p0, Lcom/miui/permcenter/capsule/b;->b:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/miui/permcenter/capsule/b$d;

    invoke-direct {v4, v5}, Lcom/miui/permcenter/capsule/b$d;-><init>(Lcom/miui/permcenter/capsule/b$a;)V

    iput-boolean v2, v4, Lcom/miui/permcenter/capsule/b$d;->c:Z

    iget-object v6, p0, Lcom/miui/permcenter/capsule/b;->b:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltc/h;

    iput-object v4, v1, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    iget-object v4, p0, Lcom/miui/permcenter/capsule/b;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/miui/permcenter/capsule/b;->b:Ljava/util/List;

    move/from16 v3, p2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/capsule/b$d;

    instance-of v3, v1, Lcom/miui/permcenter/capsule/b$e;

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lcom/miui/permcenter/capsule/b$d;->a:Z

    if-eqz v3, :cond_0

    check-cast v1, Lcom/miui/permcenter/capsule/b$e;

    iget-object v1, v1, Lcom/miui/permcenter/capsule/b$e;->a:Landroid/widget/TextView;

    const v2, 0x7f121460

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_e

    :cond_0
    iget-boolean v2, v2, Lcom/miui/permcenter/capsule/b$d;->c:Z

    if-eqz v2, :cond_26

    check-cast v1, Lcom/miui/permcenter/capsule/b$e;

    iget-object v1, v1, Lcom/miui/permcenter/capsule/b$e;->a:Landroid/widget/TextView;

    const v2, 0x7f121469

    goto :goto_0

    :cond_1
    instance-of v3, v1, Lcom/miui/permcenter/capsule/b$c;

    if-eqz v3, :cond_26

    check-cast v1, Lcom/miui/permcenter/capsule/b$c;

    iget-object v3, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v3}, Ltc/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkc/c;->f(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->e()Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eqz v4, :cond_6

    const v4, 0x7f08051b

    iget-object v7, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v7}, Ltc/h;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/miui/permcenter/capsule/b;->a:Landroid/content/Context;

    iget-object v9, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v9}, Ltc/h;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lz4/b;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v7, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v6, :cond_2

    const v4, 0x7f080519

    goto :goto_1

    :cond_2
    iget-object v7, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v5, :cond_3

    const v4, 0x7f08051a

    goto :goto_1

    :cond_3
    iget-object v7, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x5

    if-ne v7, v9, :cond_4

    const v4, 0x7f080518

    :cond_4
    :goto_1
    iget-object v7, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    :cond_5
    iget-object v8, v1, Lcom/miui/permcenter/capsule/b$c;->b:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, v1, Lcom/miui/permcenter/capsule/b$c;->c:Landroid/widget/TextView;

    :goto_2
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->c()I

    move-result v4

    const/16 v7, 0x3e7

    if-ne v4, v7, :cond_7

    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->b()Ljava/lang/String;

    move-result-object v4

    const-string v7, "pkg_icon_xspace://"

    goto :goto_3

    :cond_7
    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->b()Ljava/lang/String;

    move-result-object v4

    const-string v7, "pkg_icon://"

    :goto_3
    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v1, Lcom/miui/permcenter/capsule/b$c;->b:Landroid/widget/ImageView;

    sget-object v8, Lx4/o0;->f:Lrh/c;

    const v9, 0x7f08092f

    invoke-static {v4, v7, v8, v9}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object v4, v1, Lcom/miui/permcenter/capsule/b$c;->c:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/miui/permcenter/capsule/b;->a:Landroid/content/Context;

    if-eqz v3, :cond_8

    invoke-static {v7}, Lkc/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_8
    iget-object v8, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v8}, Ltc/h;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/luckymoney/utils/PackageUtil;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :goto_4
    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->a()J

    move-result-wide v7

    const-wide/16 v9, 0x1000

    and-long/2addr v7, v9

    const-wide/16 v11, 0x0

    cmp-long v4, v7, v11

    const v7, 0x7f060cb2

    const/16 v8, 0x8

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v4, :cond_a

    iget-object v4, v1, Lcom/miui/permcenter/capsule/b$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v1, Lcom/miui/permcenter/capsule/b$c;->f:Landroid/widget/ImageView;

    iget-object v15, v0, Lcom/miui/permcenter/capsule/b;->a:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    iget-boolean v5, v0, Lcom/miui/permcenter/capsule/b;->d:Z

    if-eqz v5, :cond_9

    const v5, 0x7f060cb3

    goto :goto_5

    :cond_9
    move v5, v7

    :goto_5
    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    move v4, v13

    goto :goto_6

    :cond_a
    iget-object v4, v1, Lcom/miui/permcenter/capsule/b$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    move v4, v14

    :goto_6
    iget-object v5, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v5}, Ltc/h;->a()J

    move-result-wide v15

    const-wide/32 v17, 0x20000

    and-long v15, v15, v17

    cmp-long v5, v15, v11

    if-eqz v5, :cond_c

    add-int/lit8 v4, v4, 0x1

    iget-object v5, v1, Lcom/miui/permcenter/capsule/b$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v1, Lcom/miui/permcenter/capsule/b$c;->e:Landroid/widget/ImageView;

    iget-object v15, v0, Lcom/miui/permcenter/capsule/b;->a:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    iget-boolean v9, v0, Lcom/miui/permcenter/capsule/b;->d:Z

    if-eqz v9, :cond_b

    const v9, 0x7f060cb5

    goto :goto_7

    :cond_b
    move v9, v7

    :goto_7
    invoke-virtual {v15, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_8

    :cond_c
    iget-object v5, v1, Lcom/miui/permcenter/capsule/b$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    iget-object v5, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v5}, Ltc/h;->a()J

    move-result-wide v9

    const-wide/16 v15, 0x20

    and-long/2addr v9, v15

    cmp-long v5, v9, v11

    if-eqz v5, :cond_e

    add-int/lit8 v4, v4, 0x1

    iget-object v5, v1, Lcom/miui/permcenter/capsule/b$c;->d:Landroid/widget/ImageView;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v1, Lcom/miui/permcenter/capsule/b$c;->d:Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/miui/permcenter/capsule/b;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-boolean v10, v0, Lcom/miui/permcenter/capsule/b;->d:Z

    if-eqz v10, :cond_d

    const v10, 0x7f060cb4

    goto :goto_9

    :cond_d
    move v10, v7

    :goto_9
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_a

    :cond_e
    iget-object v5, v1, Lcom/miui/permcenter/capsule/b$c;->d:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_a
    iget-object v5, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v5}, Ltc/h;->a()J

    move-result-wide v9

    const-wide/16 v19, 0x1

    and-long v9, v9, v19

    cmp-long v5, v9, v11

    if-eqz v5, :cond_f

    add-int/lit8 v4, v4, 0x1

    iget-object v5, v1, Lcom/miui/permcenter/capsule/b$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v1, Lcom/miui/permcenter/capsule/b$c;->g:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/miui/permcenter/capsule/b;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_b

    :cond_f
    iget-object v5, v1, Lcom/miui/permcenter/capsule/b$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_b
    const/4 v5, 0x3

    if-ne v4, v5, :cond_11

    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->d()Z

    move-result v4

    if-eqz v4, :cond_10

    const v4, 0x7f121470

    goto/16 :goto_c

    :cond_10
    const v4, 0x7f121467

    goto/16 :goto_c

    :cond_11
    if-ne v4, v6, :cond_19

    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->e()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->d()Z

    move-result v4

    if-nez v4, :cond_12

    const v4, 0x7f121990    # 1.9420002E38f

    goto/16 :goto_c

    :cond_12
    const v4, 0x7f121993    # 1.9420008E38f

    goto/16 :goto_c

    :cond_13
    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->a()J

    move-result-wide v4

    const-wide/32 v6, 0x21000

    cmp-long v4, v4, v6

    if-nez v4, :cond_15

    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->d()Z

    move-result v4

    if-nez v4, :cond_14

    const v4, 0x7f121463

    goto/16 :goto_c

    :cond_14
    const v4, 0x7f12146c

    goto/16 :goto_c

    :cond_15
    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x1020

    cmp-long v4, v4, v6

    if-nez v4, :cond_17

    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->d()Z

    move-result v4

    if-nez v4, :cond_16

    const v4, 0x7f121462

    goto/16 :goto_c

    :cond_16
    const v4, 0x7f12146b

    goto/16 :goto_c

    :cond_17
    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->a()J

    move-result-wide v4

    const-wide/32 v6, 0x20020

    cmp-long v4, v4, v6

    if-nez v4, :cond_23

    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->d()Z

    move-result v4

    if-nez v4, :cond_18

    const v4, 0x7f121466

    goto/16 :goto_c

    :cond_18
    const v4, 0x7f12146f

    goto/16 :goto_c

    :cond_19
    if-ne v4, v13, :cond_23

    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->e()Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x1000

    cmp-long v4, v4, v6

    if-nez v4, :cond_1b

    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->d()Z

    move-result v4

    if-nez v4, :cond_1a

    const v4, 0x7f12198e    # 1.9419997E38f

    goto/16 :goto_c

    :cond_1a
    const v4, 0x7f121991    # 1.9420004E38f

    goto/16 :goto_c

    :cond_1b
    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->a()J

    move-result-wide v4

    cmp-long v4, v4, v19

    if-nez v4, :cond_23

    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->d()Z

    move-result v4

    if-nez v4, :cond_1c

    const v4, 0x7f12198f    # 1.942E38f

    goto :goto_c

    :cond_1c
    const v4, 0x7f121992    # 1.9420006E38f

    goto :goto_c

    :cond_1d
    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x1000

    cmp-long v4, v4, v6

    if-nez v4, :cond_1f

    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->d()Z

    move-result v4

    if-nez v4, :cond_1e

    const v4, 0x7f121461

    goto :goto_c

    :cond_1e
    const v4, 0x7f12146a

    goto :goto_c

    :cond_1f
    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->a()J

    move-result-wide v4

    cmp-long v4, v4, v17

    if-nez v4, :cond_21

    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->d()Z

    move-result v4

    if-nez v4, :cond_20

    const v4, 0x7f121465

    goto :goto_c

    :cond_20
    const v4, 0x7f12146e

    goto :goto_c

    :cond_21
    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->a()J

    move-result-wide v4

    cmp-long v4, v4, v15

    if-nez v4, :cond_23

    iget-object v4, v2, Lcom/miui/permcenter/capsule/b$d;->d:Ltc/h;

    invoke-virtual {v4}, Ltc/h;->d()Z

    move-result v4

    if-nez v4, :cond_22

    const v4, 0x7f121464

    goto :goto_c

    :cond_22
    const v4, 0x7f12146d

    goto :goto_c

    :cond_23
    move v4, v14

    :goto_c
    if-eqz v4, :cond_24

    iget-object v5, v1, Lcom/miui/permcenter/capsule/b$c;->h:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/miui/permcenter/capsule/b;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_24
    iget-object v4, v1, Lcom/miui/permcenter/capsule/b$c;->i:Landroid/widget/ImageView;

    if-eqz v3, :cond_25

    const/4 v5, 0x4

    goto :goto_d

    :cond_25
    move v5, v14

    :goto_d
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v1, Lcom/miui/permcenter/capsule/b$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v4, Lcom/miui/permcenter/capsule/a;

    invoke-direct {v4, v0, v3, v2}, Lcom/miui/permcenter/capsule/a;-><init>(Lcom/miui/permcenter/capsule/b;ZLcom/miui/permcenter/capsule/b$d;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_26
    :goto_e
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    new-instance p2, Lcom/miui/permcenter/capsule/b$e;

    iget-object v1, p0, Lcom/miui/permcenter/capsule/b;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e025d

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/capsule/b$e;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    new-instance p2, Lcom/miui/permcenter/capsule/b$f;

    iget-object v1, p0, Lcom/miui/permcenter/capsule/b;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e025e

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/capsule/b$f;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/miui/permcenter/capsule/b$c;

    iget-object v1, p0, Lcom/miui/permcenter/capsule/b;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e025c

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/capsule/b$c;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2
.end method
