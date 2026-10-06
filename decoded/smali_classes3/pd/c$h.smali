.class Lpd/c$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/continuity/channel/PacketTransferProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpd/c;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpd/c;


# direct methods
.method constructor <init>(Lpd/c;)V
    .locals 0

    iput-object p1, p0, Lpd/c$h;->a:Lpd/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPacketTransferProgressUpdate(Lcom/xiaomi/continuity/channel/Packet;Lcom/xiaomi/continuity/channel/PacketTransferProgress;)V
    .locals 0

    return-void
.end method
