.class public Lcom/miui/earthquakewarning/utils/MsgObservable;
.super Ljava/util/Observable;
.source "SourceFile"


# static fields
.field private static volatile instance:Lcom/miui/earthquakewarning/utils/MsgObservable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/earthquakewarning/utils/MsgObservable;
    .locals 2

    sget-object v0, Lcom/miui/earthquakewarning/utils/MsgObservable;->instance:Lcom/miui/earthquakewarning/utils/MsgObservable;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/earthquakewarning/utils/MsgObservable;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/earthquakewarning/utils/MsgObservable;->instance:Lcom/miui/earthquakewarning/utils/MsgObservable;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/earthquakewarning/utils/MsgObservable;

    invoke-direct {v1}, Lcom/miui/earthquakewarning/utils/MsgObservable;-><init>()V

    sput-object v1, Lcom/miui/earthquakewarning/utils/MsgObservable;->instance:Lcom/miui/earthquakewarning/utils/MsgObservable;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/earthquakewarning/utils/MsgObservable;->instance:Lcom/miui/earthquakewarning/utils/MsgObservable;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Ljava/util/Observable;->deleteObservers()V

    return-void
.end method

.method public notifyMsgObservers(Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    invoke-virtual {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public final sendEmptyMessage(I)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/miui/earthquakewarning/utils/MsgObservable;->notifyMsgObservers(Landroid/os/Message;)V

    return-void
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/miui/earthquakewarning/utils/MsgObservable;->notifyMsgObservers(Landroid/os/Message;)V

    return-void
.end method
