.class Lcom/miui/bubbles/services/BubbleRemoteService$1;
.super Lmiui/app/IFreeformCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/services/BubbleRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bubbles/services/BubbleRemoteService;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/services/BubbleRemoteService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/services/BubbleRemoteService$1;->this$0:Lcom/miui/bubbles/services/BubbleRemoteService;

    invoke-direct {p0}, Lmiui/app/IFreeformCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchFreeFormStackModeChanged: action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\tcu="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/bubbles/services/BubbleRemoteService$1;->this$0:Lcom/miui/bubbles/services/BubbleRemoteService;

    invoke-static {p1}, Lcom/miui/bubbles/services/BubbleRemoteService;->access$000(Lcom/miui/bubbles/services/BubbleRemoteService;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\tstackInfo="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BubbleRemoteService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/bubbles/services/BubbleRemoteService$1;->this$0:Lcom/miui/bubbles/services/BubbleRemoteService;

    invoke-static {p1}, Lcom/miui/bubbles/services/BubbleRemoteService;->access$100(Lcom/miui/bubbles/services/BubbleRemoteService;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/bubbles/services/BubbleRemoteService$1;->this$0:Lcom/miui/bubbles/services/BubbleRemoteService;

    invoke-static {p1}, Lcom/miui/bubbles/services/BubbleRemoteService;->access$200(Lcom/miui/bubbles/services/BubbleRemoteService;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/bubbles/services/BubbleRemoteService$1;->this$0:Lcom/miui/bubbles/services/BubbleRemoteService;

    invoke-static {p1}, Lcom/miui/bubbles/services/BubbleRemoteService;->access$300(Lcom/miui/bubbles/services/BubbleRemoteService;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p1, p0, Lcom/miui/bubbles/services/BubbleRemoteService$1;->this$0:Lcom/miui/bubbles/services/BubbleRemoteService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/bubbles/services/BubbleRemoteService;->access$402(Lcom/miui/bubbles/services/BubbleRemoteService;Z)Z

    iget-object p1, p0, Lcom/miui/bubbles/services/BubbleRemoteService$1;->this$0:Lcom/miui/bubbles/services/BubbleRemoteService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/bubbles/services/BubbleRemoteService;->access$502(Lcom/miui/bubbles/services/BubbleRemoteService;Lcom/miui/bubbles/IUiProcessBinder;)Lcom/miui/bubbles/IUiProcessBinder;

    const-string p1, "unbindService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
