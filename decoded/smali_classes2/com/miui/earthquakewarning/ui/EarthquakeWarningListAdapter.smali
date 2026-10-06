.class public Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;
.super Landroidx/recyclerview/widget/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ClickListener;,
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$PushViewHolder;,
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;,
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$Diff;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/p<",
        "Lcom/miui/earthquakewarning/model/WarningModel;",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field private final isAll:Z

.field private listener:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ClickListener;


# direct methods
.method protected constructor <init>(Z)V
    .locals 2

    new-instance v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$Diff;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$Diff;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$1;)V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/p;-><init>(Landroidx/recyclerview/widget/h$f;)V

    iput-boolean p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;->isAll:Z

    return-void
.end method

.method public static synthetic k(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;Lcom/miui/earthquakewarning/model/WarningModel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;->lambda$onBindViewHolder$0(Lcom/miui/earthquakewarning/model/WarningModel;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/miui/earthquakewarning/model/WarningModel;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;->listener:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ClickListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ClickListener;->onItemClick(Lcom/miui/earthquakewarning/model/WarningModel;)V

    :cond_0
    return-void
.end method

.method private onBindPushViewHolder(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$PushViewHolder;Lcom/miui/earthquakewarning/model/WarningModel;)V
    .locals 3

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$PushViewHolder;->mAlertCityText:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/miui/earthquakewarning/model/WarningModel;->epicenter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$PushViewHolder;->mAlertCityText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$PushViewHolder;->mAlertLevelText:Landroid/widget/TextView;

    iget v1, p2, Lcom/miui/earthquakewarning/model/WarningModel;->magnitude:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd\nHH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v1, p2, Lcom/miui/earthquakewarning/model/WarningModel;->startTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$PushViewHolder;->mAlertTime:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onBindReceiveViewHolder(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;Lcom/miui/earthquakewarning/model/WarningModel;)V
    .locals 8

    iget-wide v0, p2, Lcom/miui/earthquakewarning/model/WarningModel;->distance:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mDistanceText:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const v0, 0x7f120794

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertCityText:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/miui/earthquakewarning/model/WarningModel;->epicenter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertCityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertLevelText:Landroid/widget/TextView;

    iget v2, p2, Lcom/miui/earthquakewarning/model/WarningModel;->magnitude:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f12073d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget v6, p2, Lcom/miui/earthquakewarning/model/WarningModel;->intensity:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v6, " %.1f"

    invoke-static {v2, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertIntensity:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p2, Lcom/miui/earthquakewarning/model/WarningModel;->intensity:F

    const/4 v2, 0x0

    sub-float v2, v0, v2

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v4

    const v4, 0x7f070c9e

    if-gez v2, :cond_0

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertFeelText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f12073b

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertFeelText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mContainer:Landroid/view/ViewGroup;

    const v2, 0x7f08054b

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertFeelText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f120738

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertFeelText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f071c44

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mContainer:Landroid/view/ViewGroup;

    const v2, 0x7f080548

    goto :goto_0

    :cond_1
    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertFeelText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f12073c

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertFeelText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mContainer:Landroid/view/ViewGroup;

    const v2, 0x7f080549

    goto :goto_0

    :cond_2
    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertFeelText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f12073a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertFeelText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mContainer:Landroid/view/ViewGroup;

    const v2, 0x7f08054c

    goto/16 :goto_0

    :cond_3
    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertFeelText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f120739

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertFeelText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mContainer:Landroid/view/ViewGroup;

    const v2, 0x7f08054a

    goto/16 :goto_0

    :goto_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v6, p2, Lcom/miui/earthquakewarning/model/WarningModel;->startTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertTime:Landroid/widget/TextView;

    const v0, 0x7f120795

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-boolean p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;->isAll:Z

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/p;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/earthquakewarning/model/WarningModel;

    instance-of v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;

    invoke-direct {p0, v0, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;->onBindReceiveViewHolder(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;Lcom/miui/earthquakewarning/model/WarningModel;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$PushViewHolder;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$PushViewHolder;

    invoke-direct {p0, v0, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;->onBindPushViewHolder(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$PushViewHolder;Lcom/miui/earthquakewarning/model/WarningModel;)V

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Lx4/y1;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const-string v0, "EwAdapter"

    const-string v1, "no support folme"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/miui/earthquakewarning/ui/d0;

    invoke-direct {v0, p0, p2}, Lcom/miui/earthquakewarning/ui/d0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;Lcom/miui/earthquakewarning/model/WarningModel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p2, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e014c

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$PushViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e014d

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$PushViewHolder;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public setListener(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;->listener:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ClickListener;

    return-void
.end method
