.class public Lcd/e$a;
.super Lcd/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcd/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:[Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Lcd/g$a;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lcd/g$a;->a:Landroid/view/View;

    const v0, 0x7f0b0b21

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcd/e$a;->z:Landroid/widget/TextView;

    iget-object p1, p0, Lcd/g$a;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcd/e$a;->A:Landroid/widget/TextView;

    iget-object p1, p0, Lcd/g$a;->i:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcd/e$a;->B:Landroid/widget/TextView;

    iget-object p1, p0, Lcd/g$a;->m:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcd/e$a;->C:Landroid/widget/TextView;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v1, p0, Lcd/e$a;->z:Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcd/e$a;->A:Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcd/e$a;->B:Landroid/widget/TextView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p1, v0, v1

    iput-object v0, p0, Lcd/e$a;->D:[Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcd/g$a;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lcd/g;

    invoke-virtual {p2}, Lcom/miui/common/card/models/FunctionCardModel;->getGridFunctionDataList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcd/e$a;->D:[Landroid/widget/TextView;

    array-length p3, p3

    if-ge p2, p3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/common/card/GridFunctionData;

    iget-object v0, p0, Lcd/g$a;->s:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    invoke-virtual {p3}, Lcom/miui/common/card/GridFunctionData;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcd/e$a;->D:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    invoke-virtual {p3}, Lcom/miui/common/card/GridFunctionData;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
