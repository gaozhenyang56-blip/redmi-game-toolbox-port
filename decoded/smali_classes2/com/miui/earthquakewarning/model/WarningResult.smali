.class public Lcom/miui/earthquakewarning/model/WarningResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/WarningModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/miui/earthquakewarning/model/WarningResult;->code:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/WarningModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/earthquakewarning/model/WarningResult;->data:Ljava/util/List;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/model/WarningResult;->code:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/WarningModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/earthquakewarning/model/WarningResult;->data:Ljava/util/List;

    return-void
.end method
