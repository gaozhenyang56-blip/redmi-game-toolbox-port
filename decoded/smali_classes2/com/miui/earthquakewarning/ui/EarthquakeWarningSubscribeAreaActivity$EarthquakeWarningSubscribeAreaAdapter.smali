.class final Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EarthquakeWarningSubscribeAreaAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$ClickListener;,
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$ClickListener;

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
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->mList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;-><init>()V

    return-void
.end method

.method private isSearchAdapter(Landroid/content/Context;Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;)Z
    .locals 0

    check-cast p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$700(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    move-result-object p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic k(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;Landroid/content/Context;Lcom/miui/earthquakewarning/model/SaveAreaResult;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->lambda$onBindViewHolder$0(Landroid/content/Context;Lcom/miui/earthquakewarning/model/SaveAreaResult;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/content/Context;Lcom/miui/earthquakewarning/model/SaveAreaResult;Landroid/view/View;)V
    .locals 0

    iget-object p3, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->listener:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$ClickListener;

    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->isSearchAdapter(Landroid/content/Context;Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->isSelect()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->listener:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$ClickListener;

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->isSelect()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->listener:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$ClickListener;

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1, p2, p3}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$ClickListener;->onItemClick(Lcom/miui/earthquakewarning/model/SaveAreaResult;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addData(Lcom/miui/earthquakewarning/model/SaveAreaResult;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->mList:Ljava/util/List;

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

    check-cast p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->onBindViewHolder(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$MyViewHolder;I)V
    .locals 7
    .param p1    # Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$MyViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$MyViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$MyViewHolder;->mOperate:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->isSearchAdapter(Landroid/content/Context;Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f120731

    goto :goto_0

    :cond_0
    const v2, 0x7f120733

    goto :goto_0

    :cond_1
    const v2, 0x7f120730

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$MyViewHolder;->mOperate:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v0, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->isSearchAdapter(Landroid/content/Context;Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0602b2

    goto :goto_1

    :cond_2
    const v2, 0x7f0602ba

    goto :goto_1

    :cond_3
    const v2, 0x7f0602b1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$MyViewHolder;->mOperate:Landroid/widget/TextView;

    new-instance v2, Lcom/miui/earthquakewarning/ui/z0;

    invoke-direct {v2, p0, v0, p2}, Lcom/miui/earthquakewarning/ui/z0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;Landroid/content/Context;Lcom/miui/earthquakewarning/model/SaveAreaResult;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getSupport()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCounties()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    move v3, p2

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_5

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "support"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v5, :cond_4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u3001"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_6
    iget-object v2, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$MyViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$MyViewHolder;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f12074f

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_7
    iget-object p1, p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$MyViewHolder;->mSummary:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_3
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

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$MyViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$MyViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e014e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public removeData(Lcom/miui/earthquakewarning/model/SaveAreaResult;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->mList:Ljava/util/List;

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

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->mList:Ljava/util/List;

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

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->mList:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public setListener(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$ClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->listener:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$ClickListener;

    return-void
.end method
