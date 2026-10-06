.class public abstract Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;
.super Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelAdapter;
.source "SourceFile"


# static fields
.field public static final CHOOSE_TEXT_COLOR:I = -0xf27b01

.field public static final CHOOSE_TEXT_SIZE:I = 0x1a

.field public static final DEFAULT_TEXT_COLOR:I = -0xacacad

.field public static final DEFAULT_TEXT_SIZE:I = 0x13

.field public static final ITEM_HEIGHT:I = 0x32

.field public static final LABEL_COLOR:I = -0x8fff90

.field protected static final NO_RESOURCE:I = 0x0

.field public static final TEXT_VIEW_ITEM_RESOURCE:I = -0x1


# instance fields
.field protected context:Landroid/content/Context;

.field protected convertViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field protected emptyItemResourceId:I

.field protected inflater:Landroid/view/LayoutInflater;

.field protected itemResourceId:I

.field protected itemTextResourceId:I

.field private textColor:I

.field private textSize:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelAdapter;-><init>()V

    const v0, -0xacacad

    iput v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->textColor:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->textSize:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->convertViews:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    iput p2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->itemResourceId:I

    iput p3, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->itemTextResourceId:I

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getTextView(Landroid/view/View;I)Landroid/widget/TextView;
    .locals 1

    if-nez p2, :cond_0

    :try_start_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    :goto_0
    check-cast p1, Landroid/widget/TextView;

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    const-string p2, "AbstractWheelAdapter"

    const-string v0, "You must supply a resource ID for a TextView"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "AbstractWheelAdapter requires the resource ID to be a TextView"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method private getView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-object p1
.end method


# virtual methods
.method protected configureTextView(Landroid/widget/TextView;I)V
    .locals 3

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->currentItem:I

    if-ne p2, v0, :cond_0

    const p2, -0xf27b01

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41d00000    # 26.0f

    goto :goto_0

    :cond_0
    const p2, -0xacacad

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41980000    # 19.0f

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr p2, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p2, v2

    float-to-int p2, p2

    invoke-direct {v0, v1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLines(I)V

    return-void
.end method

.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->emptyItemResourceId:I

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_0
    iget p2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->emptyItemResourceId:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p2, v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->configureTextView(Landroid/widget/TextView;I)V

    :cond_1
    return-object p1
.end method

.method public getEmptyItemResource()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->emptyItemResourceId:I

    return v0
.end method

.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-ltz p1, :cond_3

    invoke-interface {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;->getItemsCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->convertViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-nez p2, :cond_0

    iget p2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->itemResourceId:I

    invoke-direct {p0, p2, p3}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->convertViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p3, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->itemTextResourceId:I

    invoke-direct {p0, p2, p3}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->itemResourceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p3, p1}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->configureTextView(Landroid/widget/TextView;I)V

    :cond_2
    return-object p2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemResource()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->itemResourceId:I

    return v0
.end method

.method protected abstract getItemText(I)Ljava/lang/CharSequence;
.end method

.method public getItemTextResource()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->itemTextResourceId:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->textColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->textSize:I

    return v0
.end method

.method public getTextViewByIndex(I)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->convertViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->itemTextResourceId:I

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentItem(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->currentItem:I

    return-void
.end method

.method public setEmptyItemResource(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->emptyItemResourceId:I

    return-void
.end method

.method public setItemResource(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->itemResourceId:I

    return-void
.end method

.method public setItemTextResource(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->itemTextResourceId:I

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->textColor:I

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->textSize:I

    return-void
.end method
