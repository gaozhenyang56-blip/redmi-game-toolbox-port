.class public Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/ActivityCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityViewHolder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityViewHolder"


# instance fields
.field option:Lrh/c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    sget-object v0, Lx4/o0;->h:Lrh/c;

    iput-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->option:Lrh/c;

    invoke-static {p1}, Lx4/h0;->b(Landroid/view/View;)Z

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    check-cast p2, Lcom/miui/common/card/models/ActivityCardModel;

    new-instance v0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder$1;-><init>(Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;Lcom/miui/common/card/models/ActivityCardModel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->access$000(Lcom/miui/common/card/models/ActivityCardModel;)I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->access$000(Lcom/miui/common/card/models/ActivityCardModel;)I

    move-result p1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/miui/common/card/FillParentDrawable;

    const v1, 0x7f080494

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/miui/common/card/FillParentDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->access$100(Lcom/miui/common/card/models/ActivityCardModel;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/card/BaseViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->option:Lrh/c;

    invoke-static {v1, v2, v3, p1}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->access$100(Lcom/miui/common/card/models/ActivityCardModel;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/common/card/BaseViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->option:Lrh/c;

    const v3, 0x7f0804c9

    invoke-static {p1, v1, v2, v3}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->actionButton:Landroid/widget/Button;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->access$200(Lcom/miui/common/card/models/ActivityCardModel;)I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->actionButton:Landroid/widget/Button;

    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->access$200(Lcom/miui/common/card/models/ActivityCardModel;)I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->actionButton:Landroid/widget/Button;

    const v0, 0x7f060159

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f070278

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 p3, 0x0

    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->access$300(Lcom/miui/common/card/models/ActivityCardModel;)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->access$400(Lcom/miui/common/card/models/ActivityCardModel;)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->access$300(Lcom/miui/common/card/models/ActivityCardModel;)I

    move-result p3

    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->access$400(Lcom/miui/common/card/models/ActivityCardModel;)I

    move-result p2

    invoke-static {p1, p3, p2}, Lof/f;->a(FII)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_4
    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->actionButton:Landroid/widget/Button;

    if-eqz p3, :cond_5

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    const p2, 0x7f0809da

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public setIconDisplayOption(Lrh/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->option:Lrh/c;

    return-void
.end method
