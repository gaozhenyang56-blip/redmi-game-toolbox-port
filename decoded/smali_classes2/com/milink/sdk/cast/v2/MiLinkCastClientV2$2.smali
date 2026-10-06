.class Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$2;
.super Lcom/milink/sdk/cast/IMiLinkPhotoSource$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;


# direct methods
.method constructor <init>(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)V
    .locals 0

    iput-object p1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$2;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-direct {p0}, Lcom/milink/sdk/cast/IMiLinkPhotoSource$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextPhoto(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$2;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$500(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkPhotoSource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$2;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$500(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkPhotoSource;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/milink/sdk/cast/IMiLinkPhotoSource;->getNextPhoto(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPrevPhoto(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$2;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$500(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkPhotoSource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$2;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$500(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkPhotoSource;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/milink/sdk/cast/IMiLinkPhotoSource;->getPrevPhoto(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
