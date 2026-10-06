.class public Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$ClickListener;,
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$ClickListener;

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

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;->mList:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$ClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;->listener:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$ClickListener;

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
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;->mList:Ljava/util/List;

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

    check-cast p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;->onBindViewHolder(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$MyViewHolder;I)V
    .locals 2
    .param p1    # Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$MyViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    iget-object v0, p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$MyViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;->getShowText(Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$1;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$MyViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$MyViewHolder;

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0562

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
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

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;->mList:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public setListener(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$ClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;->listener:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$ClickListener;

    return-void
.end method
