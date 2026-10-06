.class public Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/FunctionCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FunctionViewHolder"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "FunctionViewHolder"


# instance fields
.field context:Landroid/content/Context;

.field divider:Landroid/view/View;

.field imgOption:Lrh/c;

.field ivBigBanner:Landroid/widget/ImageView;

.field menuFuncBinder:Lsf/i;

.field option:Lrh/c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    sget-object v0, Lx4/o0;->h:Lrh/c;

    iput-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->option:Lrh/c;

    sget-object v0, Lx4/o0;->c:Lrh/c;

    iput-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->imgOption:Lrh/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->context:Landroid/content/Context;

    const v0, 0x7f0b0332

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->divider:Landroid/view/View;

    const v0, 0x7f0b05ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060cdc

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$300(Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public bindData(ILjava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    instance-of p1, p2, Lsf/i;

    if-eqz p1, :cond_0

    check-cast p2, Lsf/i;

    iput-object p2, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->menuFuncBinder:Lsf/i;

    :cond_0
    return-void
.end method

.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    move-object p3, p2

    check-cast p3, Lcom/miui/common/card/models/FunctionCardModel;

    invoke-static {p3}, Lcom/miui/common/card/models/FunctionCardModel;->access$000(Lcom/miui/common/card/models/FunctionCardModel;)Lcom/miui/securityscan/model/AbsModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getOnAbsModelDisplayListener()Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getOnAbsModelDisplayListener()Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;->onAbsModelDisplay()V

    :cond_0
    invoke-virtual {p3}, Lcom/miui/common/card/models/FunctionCardModel;->getFunction()Lcom/miui/common/card/functions/BaseFunction;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->divider:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {p3}, Lcom/miui/common/card/models/FunctionCardModel;->access$100(Lcom/miui/common/card/models/FunctionCardModel;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->divider:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_5

    new-instance v2, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;

    invoke-direct {v2, p0, p3, v1, v0}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;-><init>(Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;Lcom/miui/common/card/models/FunctionCardModel;Lcom/miui/common/card/functions/BaseFunction;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-static {p1}, Lx4/h0;->b(Landroid/view/View;)Z

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p3}, Lcom/miui/common/card/models/FunctionCardModel;->access$500(Lcom/miui/common/card/models/FunctionCardModel;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v4}, Landroid/view/View;->setLongClickable(Z)V

    new-instance v1, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$2;-><init>(Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;Lcom/miui/securityscan/model/AbsModel;Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setLongClickable(Z)V

    :goto_1
    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->actionButton:Landroid/widget/Button;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->tvButton:Landroid/widget/Button;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3}, Lcom/miui/common/card/models/FunctionCardModel;->getScore()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->tvButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10008e

    invoke-virtual {p3}, Lcom/miui/common/card/models/FunctionCardModel;->getScore()I

    move-result v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/miui/common/card/models/FunctionCardModel;->getScore()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/common/card/BaseViewHolder;->tvButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    invoke-virtual {p3}, Lcom/miui/common/card/models/BaseCardModel;->getIcon()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const v0, 0x7f0804c9

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/miui/common/card/BaseViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->option:Lrh/c;

    invoke-static {p1, p2, v1, v0}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    invoke-virtual {p3}, Lcom/miui/common/card/models/FunctionCardModel;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const v0, 0x7f080495

    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    new-instance p2, Lcom/miui/common/card/FillParentDrawable;

    iget-object p3, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/miui/common/card/FillParentDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_8
    const-string p2, "drawable://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    instance-of v1, p3, Lcom/miui/common/card/models/FuncTopBannerCardModel;

    if-nez v1, :cond_9

    instance-of v1, p3, Lcom/miui/common/card/models/FuncTopBannerNewCardModel;

    if-nez v1, :cond_9

    instance-of p3, p3, Lcom/miui/common/card/models/FuncTopBannerNew2CardModel;

    if-eqz p3, :cond_a

    :cond_9
    :try_start_0
    iget-object p3, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string p2, "FunctionViewHolder"

    const-string p3, "the big banner set a image resource failed: "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_a
    iget-object p2, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->imgOption:Lrh/c;

    new-instance v1, Lcom/miui/common/card/FillParentDrawable;

    iget-object v2, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/miui/common/card/FillParentDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1, p2, p3, v1}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public setIconDisplayOption(Lrh/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->option:Lrh/c;

    return-void
.end method

.method public setImgDisplayOption(Lrh/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->imgOption:Lrh/c;

    return-void
.end method
