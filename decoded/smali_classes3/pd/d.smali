.class public Lpd/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/continuity/channel/ChannelListener;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lpd/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChannelConfirm(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;ILcom/xiaomi/continuity/channel/ConfirmInfo;)V
    .locals 0

    iget-object p1, p0, Lpd/d;->a:Landroid/content/Context;

    invoke-static {p1}, Lj4/b;->d(Landroid/content/Context;)Lj4/b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lj4/b;->a(II)V

    return-void
.end method

.method public onChannelCreateFailed(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;II)V
    .locals 0
    .param p2    # Lcom/xiaomi/continuity/ServiceName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onChannelCreateSuccess(Lcom/xiaomi/continuity/channel/Channel;)V
    .locals 2
    .param p1    # Lcom/xiaomi/continuity/channel/Channel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lpd/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object v0

    invoke-interface {p1}, Lcom/xiaomi/continuity/channel/Channel;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpd/c;->u(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpd/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpd/c;->l(Lcom/xiaomi/continuity/channel/Channel;)V

    :cond_0
    iget-object v0, p0, Lpd/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object v0

    invoke-interface {p1}, Lcom/xiaomi/continuity/channel/Channel;->getChannelId()I

    move-result p1

    invoke-virtual {v0, p1}, Lpd/c;->s(I)V

    return-void
.end method

.method public onChannelReceive(Lcom/xiaomi/continuity/channel/Channel;Lcom/xiaomi/continuity/channel/Packet;)V
    .locals 2
    .param p1    # Lcom/xiaomi/continuity/channel/Channel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/continuity/channel/Packet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/String;

    invoke-interface {p2}, Lcom/xiaomi/continuity/channel/Packet;->asBytes()[B

    move-result-object p2

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-class p2, Lcom/miui/powercenter/bean/PowerContinuityCommandBean;

    invoke-static {v0, p2}, Lx4/l0;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/powercenter/bean/PowerContinuityCommandBean;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/miui/powercenter/bean/PowerContinuityCommandBean;->getCommand()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p2, p0, Lpd/d;->a:Landroid/content/Context;

    invoke-interface {p1}, Lcom/xiaomi/continuity/channel/Channel;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lme/w;->D0(Landroid/content/Context;ZLjava/lang/String;)V

    const-string p2, "receive_open_save"

    :goto_0
    invoke-static {p2}, Lhd/a;->a1(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/miui/powercenter/bean/PowerContinuityCommandBean;->getCommand()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lpd/d;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/xiaomi/continuity/channel/Channel;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lme/w;->D0(Landroid/content/Context;ZLjava/lang/String;)V

    const-string p2, "receive_close_save"

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p2, p0, Lpd/d;->a:Landroid/content/Context;

    invoke-static {p2}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object p2

    invoke-interface {p1}, Lcom/xiaomi/continuity/channel/Channel;->getChannelId()I

    move-result p1

    invoke-virtual {p2, p1}, Lpd/c;->s(I)V

    return-void
.end method

.method public onChannelRelease(Lcom/xiaomi/continuity/channel/Channel;I)V
    .locals 0
    .param p1    # Lcom/xiaomi/continuity/channel/Channel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lpd/d;->a:Landroid/content/Context;

    invoke-static {p2}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lpd/c;->B(Lcom/xiaomi/continuity/channel/Channel;)V

    return-void
.end method

.method public onChannelTransferProgressUpdate(Lcom/xiaomi/continuity/channel/Channel;Lcom/xiaomi/continuity/channel/Packet;Lcom/xiaomi/continuity/channel/PacketTransferProgress;)V
    .locals 0
    .param p1    # Lcom/xiaomi/continuity/channel/Channel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/continuity/channel/Packet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/continuity/channel/b;->a(Lcom/xiaomi/continuity/channel/ChannelListener;Lcom/xiaomi/continuity/channel/Channel;Lcom/xiaomi/continuity/channel/Packet;Lcom/xiaomi/continuity/channel/PacketTransferProgress;)V

    return-void
.end method
