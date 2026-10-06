.class public Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel;
.super Lcom/miui/common/card/models/FunctionCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$MyPagerAdapter;,
        Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$FuncTopBannerGlobalScrollHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    const v0, 0x7f0e00f1

    invoke-direct {p0, v0, p1}, Lcom/miui/common/card/models/FunctionCardModel;-><init>(ILcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$FuncTopBannerGlobalScrollHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$FuncTopBannerGlobalScrollHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
