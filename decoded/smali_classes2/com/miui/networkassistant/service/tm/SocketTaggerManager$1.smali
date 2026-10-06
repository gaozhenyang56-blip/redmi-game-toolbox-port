.class Lcom/miui/networkassistant/service/tm/SocketTaggerManager$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/tm/SocketTaggerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/SocketTaggerManager;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/SocketTaggerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$1;->this$0:Lcom/miui/networkassistant/service/tm/SocketTaggerManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$1;->this$0:Lcom/miui/networkassistant/service/tm/SocketTaggerManager;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->access$000(Lcom/miui/networkassistant/service/tm/SocketTaggerManager;)V

    :goto_0
    return-void
.end method
