.class public Lcom/miui/gamebooster/globalgame/http/Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/miui/gamebooster/globalgame/util/NoProguard;
.end annotation


# instance fields
.field private data:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private head:Lcom/miui/gamebooster/globalgame/http/Head;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "head"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/http/Result;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getHead()Lcom/miui/gamebooster/globalgame/http/Head;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/http/Result;->head:Lcom/miui/gamebooster/globalgame/http/Head;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/http/Result;->data:Ljava/lang/String;

    return-void
.end method

.method public setHead(Lcom/miui/gamebooster/globalgame/http/Head;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/http/Result;->head:Lcom/miui/gamebooster/globalgame/http/Head;

    return-void
.end method
