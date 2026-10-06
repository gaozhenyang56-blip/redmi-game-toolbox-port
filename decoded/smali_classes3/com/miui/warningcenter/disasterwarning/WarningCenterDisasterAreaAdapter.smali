.class public Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$Listener;,
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private listener:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$Listener;

.field private mAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/disasterwarning/model/AreaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$Listener;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;->listener:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$Listener;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;->mAreas:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;->mAreas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;->mAreas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0e0561

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$ViewHolder;

    invoke-direct {p3}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$ViewHolder;-><init>()V

    const v0, 0x7f0b0838

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$ViewHolder;->operate:Landroid/widget/ImageView;

    const v0, 0x7f0b0b80

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$ViewHolder;

    :goto_0
    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;->mAreas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "-"

    const/4 v4, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_2

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_3

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, p3, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p3, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$ViewHolder;->operate:Landroid/widget/ImageView;

    new-instance v2, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$1;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;ILcom/miui/warningcenter/disasterwarning/model/AreaModel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->isSelect()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p3, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$ViewHolder;->operate:Landroid/widget/ImageView;

    const v0, 0x7f0810c3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p3, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$ViewHolder;->operate:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p3

    const v0, 0x7f120dac

    goto :goto_1

    :cond_4
    iget-object p1, p3, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$ViewHolder;->operate:Landroid/widget/ImageView;

    const v0, 0x7f0810bf

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p3, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$ViewHolder;->operate:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p3

    const v0, 0x7f120d87

    :goto_1
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public setAreas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/disasterwarning/model/AreaModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;->mAreas:Ljava/util/List;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setListener(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;->listener:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$Listener;

    return-void
.end method
