.class Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$MainHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$MainHandler;->mFragmentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$MainHandler;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    if-eqz v0, :cond_2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$202(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;Z)Z

    :cond_1
    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$300(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    :cond_2
    :goto_0
    return-void
.end method
