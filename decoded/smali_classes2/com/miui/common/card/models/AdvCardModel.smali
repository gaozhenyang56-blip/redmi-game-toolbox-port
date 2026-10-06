.class public Lcom/miui/common/card/models/AdvCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source "SourceFile"

# interfaces
.implements Lw9/b$a;
.implements Lx4/p$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;,
        Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;
    }
.end annotation


# static fields
.field private static final MAX_IMG_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AdvCardModel"

.field private static final TAG_CLOSE_NEW_STYLE:Ljava/lang/String; = "closeNormalAdNewStyle"


# instance fields
.field private actionUrl:Ljava/lang/String;

.field private allDownloadNum:J

.field private appChannel:Ljava/lang/String;

.field private appClientId:Ljava/lang/String;

.field private appDeveloper:Ljava/lang/String;

.field private appIntroduction:Ljava/lang/String;

.field private appPermission:Ljava/lang/String;

.field private appPrivacy:Ljava/lang/String;

.field private appRef:Ljava/lang/String;

.field private appSignature:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private autoOpen:Z

.field private btnBgColorDownloading2:Ljava/lang/String;

.field private btnBgColorNormal2:Ljava/lang/String;

.field private btnBgColorOpenN2:Ljava/lang/String;

.field private btnBgColorOpenP2:Ljava/lang/String;

.field private btnBgColorPressed2:Ljava/lang/String;

.field private buttonColor2:Ljava/lang/String;

.field private buttonOpen:Ljava/lang/String;

.field private buttonOpenColor2:Ljava/lang/String;

