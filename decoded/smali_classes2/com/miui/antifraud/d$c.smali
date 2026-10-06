.class final Lcom/miui/antifraud/d$c;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antifraud/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Landroid/os/Handler;

.field final synthetic c:Lcom/miui/antifraud/d;


# direct methods
.method private constructor <init>(Lcom/miui/antifraud/d;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/antifraud/d$c;->c:Lcom/miui/antifraud/d;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/miui/antifraud/d$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lcom/miui/antifraud/d$c$a;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/miui/antifraud/d$c$a;-><init>(Lcom/miui/antifraud/d$c;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/antifraud/d$c;->b:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antifraud/d;Lcom/miui/antifraud/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antifraud/d$c;-><init>(Lcom/miui/antifraud/d;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/antifraud/d$c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/miui/antifraud/d$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5

    const/4 p2, 0x1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/antifraud/d$c;->b:Landroid/os/Handler;

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/antifraud/d$c;->c:Lcom/miui/antifraud/d;

    invoke-static {p1}, Lcom/miui/antifraud/d;->h(Lcom/miui/antifraud/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/antifraud/d$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/antifraud/d$c;->c:Lcom/miui/antifraud/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x2bf20

    add-long/2addr v1, v3

    invoke-static {p1, v1, v2, p2}, Lcom/miui/antifraud/d;->i(Lcom/miui/antifraud/d;JZ)V

    :cond_1
    iget-object p1, p0, Lcom/miui/antifraud/d$c;->b:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    :goto_0
    return-void
.end method
