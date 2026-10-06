.class public Lcom/miui/common/card/models/FuncListTopCardModel$TopCardViewHolder;
.super Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/FuncListTopCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopCardViewHolder"
.end annotation


# instance fields
.field private mRightArrow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/common/card/models/FuncListTopCardModel$TopCardViewHolder;->mRightArrow:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->imageView:Landroid/widget/ImageView;

    instance-of v0, p1, Lcom/miui/common/widgets/gif/GifImageView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/common/widgets/gif/GifImageView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/miui/common/widgets/gif/GifImageView;->setRepeatCounts(I)V

    :cond_0
    new-instance p1, Lrh/c$b;

    invoke-direct {p1}, Lrh/c$b;-><init>()V

    const v0, 0x7f080823

    invoke-virtual {p1, v0}, Lrh/c$b;->I(I)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lrh/c$b;->H(I)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lrh/c$b;->G(I)Lrh/c$b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lrh/c$b;->F(Z)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object p1

    sget-object v1, Lsh/d;->d:Lsh/d;

    invoke-virtual {p1, v1}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1}, Lrh/c$b;->w()Lrh/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->setIconDisplayOption(Lrh/c;)V

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lcom/miui/common/card/models/FuncListTopCardModel;

    iget-object p3, p0, Lcom/miui/common/card/models/FuncListTopCardModel$TopCardViewHolder;->mRightArrow:Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-static {p2}, Lcom/miui/common/card/models/FuncListTopCardModel;->access$000(Lcom/miui/common/card/models/FuncListTopCardModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-static {p2}, Lcom/miui/common/card/models/FuncListTopCardModel;->access$000(Lcom/miui/common/card/models/FuncListTopCardModel;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/view/View;

    aput-object p1, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
