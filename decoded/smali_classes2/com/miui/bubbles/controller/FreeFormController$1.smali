.class Lcom/miui/bubbles/controller/FreeFormController$1;
.super Lmiui/app/IFreeformCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/controller/FreeFormController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bubbles/controller/FreeFormController;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/controller/FreeFormController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/controller/FreeFormController$1;->this$0:Lcom/miui/bubbles/controller/FreeFormController;

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

    const-string v1, "\tcu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/bubbles/controller/FreeFormController$1;->this$0:Lcom/miui/bubbles/controller/FreeFormController;

    invoke-static {v1}, Lcom/miui/bubbles/controller/FreeFormController;->access$000(Lcom/miui/bubbles/controller/FreeFormController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tstackInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBubbles.FFC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/miui/bubbles/controller/FreeFormController$1;->this$0:Lcom/miui/bubbles/controller/FreeFormController;

    iget v1, p2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    invoke-static {v0, v1}, Lcom/miui/bubbles/controller/FreeFormController;->access$100(Lcom/miui/bubbles/controller/FreeFormController;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p1}, Lcom/miui/bubbles/data/BubbleEntry;->createByFreeformStackInfo(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;I)Lcom/miui/bubbles/data/BubbleEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/bubbles/controller/FreeFormController$1;->this$0:Lcom/miui/bubbles/controller/FreeFormController;

    invoke-static {v1, p1, p2}, Lcom/miui/bubbles/controller/FreeFormController;->access$200(Lcom/miui/bubbles/controller/FreeFormController;ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/miui/bubbles/controller/FreeFormController$1;->this$0:Lcom/miui/bubbles/controller/FreeFormController;

    invoke-static {p1}, Lcom/miui/bubbles/controller/FreeFormController;->access$300(Lcom/miui/bubbles/controller/FreeFormController;)Lcom/miui/bubbles/BubbleController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/bubbles/BubbleController;->asBubbles()Lcom/miui/bubbles/MiuiBubbles;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/miui/bubbles/MiuiBubbles;->onPinnedAppAdded(Lcom/miui/bubbles/data/BubbleEntry;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/bubbles/controller/FreeFormController$1;->this$0:Lcom/miui/bubbles/controller/FreeFormController;

    invoke-static {v1, p1, p2}, Lcom/miui/bubbles/controller/FreeFormController;->access$400(Lcom/miui/bubbles/controller/FreeFormController;ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/bubbles/controller/FreeFormController$1;->this$0:Lcom/miui/bubbles/controller/FreeFormController;

    invoke-static {p1}, Lcom/miui/bubbles/controller/FreeFormController;->access$300(Lcom/miui/bubbles/controller/FreeFormController;)Lcom/miui/bubbles/BubbleController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/bubbles/BubbleController;->asBubbles()Lcom/miui/bubbles/MiuiBubbles;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/miui/bubbles/MiuiBubbles;->onPinnedAppRemoved(Lcom/miui/bubbles/data/BubbleEntry;)V

    :cond_2
    :goto_0
    return-void
.end method
