.class public Lcom/miui/earthquakewarning/model/SignatureReuslt$DatasBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/earthquakewarning/model/SignatureReuslt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatasBean"
.end annotation


# instance fields
.field private channel:Ljava/lang/String;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;",
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
.method public getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/model/SignatureReuslt$DatasBean;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/earthquakewarning/model/SignatureReuslt$DatasBean;->data:Ljava/util/List;

    return-object v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/model/SignatureReuslt$DatasBean;->channel:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/earthquakewarning/model/SignatureReuslt$DatasBean;->data:Ljava/util/List;

    return-void
.end method
