.class Lcom/miui/bubbles/utils/BubbleUpManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/utils/BubbleUpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bubbles/utils/BubbleUpManager;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/utils/BubbleUpManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/utils/BubbleUpManager$1;->this$0:Lcom/miui/bubbles/utils/BubbleUpManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/bubbles/utils/BubbleUpManager$1;->this$0:Lcom/miui/bubbles/utils/BubbleUpManager;

    const-string v0, "isEnter"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/bubbles/utils/BubbleUpManager;->access$002(Lcom/miui/bubbles/utils/BubbleUpManager;Z)Z

    return-void
.end method
