.class public Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/NewsCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewsViewHolder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private newsCardModelOptions:Lrh/c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object v0

    sget-object v2, Lsh/d;->d:Lsh/d;

    invoke-virtual {v0, v2}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object v0

    const v2, 0x7f0804c9

    invoke-virtual {v0, v2}, Lrh/c$b;->H(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lrh/c$b;->G(I)Lrh/c$b;

    move-result-object v0

    new-instance v2, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder$1;

    invoke-direct {v2, p0}, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder$1;-><init>(Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;)V

    invoke-virtual {v0, v2}, Lrh/c$b;->D(Lzh/a;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->newsCardModelOptions:Lrh/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->context:Landroid/content/Context;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lx4/h0;->e(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;)Lrh/c;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->newsCardModelOptions:Lrh/c;

    return-object p0
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lcom/miui/common/card/models/NewsCardModel;

    instance-of p3, p2, Lcom/miui/common/card/models/NewsListBannerCardModel;

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->access$100(Lcom/miui/common/card/models/NewsCardModel;)Z

    move-result p3

    const v1, 0x7f0804c0

    const v2, 0x7f0804c1

    const v3, 0x7f0719f8

    const v4, 0x7f0719d9

    if-eqz p3, :cond_2

    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->access$200(Lcom/miui/common/card/models/NewsCardModel;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->access$300(Lcom/miui/common/card/models/NewsCardModel;)Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f0804c3

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p3, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget-object v1, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v1, p3, v2, p3}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto/16 :goto_1

    :cond_0
    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->access$300(Lcom/miui/common/card/models/NewsCardModel;)Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x7f0804c4

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p3, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget-object v1, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v1, p3, v2, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->access$200(Lcom/miui/common/card/models/NewsCardModel;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->access$200(Lcom/miui/common/card/models/NewsCardModel;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->access$300(Lcom/miui/common/card/models/NewsCardModel;)Z

    move-result p3

    if-eqz p3, :cond_3

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p3, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget-object v1, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, p3}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->access$300(Lcom/miui/common/card/models/NewsCardModel;)Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->access$200(Lcom/miui/common/card/models/NewsCardModel;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_6
    const p3, 0x7f0804bc

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    new-instance p3, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder$2;

    invoke-direct {p3, p0, p2}, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder$2;-><init>(Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;Lcom/miui/common/card/models/NewsCardModel;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->access$400(Lcom/miui/common/card/models/NewsCardModel;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    iget-object p2, p0, Lcom/miui/common/card/BaseViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->newsCardModelOptions:Lrh/c;

    invoke-static {p1, p2, p3}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :cond_7
    return-void
.end method

.method protected setIconDisplayOption(Lrh/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->newsCardModelOptions:Lrh/c;

    return-void
.end method
