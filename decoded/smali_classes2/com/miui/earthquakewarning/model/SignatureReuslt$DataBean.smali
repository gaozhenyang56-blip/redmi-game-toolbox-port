.class public Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/earthquakewarning/model/SignatureReuslt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private code:I

.field private district:Ljava/lang/String;

.field private signs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

    iget v0, p0, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;->code:I

    return v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getSigns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;->signs:Ljava/util/List;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;->code:I

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;->district:Ljava/lang/String;

    return-void
.end method

.method public setSigns(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;->signs:Ljava/util/List;

    return-void
.end method
