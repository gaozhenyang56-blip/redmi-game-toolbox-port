.class public Lq5/d$a;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lq5/d$a;->initView(Landroid/view/View;)V

    invoke-static {p1}, Lx4/h0;->b(Landroid/view/View;)Z

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0b0c85

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lq5/d$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b0cf3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lq5/d$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0ce1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lq5/d$a;->c:Landroid/widget/TextView;

    const v0, 0x7f0b01a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lq5/d$a;->d:Landroid/widget/Button;

    iget-object v0, p0, Lq5/d$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060cdc

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lq5/d;

    invoke-static {p2}, Lq5/d;->a(Lq5/d;)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->getIcon()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lq5/d$a;->a:Landroid/widget/ImageView;

    sget-object v2, Lx4/o0;->h:Lrh/c;

    const v3, 0x7f0804ca

    invoke-static {v0, v1, v2, v3}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object v0, p0, Lq5/d$a;->b:Landroid/widget/TextView;

    invoke-static {p2}, Lq5/d;->b(Lq5/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lq5/d$a;->c:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/securityscan/model/AbsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lq5/d$a;->d:Landroid/widget/Button;

    invoke-virtual {p3}, Lcom/miui/securityscan/model/AbsModel;->getButtonTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Lq5/d$a$a;

    invoke-direct {p2, p0, p3}, Lq5/d$a$a;-><init>(Lq5/d$a;Lcom/miui/securityscan/model/AbsModel;)V

    iget-object p3, p0, Lq5/d$a;->d:Landroid/widget/Button;

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
