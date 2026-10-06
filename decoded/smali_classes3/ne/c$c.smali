.class Lne/c$c;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lne/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lne/c;


# direct methods
.method constructor <init>(Lne/c;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lne/c$c;->b:Lne/c;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lne/c$c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lne/c$c;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lne/c$c;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    if-nez p2, :cond_3

    iget-object v1, v0, Lne/c$c;->b:Lne/c;

    invoke-static {v1}, Lne/c;->d(Lne/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0410

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b00b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b00b5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v0, Lne/c$c;->b:Lne/c;

    invoke-virtual {v4}, Lne/c;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0b00b6

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v0, Lne/c$c;->b:Lne/c;

    invoke-virtual {v5}, Lne/c;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0b00b7

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0b0598

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0b00af

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b0599

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0b00b0

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0b059a

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0b00b1

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0b059b

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f0b00b2

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lne/c$c$a;

    invoke-direct {v14, v0, v7}, Lne/c$c$a;-><init>(Lne/c$c;Landroid/view/View;)V

    invoke-virtual {v6, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, Lne/c$c$b;

    invoke-direct {v14, v0, v9}, Lne/c$c$b;-><init>(Lne/c$c;Landroid/view/View;)V

    invoke-virtual {v8, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, Lne/c$c$c;

    invoke-direct {v14, v0, v11}, Lne/c$c$c;-><init>(Lne/c$c;Landroid/view/View;)V

    invoke-virtual {v10, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, Lne/c$c$d;

    invoke-direct {v14, v0, v13}, Lne/c$c$d;-><init>(Lne/c$c;Landroid/view/View;)V

    invoke-virtual {v12, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v14, v0, Lne/c$c;->b:Lne/c;

    invoke-static {v14}, Lne/c;->f(Lne/c;)I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v16, v1

    const/4 v1, 0x1

    if-ne v14, v1, :cond_0

    invoke-virtual {v7, v15}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lne/c$c;->b:Lne/c;

    invoke-static {v1}, Lne/c;->d(Lne/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060b92

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lne/c$c;->b:Lne/c;

    invoke-static {v1}, Lne/c;->d(Lne/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060b95

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_0
    iget-object v1, v0, Lne/c$c;->b:Lne/c;

    invoke-static {v1}, Lne/c;->f(Lne/c;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lne/c$c;->b:Lne/c;

    invoke-static {v1}, Lne/c;->d(Lne/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060b92

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lne/c$c;->b:Lne/c;

    invoke-static {v1}, Lne/c;->d(Lne/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060b95

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lne/c$c;->b:Lne/c;

    invoke-static {v1}, Lne/c;->f(Lne/c;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lne/c$c;->b:Lne/c;

    invoke-static {v1}, Lne/c;->d(Lne/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060b92

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lne/c$c;->b:Lne/c;

    invoke-static {v1}, Lne/c;->d(Lne/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060b95

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lne/c$c;->b:Lne/c;

    invoke-static {v1}, Lne/c;->f(Lne/c;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lne/c$c;->b:Lne/c;

    invoke-static {v1}, Lne/c;->d(Lne/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060b92

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lne/c$c;->b:Lne/c;

    invoke-static {v1}, Lne/c;->d(Lne/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060b95

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    move-object/from16 v16, p2

    :cond_4
    :goto_0
    return-object v16
.end method
