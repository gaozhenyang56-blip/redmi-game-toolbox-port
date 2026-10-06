.class public Lcom/miui/common/card/models/PopularActionCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;,
        Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;,
        Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;
    }
.end annotation


# instance fields
.field private final mPopularActionItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e049f

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel;->mPopularActionItemList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/common/card/models/PopularActionCardModel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/PopularActionCardModel;->mPopularActionItemList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addItem(Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel;->mPopularActionItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
