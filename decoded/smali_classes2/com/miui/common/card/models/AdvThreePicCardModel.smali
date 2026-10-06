.class public Lcom/miui/common/card/models/AdvThreePicCardModel;
.super Lcom/miui/common/card/models/AdvCardModel;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/common/card/models/AdvCardModel;-><init>(ILorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;-><init>(Landroid/view/View;)V

    sget-object p1, Lx4/o0;->c:Lrh/c;

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->setIconDisplayOption(Lrh/c;)V

    return-object v0
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
