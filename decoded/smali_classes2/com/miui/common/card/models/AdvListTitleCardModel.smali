.class public Lcom/miui/common/card/models/AdvListTitleCardModel;
.super Lcom/miui/common/card/models/TitleCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvListTitleCardModel"


# instance fields
.field private usePosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const v0, 0x7f0e00d1

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/TitleCardModel;-><init>(I)V

    iput p1, p0, Lcom/miui/common/card/models/AdvListTitleCardModel;->usePosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/common/card/models/AdvListTitleCardModel;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/card/models/AdvListTitleCardModel;->usePosition:I

    return p0
.end method

.method private closeNormalAd(Lcom/miui/securityscan/BaseAdvActivity;Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0492

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-direct {v3, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/high16 v4, -0x80000000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/16 v5, 0xa

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->measure(II)V

    new-instance v2, Lcom/miui/common/card/models/AdvListTitleCardModel$1;

    invoke-direct {v2, p0, v3, p1}, Lcom/miui/common/card/models/AdvListTitleCardModel$1;-><init>(Lcom/miui/common/card/models/AdvListTitleCardModel;Landroid/widget/PopupWindow;Lcom/miui/securityscan/BaseAdvActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const v4, 0x7f0719fb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v4, 0x0

    aget v5, v2, v4

    sub-int/2addr v5, p1

    aget p1, v2, v0

    sub-int/2addr p1, v1

    invoke-virtual {v3, p2, v4, v5, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private closeNormalAdNewStyle(Lcom/miui/securityscan/BaseAdvActivity;)V
    .locals 7

    invoke-static {}, Lc3/k;->g()Lc3/k;

    move-result-object v0

    new-instance v2, Lcom/miui/common/card/models/AdvListTitleCardModel$2;

    invoke-direct {v2, p0, p1}, Lcom/miui/common/card/models/AdvListTitleCardModel$2;-><init>(Lcom/miui/common/card/models/AdvListTitleCardModel;Lcom/miui/securityscan/BaseAdvActivity;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc3/k;->h(Landroid/content/Context;)Z

    move-result v1

    const-string v6, "AdvListTitleCardModel"

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v4, v3, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v3}, Lcom/miui/common/card/models/AdvCardModel;->getEx()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    :try_start_0
    invoke-static {}, Lef/d0;->a()I

    move-result v1

    const/16 v3, 0xa

    if-lt v1, v3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.miui.securitycenter_scanresult"

    invoke-virtual/range {v0 .. v5}, Lc3/k;->k(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.miui.securitycenter_scanresult"

    const/4 p1, 0x0

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lc3/k;->j(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "showDislikeWindow failed,maybe method showDislikeWindow() does not match or exits "

    goto :goto_1

    :cond_3
    const-string p1, "connect failed,maybe not support dislike window"

    :goto_1
    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public isLocal()Z
    .locals 3

    invoke-virtual {p0}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v2, v0, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/BaseAdvActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0d83

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lef/d0;->a()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/card/models/AdvListTitleCardModel;->isLocal()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/AdvListTitleCardModel;->closeNormalAdNewStyle(Lcom/miui/securityscan/BaseAdvActivity;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/miui/common/card/models/AdvListTitleCardModel;->closeNormalAd(Lcom/miui/securityscan/BaseAdvActivity;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
