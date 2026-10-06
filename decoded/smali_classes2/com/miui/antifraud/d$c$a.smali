.class Lcom/miui/antifraud/d$c$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antifraud/d$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antifraud/d$c;


# direct methods
.method constructor <init>(Lcom/miui/antifraud/d$c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antifraud/d$c$a;->a:Lcom/miui/antifraud/d$c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/antifraud/d$c$a;->a:Lcom/miui/antifraud/d$c;

    invoke-static {p1}, Lcom/miui/antifraud/d$c;->a(Lcom/miui/antifraud/d$c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
