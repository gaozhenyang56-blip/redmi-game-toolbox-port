.class Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$3;
.super Lcom/milink/sdk/cast/IMiLinkMediaCallback$Stub;
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

    iput-object p1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$3;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-direct {p0}, Lcom/milink/sdk/cast/IMiLinkMediaCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoading()V
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$3;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$600(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$3;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$600(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onLoading()V

    :cond_0
    return-void
.end method

.method public onNextAudio(Z)V
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$3;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$600(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$3;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$600(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onNextAudio(Z)V

    :cond_0
    return-void
.end method

.method public onPaused()V
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$3;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$600(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$3;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$600(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onPaused()V

    :cond_0
    return-void
.end method

.method public onPlaying()V
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$3;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$600(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$3;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$600(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onPlaying()V

    :cond_0
    return-void
.end method

.method public onPrevAudio(Z)V
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$3;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$600(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$3;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$600(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onPrevAudio(Z)V

    :cond_0
    return-void
.end method

.method public onStopped()V
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$3;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$600(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$3;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$600(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onStopped()V

    :cond_0
    return-void
.end method

.method public onVolume(I)V
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$3;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$600(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$3;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$600(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onVolume(I)V

    :cond_0
    return-void
.end method
