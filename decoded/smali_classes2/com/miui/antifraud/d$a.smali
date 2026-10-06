.class Lcom/miui/antifraud/d$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antifraud/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antifraud/d;


# direct methods
.method constructor <init>(Lcom/miui/antifraud/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antifraud/d$a;->a:Lcom/miui/antifraud/d;

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

    iget-object p1, p0, Lcom/miui/antifraud/d$a;->a:Lcom/miui/antifraud/d;

    invoke-static {p1}, Lcom/miui/antifraud/d;->c(Lcom/miui/antifraud/d;)V

    :cond_0
    return-void
.end method
