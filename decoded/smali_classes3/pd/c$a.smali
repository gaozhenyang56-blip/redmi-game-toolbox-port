.class Lpd/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpd/c;->D(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lpd/c;


# direct methods
.method constructor <init>(Lpd/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpd/c$a;->b:Lpd/c;

    iput-object p2, p0, Lpd/c$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lpd/c$a;->b:Lpd/c;

    invoke-static {v0}, Lpd/c;->i(Lpd/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/powercenter/bean/PowerContinuityCommandBean;

    invoke-direct {v0}, Lcom/miui/powercenter/bean/PowerContinuityCommandBean;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/bean/PowerContinuityCommandBean;->setCommand(I)V

    invoke-static {v0}, Lx4/l0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/continuity/channel/e;->c([B)Lcom/xiaomi/continuity/channel/Packet;

    move-result-object v0

    iget-object v1, p0, Lpd/c$a;->b:Lpd/c;

    iget-object v2, p0, Lpd/c$a;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lpd/c;->c(Lpd/c;Ljava/lang/String;Lcom/xiaomi/continuity/channel/Packet;)V

    return-void
.end method