.field private clickMonitorUrls:[Ljava/lang/String;

.field private cta:Ljava/lang/String;

.field private dataId:Ljava/lang/String;

.field private deepLink:Ljava/lang/String;

.field private donwloadCountStr:Ljava/lang/String;

.field private dspName:Ljava/lang/String;

.field private ex:Ljava/lang/String;

.field private floatCardData:Ljava/lang/String;

.field private id:I

.field private landingPageUrl:Ljava/lang/String;

.field private local:Z

.field private transient mCloseView:Landroid/view/View;

.field protected multiImgUrls:[Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private transient object:Ljava/lang/Object;

.field private packageName:Ljava/lang/String;

.field private position:I

.field private positionId:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private targetType:I

.field private template:I

.field private testId:Ljava/lang/String;

.field private trackingStrategy:Ljava/lang/String;

.field private usePosition:I

.field private validTime:J

.field private viewMonitorUrls:[Ljava/lang/String;


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/common/card/models/AdvCardModel;->position:I

    invoke-virtual {p0, p2}, Lcom/miui/common/card/models/AdvCardModel;->init(Lorg/json/JSONObject;)V

    iput p3, p0, Lcom/miui/common/card/models/AdvCardModel;->usePosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/common/card/models/AdvCardModel;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/common/card/models/AdvCardModel;->allDownloadNum:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/miui/common/card/models/AdvCardModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/AdvCardModel;->donwloadCountStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/common/card/models/AdvCardModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/AdvCardModel;->appDeveloper:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/common/card/models/AdvCardModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/AdvCardModel;->dspName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/common/card/models/AdvCardModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/AdvCardModel;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/common/card/models/AdvCardModel;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/card/models/AdvCardModel;->template:I

    return p0
.end method

.method static synthetic access$600(Lcom/miui/common/card/models/AdvCardModel;Landroid/content/Context;Landroid/widget/TextView;Lcom/miui/common/card/models/AdvCardModel;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/common/card/models/AdvCardModel;->setDonwloadButtonStatus(Landroid/content/Context;Landroid/widget/TextView;Lcom/miui/common/card/models/AdvCardModel;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/common/card/models/AdvCardModel;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/card/models/AdvCardModel;->usePosition:I

    return p0
.end method

.method static synthetic access$900(Lcom/miui/common/card/models/AdvCardModel;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/AdvCardModel;->object:Ljava/lang/Object;

    return-object p0
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

    new-instance v2, Lcom/miui/common/card/models/AdvCardModel$1;

    invoke-direct {v2, p0, v3, p1}, Lcom/miui/common/card/models/AdvCardModel$1;-><init>(Lcom/miui/common/card/models/AdvCardModel;Landroid/widget/PopupWindow;Lcom/miui/securityscan/BaseAdvActivity;)V

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

    new-instance v2, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;

    invoke-direct {v2, p0, p1}, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;-><init>(Lcom/miui/common/card/models/AdvCardModel;Lcom/miui/securityscan/BaseAdvActivity;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc3/k;->h(Landroid/content/Context;)Z

    move-result v1

    const-string v6, "closeNormalAdNewStyle"

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.miui.securitycenter_scanresult"

    invoke-virtual {p0}, Lcom/miui/common/card/models/AdvCardModel;->getEx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lc3/k;->j(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "showDislikeWindow failed,maybe method showDislikeWindow() does not match or exits "

    goto :goto_0

    :cond_0
    const-string p1, "connect failed,maybe not support dislike window"

    :goto_0
    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static parse(Lsf/d;IILorg/json/JSONObject;)Lcom/miui/common/card/models/BaseCardModel;
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p2, v0, :cond_9

    const/4 v0, 0x4

    if-eq p2, v0, :cond_8

    const/4 v2, 0x5

    if-eq p2, v2, :cond_7

    const/16 v2, 0x13

    if-eq p2, v2, :cond_6

    const/16 v2, 0x19

    if-eq p2, v2, :cond_7

    const/16 v2, 0x1f

    if-eq p2, v2, :cond_5

    const/16 v2, 0x28

    if-eq p2, v2, :cond_4

    const/16 v2, 0x2711

    if-eq p2, v2, :cond_0

    const/16 v2, 0x7531

    if-eq p2, v2, :cond_0

    const/16 v2, 0x7532

    if-eq p2, v2, :cond_0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lsf/d;->k()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lsf/d;->I(I)V

    invoke-virtual {p0}, Lsf/d;->k()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internationalAdvIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "AdvCardModel"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "extra"

    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 p3, -0x1

    if-eqz p0, :cond_1

    const-string v3, "position"

    invoke-virtual {p0, v3, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    :cond_1
    const/4 p0, 0x2

    const-string v3, ""

    if-ne p1, p0, :cond_2

    new-instance p0, Lcom/miui/international/bean/a;

    invoke-direct {p0, v3, p3}, Lcom/miui/international/bean/a;-><init>(Ljava/lang/String;I)V

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_2
    if-ne p1, v0, :cond_3

    invoke-static {p1, v3, p2}, Lsf/f;->e(ILjava/lang/String;I)Lcom/miui/common/card/models/AdvInternationalCardModel;

    move-result-object p0

    iput p3, p0, Lcom/miui/common/card/models/AdvCardModel;->position:I

    goto :goto_0

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "placeid = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ;  advUsePosition = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/miui/common/card/models/AdvNormalWebsiteGroupPicCardModel;

    invoke-direct {v1, p3, p1}, Lcom/miui/common/card/models/AdvNormalWebsiteGroupPicCardModel;-><init>(Lorg/json/JSONObject;I)V

    goto :goto_2

    :cond_5
    new-instance v1, Lcom/miui/common/card/models/AdvThreePicCardModel;

    const p0, 0x7f0e0275

    invoke-direct {v1, p0, p3, p1}, Lcom/miui/common/card/models/AdvThreePicCardModel;-><init>(ILorg/json/JSONObject;I)V

    goto :goto_2

    :cond_6
    new-instance v1, Lcom/miui/common/card/models/AdvBigButtonCardModel;

    const p0, 0x7f0e0272

    invoke-direct {v1, p0, p3, p1}, Lcom/miui/common/card/models/AdvBigButtonCardModel;-><init>(ILorg/json/JSONObject;I)V

    goto :goto_2

    :cond_7
    :pswitch_0
    invoke-static {p2}, Lcom/miui/securitycenter/ad/view/b;->a(I)I

    move-result p0

    new-instance v1, Lcom/miui/common/card/models/AdvBigButtonCardModel;

    invoke-direct {v1, p0, p3, p1}, Lcom/miui/common/card/models/AdvBigButtonCardModel;-><init>(ILorg/json/JSONObject;I)V

    goto :goto_2

    :cond_8
    new-instance v1, Lcom/miui/common/card/models/AdvNormalWebsiteSmallPicCardModel;

    invoke-direct {v1, p3, p1}, Lcom/miui/common/card/models/AdvNormalWebsiteSmallPicCardModel;-><init>(Lorg/json/JSONObject;I)V

    goto :goto_2

    :cond_9
    new-instance v1, Lcom/miui/common/card/models/AdvNormalWebsiteBigPicCardModel;

    invoke-direct {v1, p3, p1}, Lcom/miui/common/card/models/AdvNormalWebsiteBigPicCardModel;-><init>(Lorg/json/JSONObject;I)V

    :goto_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setButtonBGandTextColor(Landroid/content/Context;Landroid/widget/TextView;ZZLcom/miui/common/card/models/AdvCardModel;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p5, Lcom/miui/common/card/models/AdvCardModel;->template:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    const v0, 0x7f07066c

    goto :goto_0

    :cond_1
    const v0, 0x7f070278

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v2, 0x7f060159

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :try_start_0
    iget-object v2, p5, Lcom/miui/common/card/models/AdvCardModel;->buttonOpenColor2:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v2, p5, Lcom/miui/common/card/models/AdvCardModel;->buttonColor2:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x0

    :try_start_2
    iget-object v4, p5, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorNormal2:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v5, p5, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorPressed2:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_2
    move v4, v2

    :catch_3
    move v5, v2

    :goto_1
    :try_start_4
    iget-object v6, p5, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorOpenN2:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    iget-object v7, p5, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorOpenP2:Ljava/lang/String;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_2

    :catch_4
    move v6, v2

    :catch_5
    move v7, v2

    :goto_2
    :try_start_6
    iget-object v8, p5, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorDownloading2:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/4 v8, 0x0

    if-eqz p3, :cond_2

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    invoke-static {v0, v6, v7}, Lof/f;->a(FII)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_3

    :cond_2
    if-eqz p4, :cond_3

    if-eqz v2, :cond_4

    invoke-static {v0, v2, v2}, Lof/f;->a(FII)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    invoke-static {v0, v4, v5}, Lof/f;->a(FII)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :cond_4
    :goto_3
    if-eqz p3, :cond_5

    goto :goto_4

    :cond_5
    move v3, p1

    :goto_4
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v8, :cond_6

    invoke-virtual {p2, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_6
    iget p1, p5, Lcom/miui/common/card/models/AdvCardModel;->template:I

    if-ne p1, v1, :cond_7

    const p1, 0x7f080f4d

    goto :goto_5

    :cond_7
    const p1, 0x7f0809da

    :goto_5
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_6
    return-void
.end method

.method private setDonwloadButtonStatus(Landroid/content/Context;Landroid/widget/TextView;Lcom/miui/common/card/models/AdvCardModel;Z)V
    .locals 8

    invoke-static {p1}, Lsf/h;->c(Landroid/content/Context;)Lsf/h;

    move-result-object v0

    iget-object v1, p3, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsf/h;->d(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f0b0c4d

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v5, :cond_1

    iget-object p4, p3, Lcom/miui/common/card/models/AdvCardModel;->buttonOpen:Ljava/lang/String;

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_3

    if-nez p4, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v2

    goto :goto_6

    :cond_3
    :goto_2
    invoke-static {p1}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object p4

    iget-object v3, p3, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    invoke-virtual {p4, v3}, Lsf/e;->c(Ljava/lang/String;)I

    move-result p4

    const v3, 0x7f1206d5

    const/4 v4, -0x1

    if-eq p4, v4, :cond_7

    const/4 v6, 0x5

    if-eq p4, v6, :cond_6

    const/16 v6, 0xa

    if-eq p4, v6, :cond_5

    if-eq p4, v1, :cond_7

    const/4 v6, 0x2

    if-eq p4, v6, :cond_6

    const/4 v3, 0x3

    if-eq p4, v3, :cond_4

    iget-object p4, p3, Lcom/miui/common/card/models/BaseCardModel;->button:Ljava/lang/String;

    :goto_3
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const p4, 0x7f120c6c

    :goto_4
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_5
    const p4, 0x7f12058f

    goto :goto_4

    :cond_6
    invoke-static {p1}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object p4

    iget-object v6, p3, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    invoke-virtual {p4, v6}, Lsf/e;->e(Ljava/lang/String;)I

    move-result p4

    if-eq p4, v4, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "%"

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_5
    move v6, v1

    move v1, v2

    :goto_6
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/miui/common/card/models/AdvCardModel;->setButtonBGandTextColor(Landroid/content/Context;Landroid/widget/TextView;ZZLcom/miui/common/card/models/AdvCardModel;)V

    if-nez v0, :cond_8

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_8
    return-void
.end method

.method private statAdClick()V
    .locals 2

    const-string v0, "CLICK"

    invoke-static {v0, p0}, Lcom/miui/securityscan/BaseAdvActivity;->d0(Ljava/lang/String;Lcom/miui/common/card/models/AdvCardModel;)V

    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->usePosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->dataId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lqf/c;->t0(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->dataId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lqf/c;->X(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->dataId:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lqf/c;->y(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private trackDeeplinkLauncher(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lqf/a$b;

    const-string v2, "APP_LAUNCH_SUCCESS_DEEPLINK"

    invoke-direct {v1, v2, p0}, Lqf/a$b;-><init>(Ljava/lang/String;Lcom/miui/common/card/models/AdvCardModel;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v0}, Lqf/a;->h(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getActionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->actionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAppChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->appChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAppClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->appClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAppRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->appRef:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAppSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->appSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAutoOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/AdvCardModel;->autoOpen:Z

    return v0
.end method

.method public getAdDeeplink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->deepLink:Ljava/lang/String;

    return-object v0
.end method

.method public getAdEx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public getAdFloatCardData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->floatCardData:Ljava/lang/String;

    return-object v0
.end method

.method public getAdLandingPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->landingPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAdNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getAllDownloadNum()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/common/card/models/AdvCardModel;->allDownloadNum:J

    return-wide v0
.end method

.method public getClickMonitorUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->clickMonitorUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getCta()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->cta:Ljava/lang/String;

    return-object v0
.end method

.method public getDataId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->dataId:Ljava/lang/String;

    return-object v0
.end method

.method public getEx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->id:I

    return v0
.end method

.method public getLandingPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->landingPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiImgUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->position:I

    return v0
.end method

.method public getPositionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->positionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetType()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->targetType:I

    return v0
.end method

.method public getTemplate()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->template:I

    return v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->testId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->template:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/miui/common/card/models/BaseCardModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/common/card/models/AdvCardModel;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackingStrategy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->trackingStrategy:Ljava/lang/String;

    return-object v0
.end method

.method public getUsePosition()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->usePosition:I

    return v0
.end method

.method public getValidTime()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/miui/common/card/models/AdvCardModel;->validTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getViewMonitorUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->viewMonitorUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public init(Lorg/json/JSONObject;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/card/models/AdvCardModel;->id:I

    const-string v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->dataId:Ljava/lang/String;

    const-string v0, "appName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->title:Ljava/lang/String;

    :cond_1
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->summary:Ljava/lang/String;

    const-string v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->source:Ljava/lang/String;

    const-string v0, "landingPageUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->landingPageUrl:Ljava/lang/String;

    const-string v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/card/models/AdvCardModel;->template:I

    const-string v0, "cta"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->cta:Ljava/lang/String;

    const-string v0, "allDownloadNum"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/common/card/models/AdvCardModel;->allDownloadNum:J

    invoke-static {v0, v1}, Ll4/a;->j(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->donwloadCountStr:Ljava/lang/String;

    const-string v0, "iconUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->icon:Ljava/lang/String;

    const-string v0, "actionUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->actionUrl:Ljava/lang/String;

    const-string v0, "deeplink"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->deepLink:Ljava/lang/String;

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    const-string v0, "ex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->ex:Ljava/lang/String;

    const-string v0, "appRef"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->appRef:Ljava/lang/String;

    const-string v0, "appClientId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->appClientId:Ljava/lang/String;

    const-string v0, "appSignature"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->appSignature:Ljava/lang/String;

    const-string v0, "nonce"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->nonce:Ljava/lang/String;

    const-string v0, "appChannel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->appChannel:Ljava/lang/String;

    const-string v0, "local"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/common/card/models/AdvCardModel;->local:Z

    const-string v0, "floatCardData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->floatCardData:Ljava/lang/String;

    const-string v0, "appDeveloper"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->appDeveloper:Ljava/lang/String;

    const-string v0, "appVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->appVersion:Ljava/lang/String;

    const-string v0, "appPermission"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->appPermission:Ljava/lang/String;

    const-string v0, "appPrivacy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->appPrivacy:Ljava/lang/String;

    const-string v0, "appIntroduction"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->appIntroduction:Ljava/lang/String;

    const-string v0, "dspName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->dspName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->dspName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->source:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->dspName:Ljava/lang/String;

    const-string v0, "parameters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "trackingStrategy"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->trackingStrategy:Ljava/lang/String;

    :cond_3
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "validTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/common/card/models/AdvCardModel;->validTime:J

    const/4 v1, -0x1

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/common/card/models/AdvCardModel;->position:I

    const-string v1, "autoOpen"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/common/card/models/AdvCardModel;->autoOpen:Z

    const-string v1, "button"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/card/models/BaseCardModel;->button:Ljava/lang/String;

    const-string v1, "buttonOpen"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/card/models/AdvCardModel;->buttonOpen:Ljava/lang/String;

    const-string v1, "buttonColor2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/card/models/AdvCardModel;->buttonColor2:Ljava/lang/String;

    const-string v1, "buttonOpenColor2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/card/models/AdvCardModel;->buttonOpenColor2:Ljava/lang/String;

    const-string v1, "btnBgColorNormal2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorNormal2:Ljava/lang/String;

    const-string v1, "btnBgColorPressed2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorPressed2:Ljava/lang/String;

    const-string v1, "btnBgColorOpenN2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorOpenN2:Ljava/lang/String;

    const-string v1, "btnBgColorOpenP2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorOpenP2:Ljava/lang/String;

    const-string v1, "btnBgColorDownloading2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorDownloading2:Ljava/lang/String;

    :cond_4
    const-string v0, "imgUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v3, v1

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_5

    if-ge v3, v2, :cond_5

    iget-object v4, p0, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "targetType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/card/models/AdvCardModel;->targetType:I

    const-string v0, "viewMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/common/card/models/AdvCardModel;->viewMonitorUrls:[Ljava/lang/String;

    move v2, v1

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lcom/miui/common/card/models/AdvCardModel;->viewMonitorUrls:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    const-string v0, "clickMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->clickMonitorUrls:[Ljava/lang/String;

    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->clickMonitorUrls:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public isAutoOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/AdvCardModel;->autoOpen:Z

    return v0
.end method

.method public isDownloadPause()Z
    .locals 2

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/common/card/models/AdvCardModel;->getAdPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsf/e;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDownloading()Z
    .locals 2

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/common/card/models/AdvCardModel;->getAdPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsf/e;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLocal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/AdvCardModel;->local:Z

    return v0
.end method

.method public onAdDisliked(Ljava/lang/Object;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->mCloseView:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/miui/securityscan/BaseAdvActivity;

    iget p2, p0, Lcom/miui/common/card/models/AdvCardModel;->usePosition:I

    invoke-virtual {p1, p0, p2}, Lcom/miui/securityscan/BaseAdvActivity;->g0(Lcom/miui/common/card/models/BaseCardModel;I)V

    iget p1, p0, Lcom/miui/common/card/models/AdvCardModel;->template:I

    const/16 p2, 0x2711

    if-eq p1, p2, :cond_1

    const/16 p2, 0x7531

    if-eq p1, p2, :cond_1

    const/16 p2, 0x7532

    if-ne p1, p2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/miui/common/card/models/AdvCardModel;->getPositionId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/common/card/models/AdvCardModel;->object:Ljava/lang/Object;

    invoke-static {p1, p2}, Lsf/f;->f(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Leg/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/BaseAdvActivity;

    iget v1, p0, Lcom/miui/common/card/models/AdvCardModel;->template:I

    const/16 v2, 0x2711

    if-eq v1, v2, :cond_3

    const/16 v2, 0x7531

    if-eq v1, v2, :cond_3

    const/16 v2, 0x7532

    if-ne v1, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-static {p0, v0}, Lx4/p;->c(Lx4/p$a;Landroid/content/Context;)V

    goto :goto_1

    :sswitch_0
    iget-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->appPrivacy:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->appPermission:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->appIntroduction:Ljava/lang/String;

    :goto_0
    invoke-static {v0, p1}, Leg/i;->e(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_3

    :sswitch_3
    invoke-static {p0}, Lx4/p;->a(Lx4/p$a;)V

    goto :goto_3

    :sswitch_4
    invoke-static {}, Lef/d0;->a()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/AdvCardModel;->closeNormalAdNewStyle(Lcom/miui/securityscan/BaseAdvActivity;)V

    goto :goto_3

    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/miui/common/card/models/AdvCardModel;->closeNormalAd(Lcom/miui/securityscan/BaseAdvActivity;Landroid/view/View;)V

    goto :goto_3

    :sswitch_5
    invoke-static {p0, v0}, Lx4/p;->b(Lx4/p$a;Landroid/content/Context;)V

    :goto_1
    invoke-direct {p0}, Lcom/miui/common/card/models/AdvCardModel;->statAdClick()V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {p1}, Lsf/f;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/miui/common/card/models/AdvCardModel;->showXOutAdFeedBackDialog(Landroid/view/View;)V

    :cond_4
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b01d8 -> :sswitch_5
        0x7f0b025b -> :sswitch_4
        0x7f0b0c25 -> :sswitch_4
        0x7f0b0c4d -> :sswitch_5
        0x7f0b0c4f -> :sswitch_3
        0x7f0b0c89 -> :sswitch_2
        0x7f0b0cb3 -> :sswitch_1
        0x7f0b0cb9 -> :sswitch_0
    .end sparse-switch
.end method

.method public setActionUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->actionUrl:Ljava/lang/String;

    return-void
.end method

.method public setAllDownloadNum(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/common/card/models/AdvCardModel;->allDownloadNum:J

    return-void
.end method

.method public setClickMonitorUrls([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->clickMonitorUrls:[Ljava/lang/String;

    return-void
.end method

.method public setCta(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->cta:Ljava/lang/String;

    return-void
.end method

.method public setEx(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->ex:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/AdvCardModel;->id:I

    return-void
.end method

.method public setLandingPageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->landingPageUrl:Ljava/lang/String;

    return-void
.end method

.method public setMultiImgUrls([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->object:Ljava/lang/Object;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPositionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->positionId:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->source:Ljava/lang/String;

    return-void
.end method

.method public setTargetType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/AdvCardModel;->targetType:I

    return-void
.end method

.method public setTemplate(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/AdvCardModel;->template:I

    return-void
.end method

.method public setTestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->testId:Ljava/lang/String;

    return-void
.end method

.method public setViewMonitorUrls([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->viewMonitorUrls:[Ljava/lang/String;

    return-void
.end method

.method public showXOutAdFeedBackDialog(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->mCloseView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->object:Ljava/lang/Object;

    invoke-static {p1, v0}, Lsf/f;->d(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public trackAdDeeplinkLauncher(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/AdvCardModel;->trackDeeplinkLauncher(Landroid/content/Context;)V

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
