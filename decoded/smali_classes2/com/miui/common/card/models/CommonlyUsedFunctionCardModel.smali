.class public Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonlyCardModel"


# instance fields
.field mCommonlyUsedFuncDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation
.end field

.field private mEditBtnVisibility:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0e049b

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;->mCommonlyUsedFuncDataList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;->mEditBtnVisibility:I

    return p0
.end method


# virtual methods
.method public getCommonlyUsedFuncDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;->mCommonlyUsedFuncDataList:Ljava/util/List;

    return-object v0
.end method

.method public isEditBtnVisible()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;->mEditBtnVisibility:I

    return v0
.end method

.method public setCommonlyUsedFuncDataList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "func out of bounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonlyCardModel"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;->mCommonlyUsedFuncDataList:Ljava/util/List;

    return-void
.end method

.method public setEditBtnVisible(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;->mEditBtnVisibility:I

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
