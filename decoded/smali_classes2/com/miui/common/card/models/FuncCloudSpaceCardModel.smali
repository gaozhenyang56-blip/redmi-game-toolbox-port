.class public Lcom/miui/common/card/models/FuncCloudSpaceCardModel;
.super Lcom/miui/common/card/models/FunctionCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;
    }
.end annotation


# instance fields
.field private colors:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    const v0, 0x7f0e00d5

    invoke-direct {p0, v0, p1}, Lcom/miui/common/card/models/FunctionCardModel;-><init>(ILcom/miui/securityscan/model/AbsModel;)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;->colors:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0605e2
        0x7f0605d6
        0x7f0605df
        0x7f0605d5
        0x7f0605dd
        0x7f0605e3
    .end array-data
.end method

.method static synthetic access$000(Lcom/miui/common/card/models/FuncCloudSpaceCardModel;)[I
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;->colors:[I

    return-object p0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
