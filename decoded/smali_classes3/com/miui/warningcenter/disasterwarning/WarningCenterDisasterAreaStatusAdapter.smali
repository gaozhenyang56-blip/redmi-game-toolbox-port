.class public Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$ClickListener;,
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$ClickListener;

.field private mActivity:Landroid/app/Activity;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/disasterwarning/model/AreaModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->mList:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$ClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->listener:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$ClickListener;

    return-object p0
.end method

.method private getShowText(Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getRegion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getRegion()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCity()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getProvince()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public addData(Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->mList:Ljava/util/List;

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

    check-cast p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->onBindViewHolder(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$MyViewHolder;I)V
    .locals 5
    .param p1    # Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$MyViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    iget-object v1, p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$MyViewHolder;->mOperate:Landroid/widget/ImageView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$MyViewHolder;->mLocal:Landroid/widget/ImageView;

    if-nez p2, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$MyViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->getShowText(Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$MyViewHolder;->mOperate:Landroid/widget/ImageView;

    new-instance v2, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$1;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;Lcom/miui/warningcenter/disasterwarning/model/AreaModel;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$2;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;ILcom/miui/warningcenter/disasterwarning/model/AreaModel;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$MyViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$MyViewHolder;

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0563

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public removeData(Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->mList:Ljava/util/List;

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
            "Lcom/miui/warningcenter/disasterwarning/model/AreaModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->mList:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public setListener(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$ClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->listener:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$ClickListener;

    return-void
.end method
