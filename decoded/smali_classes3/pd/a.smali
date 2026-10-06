.class public Lpd/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/continuity/channel/ChannelListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpd/a;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lpd/a;->c:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lpd/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lpd/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lpd/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onChannelConfirm(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;ILcom/xiaomi/continuity/channel/ConfirmInfo;)V
    .locals 0

    iget-object p1, p0, Lpd/a;->a:Landroid/content/Context;

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

    iget-object v0, p0, Lpd/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/xiaomi/continuity/channel/Channel;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lpd/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object v0

    invoke-interface {p1}, Lcom/xiaomi/continuity/channel/Channel;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpd/c;->E(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lpd/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/xiaomi/continuity/channel/Channel;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lpd/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object v0

    invoke-interface {p1}, Lcom/xiaomi/continuity/channel/Channel;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpd/c;->D(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lpd/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object v0

    invoke-interface {p1}, Lcom/xiaomi/continuity/channel/Channel;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpd/c;->u(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lpd/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpd/c;->l(Lcom/xiaomi/continuity/channel/Channel;)V

    :cond_2
    iget-object v0, p0, Lpd/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object v0

    invoke-interface {p1}, Lcom/xiaomi/continuity/channel/Channel;->getChannelId()I

    move-result p1

    invoke-virtual {v0, p1}, Lpd/c;->s(I)V

    return-void
.end method

.method public onChannelReceive(Lcom/xiaomi/continuity/channel/Channel;Lcom/xiaomi/continuity/channel/Packet;)V
    .locals 3
    .param p1    # Lcom/xiaomi/continuity/channel/Channel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/continuity/channel/Packet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lcom/xiaomi/continuity/channel/Channel;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpd/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lpd/a;->b:Ljava/util/HashMap;

    iget v2, p0, Lpd/a;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lpd/a;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-interface {p2}, Lcom/xiaomi/continuity/channel/Packet;->asBytes()[B

    move-result-object p2

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-class p2, Lcom/miui/powercenter/bean/PowerContinuityCommandBean;

    invoke-static {v1, p2}, Lx4/l0;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/powercenter/bean/PowerContinuityCommandBean;

    iget-object v1, p0, Lpd/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lpd/a;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils;->b(Landroid/content/Context;I)V

    iget-object v1, p0, Lpd/a;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/miui/powercenter/bean/PowerContinuityCommandBean;->getDeviceName()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lpd/a;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, p2, v0, v2}, Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p2, p0, Lpd/a;->a:Landroid/content/Context;

    invoke-static {p2}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object p2

    invoke-interface {p1}, Lcom/xiaomi/continuity/channel/Channel;->getChannelId()I

    move-result p1

    invoke-virtual {p2, p1}, Lpd/c;->s(I)V

    const-string p1, "open_save_success"

    invoke-static {p1}, Lhd/a;->Z0(Ljava/lang/String;)V

    return-void
.end method

.method public onChannelRelease(Lcom/xiaomi/continuity/channel/Channel;I)V
    .locals 0
    .param p1    # Lcom/xiaomi/continuity/channel/Channel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lpd/a;->a:Landroid/content/Context;

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
