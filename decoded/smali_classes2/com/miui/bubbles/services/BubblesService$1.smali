.class Lcom/miui/bubbles/services/BubblesService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/services/BubblesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bubbles/services/BubblesService;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/services/BubblesService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/services/BubblesService$1;->this$0:Lcom/miui/bubbles/services/BubblesService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/bubbles/services/BubblesService$1;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/services/BubblesService$1;->lambda$onReceive$0(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesService$1;->this$0:Lcom/miui/bubbles/services/BubblesService;

    invoke-static {v0, p1}, Lcom/miui/bubbles/services/BubblesService;->access$000(Lcom/miui/bubbles/services/BubblesService;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miui.intent.TAKE_SCREENSHOT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance v0, Lcom/miui/bubbles/services/c;

    invoke-direct {v0, p0, p2}, Lcom/miui/bubbles/services/c;-><init>(Lcom/miui/bubbles/services/BubblesService$1;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Lef/z;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
