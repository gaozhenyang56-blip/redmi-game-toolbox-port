.class public Lq5/e$a;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq5/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0534

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lq5/e$a;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b060c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lq5/e$a;->b:Landroid/widget/ImageView;

    invoke-static {p1}, Lx4/h0;->b(Landroid/view/View;)Z

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    move-object p3, p2

    check-cast p3, Lq5/e;

    iget-object v0, p0, Lcom/miui/common/card/BaseViewHolder;->titleView:Landroid/widget/TextView;

    invoke-static {p3}, Lq5/e;->a(Lq5/e;)Lcom/miui/securityscan/model/AbsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/card/BaseViewHolder;->summaryView:Landroid/widget/TextView;

    invoke-static {p3}, Lq5/e;->a(Lq5/e;)Lcom/miui/securityscan/model/AbsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/card/BaseViewHolder;->tvButton:Landroid/widget/Button;

    invoke-static {p3}, Lq5/e;->a(Lq5/e;)Lcom/miui/securityscan/model/AbsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->getButtonTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lq5/e;->a(Lq5/e;)Lcom/miui/securityscan/model/AbsModel;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/firstaidkit/model/other/SimModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq5/e$a;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lq5/e$a;->b:Landroid/widget/ImageView;

    const v1, 0x7f080fa6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq5/e$a;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    new-instance v0, Lq5/e$a$a;

    invoke-direct {v0, p0, p3}, Lq5/e$a$a;-><init>(Lq5/e$a;Lq5/e;)V

    iget-object v1, p0, Lcom/miui/common/card/BaseViewHolder;->tvButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lq5/e$a;->a:Landroid/widget/TextView;

    new-instance v1, Lq5/e$a$b;

    invoke-direct {v1, p0, p3, p2}, Lq5/e$a$b;-><init>(Lq5/e$a;Lq5/e;Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lq5/e$a$c;

    invoke-direct {v0, p0, p3, p2}, Lq5/e$a$c;-><init>(Lq5/e$a;Lq5/e;Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
