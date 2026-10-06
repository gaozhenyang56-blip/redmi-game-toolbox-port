.class public Lcom/miui/common/card/models/TopCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/TopCardModel$TopCardViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e00ec

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/TopCardModel$TopCardViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/TopCardModel$TopCardViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
