.class public Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel;
.super Lcom/miui/common/card/models/TitleCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel$CommonlyUsedTitleViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonlyUsedFunctionCardTitleModel"


# instance fields
.field private mEditBtnVisibility:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e049c

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/TitleCardModel;-><init>(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel;->mEditBtnVisibility:I

    return p0
.end method


# virtual methods
.method public isEditBtnVisible()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel;->mEditBtnVisibility:I

    return v0
.end method

.method public setEditBtnVisible(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel;->mEditBtnVisibility:I

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
