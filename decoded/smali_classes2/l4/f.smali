.class public Ll4/f;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ll4/b;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Landroid/view/View$OnClickListener;

.field protected d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll4/f;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll4/f;->b:Ljava/util/ArrayList;

    new-instance v0, Ll4/f$a;

    invoke-direct {v0, p0}, Ll4/f$a;-><init>(Ll4/f;)V

    iput-object v0, p0, Ll4/f;->c:Landroid/view/View$OnClickListener;

    new-instance v0, Ll4/f$b;

    invoke-direct {v0, p0}, Ll4/f$b;-><init>(Ll4/f;)V

    iput-object v0, p0, Ll4/f;->d:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public a(I)Ll4/b;
    .locals 1

    iget-object v0, p0, Ll4/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll4/b;

    return-object p1
.end method

.method protected b(Ljava/util/List;Ll4/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll4/b;",
            ">;",
            "Ll4/b;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    if-ltz v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ll4/k;

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ll4/k;

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ll4/b;)V
    .locals 1

    iget-object v0, p0, Ll4/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Ll4/f;->b(Ljava/util/List;Ll4/b;)V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public d(Ll4/b;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/b;",
            "Ljava/util/List<",
            "Ll4/b;",
            ">;",
            "Ljava/util/List<",
            "Ll4/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ll4/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_1

    iget-object v0, p0, Ll4/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll4/b;

    iget-object v1, p0, Ll4/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ll4/b;

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Ll4/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll4/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ll4/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Ll4/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p1, p0, Ll4/f;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Ll4/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll4/b;

    iget-object v1, p0, Ll4/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ll4/b;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ll4/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ll4/b;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Ll4/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ll4/f;->a(I)Ll4/b;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Ll4/f;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ll4/f;->a(I)Ll4/b;

    move-result-object p1

    invoke-virtual {p1}, Ll4/b;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Ll4/f;->a(I)Ll4/b;

    move-result-object v1

    invoke-virtual {v1}, Ll4/b;->b()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0526

    if-nez p2, :cond_1

    const/4 v5, 0x0

    invoke-static {v3, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0b0b55

    invoke-virtual {v5, v6, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v6, v0, Ll4/f;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0b054c

    const v7, 0x7f0b01d8

    const v8, 0x7f0b0b21

    const v9, 0x7f0b0bc9

    if-eq v2, v4, :cond_0

    const v10, 0x7f0b053c

    const v11, 0x7f0b053b

    const v12, 0x7f0b0174

    const v13, 0x7f0b053a

    const v14, 0x7f0b0575

    const v15, 0x7f0b025b

    const v4, 0x7f0b0506

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_5

    :pswitch_0
    new-instance v4, Ll4/f0;

    invoke-direct {v4}, Ll4/f0;-><init>()V

    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/f0;->a:Landroid/widget/TextView;

    const v6, 0x7f0b02b0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/f0;->b:Landroid/widget/TextView;

    const v6, 0x7f0b0140

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v4, Ll4/f0;->c:Landroid/view/View;

    const v6, 0x7f0b021d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/f0;->d:Landroid/widget/TextView;

    goto/16 :goto_5

    :pswitch_1
    new-instance v4, Ll4/g0;

    invoke-direct {v4}, Ll4/g0;-><init>()V

    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/g0;->a:Landroid/widget/TextView;

    const v6, 0x7f0b027f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v4, Ll4/g0;->b:Landroid/view/ViewGroup;

    const v6, 0x7f0b06c2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v4, Ll4/g0;->c:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v4, Ll4/g0;->d:Landroid/widget/Button;

    goto/16 :goto_0

    :pswitch_2
    new-instance v4, Ll4/e0;

    invoke-direct {v4}, Ll4/e0;-><init>()V

    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/e0;->a:Landroid/widget/TextView;

    goto/16 :goto_5

    :pswitch_3
    new-instance v6, Ll4/a0;

    invoke-direct {v6}, Ll4/a0;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v6, Ll4/a0;->a:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v6, Ll4/a0;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v6, Ll4/a0;->c:Landroid/widget/TextView;

    const v4, 0x7f0b074f

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v6, Ll4/a0;->d:Landroid/widget/TextView;

    const v4, 0x7f0b0d9e

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v6, Ll4/a0;->e:Landroid/widget/TextView;

    goto/16 :goto_5

    :pswitch_4
    new-instance v6, Ll4/x;

    invoke-direct {v6}, Ll4/x;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v6, Ll4/x;->a:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v6, Ll4/x;->b:Landroid/widget/TextView;

    goto/16 :goto_5

    :pswitch_5
    new-instance v6, Ll4/z;

    invoke-direct {v6}, Ll4/z;-><init>()V

    goto/16 :goto_1

    :pswitch_6
    new-instance v4, Ll4/v;

    invoke-direct {v4}, Ll4/v;-><init>()V

    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/v;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v4, Ll4/v;->b:Landroid/widget/Button;

    iget-object v6, v4, Ll4/v;->c:[Landroid/widget/ImageView;

    const/4 v7, 0x0

    const v8, 0x7f0b0507

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    aput-object v8, v6, v7

    iget-object v6, v4, Ll4/v;->c:[Landroid/widget/ImageView;

    const/4 v7, 0x1

    const v8, 0x7f0b050b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    aput-object v8, v6, v7

    iget-object v6, v4, Ll4/v;->c:[Landroid/widget/ImageView;

    const/4 v7, 0x2

    const v8, 0x7f0b050d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    aput-object v8, v6, v7

    iget-object v6, v4, Ll4/v;->c:[Landroid/widget/ImageView;

    const/4 v7, 0x3

    const v8, 0x7f0b050f

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    aput-object v8, v6, v7

    iget-object v4, v4, Ll4/v;->b:Landroid/widget/Button;

    goto/16 :goto_2

    :pswitch_7
    new-instance v4, Ll4/u;

    invoke-direct {v4}, Ll4/u;-><init>()V

    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v6, 0x7f0b051d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v4, Ll4/u;->a:Landroid/view/View;

    const v7, 0x7f0b0b11

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/u;->d:Landroid/widget/TextView;

    iget-object v6, v4, Ll4/u;->a:Landroid/view/View;

    const v8, 0x7f0b0b10

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Ll4/u;->g:Landroid/widget/ImageView;

    iget-object v6, v4, Ll4/u;->a:Landroid/view/View;

    iget-object v9, v0, Ll4/f;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0b051e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v4, Ll4/u;->b:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/u;->e:Landroid/widget/TextView;

    iget-object v6, v4, Ll4/u;->b:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Ll4/u;->h:Landroid/widget/ImageView;

    iget-object v6, v4, Ll4/u;->b:Landroid/view/View;

    iget-object v9, v0, Ll4/f;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0b051f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v4, Ll4/u;->c:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/u;->f:Landroid/widget/TextView;

    iget-object v6, v4, Ll4/u;->c:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Ll4/u;->i:Landroid/widget/ImageView;

    iget-object v4, v4, Ll4/u;->c:Landroid/view/View;

    goto/16 :goto_2

    :pswitch_8
    new-instance v4, Ll4/w;

    invoke-direct {v4}, Ll4/w;-><init>()V

    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Ll4/w;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/w;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/w;->b:Landroid/widget/TextView;

    goto/16 :goto_5

    :pswitch_9
    new-instance v4, Ll4/w;

    invoke-direct {v4}, Ll4/w;-><init>()V

    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Ll4/w;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/w;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/w;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v4, Ll4/w;->d:Landroid/widget/Button;

    :goto_0
    iget-object v4, v0, Ll4/f;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    :pswitch_a
    new-instance v6, Ll4/r;

    invoke-direct {v6}, Ll4/r;-><init>()V

    goto :goto_1

    :pswitch_b
    new-instance v6, Ll4/q;

    invoke-direct {v6}, Ll4/q;-><init>()V

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v6, Ll4/z;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v6, Ll4/z;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v6, Ll4/z;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v6, Ll4/z;->e:Landroid/widget/Button;

    :goto_2
    iget-object v6, v0, Ll4/f;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    :pswitch_c
    invoke-static {v5, v1}, Ll4/j;->c(Landroid/view/View;Ll4/b;)Lw9/c;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-boolean v6, v4, Lw9/c;->j:Z

    if-eqz v6, :cond_2

    iget-object v6, v4, Lw9/c;->g:Landroid/view/View;

    iget-object v7, v0, Ll4/f;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v4, Lw9/c;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    goto/16 :goto_5

    :pswitch_d
    new-instance v6, Ll4/b0;

    invoke-direct {v6}, Ll4/b0;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v6, Ll4/b0;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v6, Ll4/b0;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v6, Ll4/b0;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v6, Ll4/b0;->e:Landroid/widget/Button;

    iget-object v7, v0, Ll4/f;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v6, Ll4/b0;->f:Landroid/view/View;

    goto/16 :goto_4

    :pswitch_e
    new-instance v4, Ll4/t;

    invoke-direct {v4}, Ll4/t;-><init>()V

    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/t;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/t;->c:Landroid/widget/TextView;

    const v6, 0x7f0b0341

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/t;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Ll4/t;->e:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Ll4/t;->f:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Ll4/t;->g:Landroid/widget/ImageView;

    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v4, Ll4/t;->h:Landroid/view/View;

    goto/16 :goto_3

    :pswitch_f
    new-instance v4, Ll4/s;

    invoke-direct {v4}, Ll4/s;-><init>()V

    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Ll4/s;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/s;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/s;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v4, Ll4/s;->e:Landroid/view/View;

    goto :goto_3

    :pswitch_10
    new-instance v4, Ll4/p;

    invoke-direct {v4}, Ll4/p;-><init>()V

    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/p;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/p;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Ll4/p;->d:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Ll4/p;->e:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Ll4/p;->f:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v4, Ll4/p;->g:Landroid/widget/Button;

    iget-object v7, v0, Ll4/f;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v4, Ll4/p;->h:Landroid/view/View;

    goto :goto_3

    :pswitch_11
    new-instance v4, Ll4/c0;

    invoke-direct {v4}, Ll4/c0;-><init>()V

    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Ll4/c0;->d:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/c0;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Ll4/c0;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v4, Ll4/c0;->e:Landroid/view/View;

    :goto_3
    iget-object v7, v0, Ll4/f;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v4, Ll4/d0;->a:Landroid/view/View;

    goto :goto_5

    :pswitch_12
    new-instance v6, Ll4/y;

    invoke-direct {v6}, Ll4/y;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v6, Ll4/y;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v6, Ll4/y;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v6, Ll4/y;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v6, Ll4/y;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v6, Ll4/y;->f:Landroid/widget/Button;

    iget-object v7, v0, Ll4/f;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v6, Ll4/y;->g:Landroid/view/View;

    :goto_4
    iget-object v7, v0, Ll4/f;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v6, Ll4/d0;->a:Landroid/view/View;

    goto :goto_5

    :cond_0
    new-instance v4, Ll4/h0;

    invoke-direct {v4}, Ll4/h0;-><init>()V

    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v4, Ll4/z;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v4, Ll4/z;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Ll4/z;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v4, Ll4/z;->e:Landroid/widget/Button;

    goto/16 :goto_0

    :cond_1
    move-object/from16 v5, p2

    :cond_2
    :goto_5
    const v4, 0x7f0e0522

    if-eq v2, v4, :cond_5

    const v4, 0x7f0e0526

    if-eq v2, v4, :cond_4

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    packed-switch v2, :pswitch_data_5

    packed-switch v2, :pswitch_data_6

    :cond_3
    :goto_6
    move/from16 v2, p1

    goto/16 :goto_9

    :pswitch_13
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll4/v;

    iget-object v2, v2, Ll4/v;->b:Landroid/widget/Button;

    goto/16 :goto_8

    :pswitch_14
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll4/u;

    iget-object v4, v2, Ll4/u;->a:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, v2, Ll4/u;->b:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v2, Ll4/u;->c:Landroid/view/View;

    goto :goto_8

    :pswitch_15
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll4/w;

    iget-object v2, v2, Ll4/w;->d:Landroid/widget/Button;

    goto :goto_8

    :pswitch_16
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll4/z;

    :goto_7
    iget-object v2, v2, Ll4/z;->e:Landroid/widget/Button;

    goto :goto_8

    :pswitch_17
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw9/c;

    iget-boolean v4, v2, Lw9/c;->j:Z

    if-eqz v4, :cond_3

    iget-object v2, v2, Lw9/c;->g:Landroid/view/View;

    goto :goto_8

    :pswitch_18
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll4/b0;

    iget-object v4, v2, Ll4/b0;->e:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v2, Ll4/b0;->f:Landroid/view/View;

    goto :goto_8

    :pswitch_19
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll4/t;

    iget-object v2, v2, Ll4/t;->h:Landroid/view/View;

    goto :goto_8

    :pswitch_1a
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll4/s;

    iget-object v2, v2, Ll4/s;->e:Landroid/view/View;

    goto :goto_8

    :pswitch_1b
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll4/p;

    iget-object v4, v2, Ll4/p;->g:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v2, Ll4/p;->h:Landroid/view/View;

    goto :goto_8

    :pswitch_1c
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll4/c0;

    iget-object v2, v2, Ll4/c0;->e:Landroid/view/View;

    goto :goto_8

    :pswitch_1d
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll4/y;

    iget-object v4, v2, Ll4/y;->f:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v2, Ll4/y;->g:Landroid/view/View;

    :goto_8
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll4/h0;

    goto :goto_7

    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll4/g0;

    iget-object v2, v2, Ll4/g0;->d:Landroid/widget/Button;

    goto :goto_8

    :goto_9
    invoke-virtual {v1, v2, v5, v3, v0}, Ll4/b;->a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x7f0e0484
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0e048d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0e0515
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7f0e0484
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7f0e048d
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x7f0e0515
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x7f0e051a
        :pswitch_14
        :pswitch_13
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Ll4/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method
