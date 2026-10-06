.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisasterViewHolder"
.end annotation


# instance fields
.field private mArea:Landroid/widget/TextView;

.field private mAreaTitle:Landroid/widget/TextView;

.field private mContainerCard:Landroid/view/ViewGroup;

.field private mDate:Landroid/widget/TextView;

.field private mDescription:Landroid/widget/TextView;

.field private mFirst:Landroid/widget/TextView;

.field private mGuide:Landroid/widget/TextView;

.field private mGuideContainer:Landroid/widget/RelativeLayout;

.field private mLevel:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mType:Landroid/widget/ImageView;

.field private mWarningFrom:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0cf3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0b0c71

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mFirst:Landroid/widget/TextView;

    const v0, 0x7f0b0c58

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mDate:Landroid/widget/TextView;

    const v0, 0x7f0b0c31

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mArea:Landroid/widget/TextView;

    const v0, 0x7f0b0c8d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mLevel:Landroid/widget/TextView;

    const v0, 0x7f0b0c59

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f0b0c7d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mGuide:Landroid/widget/TextView;

    const v0, 0x7f0b09d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mGuideContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b028b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mContainerCard:Landroid/view/ViewGroup;

    const v0, 0x7f0b0641

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mType:Landroid/widget/ImageView;

    const v0, 0x7f0b0d0d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mWarningFrom:Landroid/widget/TextView;

    const v0, 0x7f0b0c32

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mAreaTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic a(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->lambda$onBind$1(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;Landroid/view/View;)V

    return-void
.end method

.method private addTagToTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p3, ""

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v3, 0x7f071acd

    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    int-to-float p4, p4

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p4, "#B3ffffff"

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setTextColor(I)V

    const p4, 0x7f0810d6

    invoke-virtual {v2, p4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v4, 0x7f070a70

    invoke-virtual {p4, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0708f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, p4, v4, p4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 p4, 0x10

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {p4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070b63

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v4, p4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v6, 0x11

    iput v6, p4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p4, 0x1

    invoke-virtual {v1, p4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, p4, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    invoke-virtual {v1, v3, v3, p4, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-static {p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, p1, p4, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p4

    const/16 v0, 0x22

    invoke-virtual {p1, v1, p3, p4, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->lambda$onBind$0(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBind$0(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->startDisasterDetail(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    return-void
.end method

.method private synthetic lambda$onBind$1(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->startDisasterDetail(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    return-void
.end method

.method private setContainerBackground(Landroid/view/View;ZI)V
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mContainerCard:Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private startDisasterDetail(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->show(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    return-void
.end method

.method private updateData(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;ZLandroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mType:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/warningcenter/disasterwarning/Utils;->ICON_LIST:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEventType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0810f4

    :goto_0
    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mType:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getWarningType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accurate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getMsgType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Alert"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f121c29

    :goto_1
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getMsgType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Update"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f121c2a

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_2
    iget-object v4, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mFirst:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object v4

    const-string v5, "red"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v6, "yellow"

    const-string v7, "orange"

    if-eqz v4, :cond_5

    const v4, 0x7f0810c9

    invoke-direct {p0, p4, p3, v4}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->setContainerBackground(Landroid/view/View;ZI)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f121c1d

    :goto_3
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x7f0810c7

    invoke-direct {p0, p4, p3, v4}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->setContainerBackground(Landroid/view/View;ZI)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f121c06

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x7f0810cc

    invoke-direct {p0, p4, p3, v4}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->setContainerBackground(Landroid/view/View;ZI)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f121c2b

    goto :goto_3

    :cond_7
    const v4, 0x7f0810c4

    invoke-direct {p0, p4, p3, v4}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->setContainerBackground(Landroid/view/View;ZI)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f121be5

    goto :goto_3

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getHeadline()Ljava/lang/String;

    move-result-object p3

    goto :goto_6

    :cond_8
    sget-object p4, Lcom/miui/warningcenter/disasterwarning/Utils;->TITLE_LIST:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEventType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    if-eqz p4, :cond_9

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    goto :goto_5

    :cond_9
    const p4, 0x7f121c09

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_6
    iget-object p4, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, p1, p4, p3, v2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->addTagToTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mAreaTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    const p4, 0x7f121bd4

    goto :goto_7

    :cond_a
    const p4, 0x7f121be1

    :goto_7
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(I)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEffective()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEffective()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mDate:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSender()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    iget-object p4, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mDate:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    if-eqz v0, :cond_b

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getCounty()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getLocation()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_9

    :cond_b
    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getReceivePosition()Ljava/lang/String;

    move-result-object p3

    :goto_9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_c

    iget-object p4, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mArea:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f121bfa    # 1.9421255E38f

    :goto_a
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_b

    :cond_d
    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v7, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f121bfb

    goto :goto_a

    :cond_e
    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f121bfc

    goto :goto_a

    :cond_f
    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object p3

    const-string p4, "blue"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f121bfd

    goto :goto_a

    :cond_10
    move-object p3, v3

    :goto_b
    iget-object p4, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mLevel:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mGuideContainer:Landroid/widget/RelativeLayout;

    if-eqz p3, :cond_13

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getInstruction()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_11

    sget-object p3, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->Companion:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$Companion;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEventType()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, p4, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$Companion;->getOfficialGuidance(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_11
    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getInstruction()Ljava/lang/String;

    move-result-object p1

    :goto_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_12

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mGuideContainer:Landroid/widget/RelativeLayout;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_12
    iget-object p3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mGuideContainer:Landroid/widget/RelativeLayout;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    const-string p3, "\\n"

    invoke-virtual {p1, p3, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mGuide:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_d
    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getWarningType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mWarningFrom:Landroid/widget/TextView;

    const p2, 0x7f121bd5

    goto :goto_e

    :cond_14
    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mWarningFrom:Landroid/widget/TextView;

    const p2, 0x7f121bf7

    :goto_e
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;ZLandroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mContainerCard:Landroid/view/ViewGroup;

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/c;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->mGuideContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/d;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity$DisasterViewHolder;->updateData(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;ZLandroid/view/View;)V

    return-void
.end method
