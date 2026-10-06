.class public Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$ClickListener;,
        Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$ClickListener;

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/SaveAreaResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->mList:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;)Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$ClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->listener:Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$ClickListener;

    return-object p0
.end method

.method private getSummaryText(J)Ljava/lang/String;
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const v3, 0x7f120755

    const/4 v4, 0x0

    const v5, 0x7f100026

    const/16 v6, 0x1e

    if-ne p2, v2, :cond_4

    const/4 p2, 0x6

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr v0, p2

    if-gez v0, :cond_0

    iget-object p1, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120163

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p2, 0xf

    if-ge v0, p2, :cond_2

    iget-object p2, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p2, v5, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    if-ge v0, v6, :cond_3

    iget-object v0, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v4

    invoke-virtual {v0, v5, p2, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p2, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-virtual {p2, v5, v6, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-le p2, v0, :cond_5

    iget-object p2, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-virtual {p2, v5, v6, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p1, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public addData(Lcom/miui/earthquakewarning/model/SaveAreaResult;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->onBindViewHolder(Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$MyViewHolder;I)V
    .locals 4
    .param p1    # Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$MyViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    iget-object v0, p1, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$MyViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getUpdateTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$MyViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getUpdateTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->getSummaryText(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$MyViewHolder;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f120755

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$1;-><init>(Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;Lcom/miui/earthquakewarning/model/SaveAreaResult;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$MyViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$MyViewHolder;

    iget-object v0, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e015e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public removeData(Lcom/miui/earthquakewarning/model/SaveAreaResult;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->mList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRemoved(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/SaveAreaResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->mList:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public setListener(Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$ClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->listener:Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$ClickListener;

    return-void
.end method
