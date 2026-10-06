.class public Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/AdvInternationalCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternationalAdvViewHolder"
.end annotation


# instance fields
.field private mInternationalVH:Lw9/c;

.field private option:Lrh/c;

.field final synthetic this$0:Lcom/miui/common/card/models/AdvInternationalCardModel;


# direct methods
.method public constructor <init>(Lcom/miui/common/card/models/AdvInternationalCardModel;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->this$0:Lcom/miui/common/card/models/AdvInternationalCardModel;

    invoke-direct {p0, p2}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    sget-object v0, Lx4/o0;->h:Lrh/c;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->option:Lrh/c;

    invoke-static {p2, p1}, Lsf/f;->c(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;)Lw9/c;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lw9/c;

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 5

    const-string p3, "AdvInternationalCardModel"

    const-string v0, "International Ads"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p2, Lcom/miui/common/card/models/AdvInternationalCardModel;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/miui/common/card/models/AdvInternationalCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getPositionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsf/f;->h(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "International Ads reportPV : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p3, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->this$0:Lcom/miui/common/card/models/AdvInternationalCardModel;

    invoke-static {p3}, Lcom/miui/common/card/models/AdvInternationalCardModel;->access$000(Lcom/miui/common/card/models/AdvInternationalCardModel;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lw9/c;

    iget-boolean v2, p3, Lw9/c;->j:Z

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvInternationalCardModel;->getGlobalADType()I

    move-result v2

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p3, v2, v3}, Lsf/f;->b(Lw9/c;ILjava/lang/Object;)V

    :cond_2
    iget-object p3, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lw9/c;

    iget-object p3, p3, Lw9/c;->h:Landroid/view/View;

    const v2, 0x7f0804c3

    invoke-virtual {p3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p3, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lw9/c;

    iget-object p3, p3, Lw9/c;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lw9/c;

    iget-object p3, p3, Lw9/c;->e:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->this$0:Lcom/miui/common/card/models/AdvInternationalCardModel;

    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->getCta()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->getSummary()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lw9/c;

    iget-object p3, p3, Lw9/c;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lw9/c;

    iget-object p3, p3, Lw9/c;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lw9/c;

    iget-object p3, p3, Lw9/c;->b:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p3, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lw9/c;

    iget-object p3, p3, Lw9/c;->d:Landroid/widget/ImageView;

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->getIcon()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lw9/c;

    iget-object v2, v2, Lw9/c;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->option:Lrh/c;

    const v4, 0x7f0804c9

    invoke-static {p3, v2, v3, v4}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :cond_4
    iget-object p3, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lw9/c;

    iget-object p3, p3, Lw9/c;->c:Landroid/view/View;

    instance-of p3, p3, Landroid/widget/ImageView;

    if-eqz p3, :cond_5

    new-instance p3, Lcom/miui/common/card/FillParentDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080494

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p3, v2}, Lcom/miui/common/card/FillParentDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object v2, p2

    check-cast v2, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->getMultiImgUrls()[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    iget-object v2, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lw9/c;

    iget-object v2, v2, Lw9/c;->c:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    sget-object v3, Lx4/o0;->b:Lrh/c;

    invoke-static {v1, v2, v3, p3}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz v0, :cond_6

    iget-object p3, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lw9/c;

    iget-object p3, p3, Lw9/c;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvInternationalCardModel;->getGlobalADType()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getObject()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lw9/c;

    iget-object v2, v2, Lw9/c;->i:Landroid/view/View;

    invoke-static {p1, p3, v1, v0, v2}, Lsf/f;->i(Landroid/content/Context;Landroid/widget/RelativeLayout;ILjava/lang/Object;Landroid/view/View;)V

    :cond_6
    iget-object p1, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lw9/c;

    iget-object p1, p1, Lw9/c;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p1, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lw9/c;

    iget-object p1, p1, Lw9/c;->g:Landroid/view/View;

    new-instance p3, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder$1;

    invoke-direct {p3, p0, p2}, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder$1;-><init>(Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_7
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
