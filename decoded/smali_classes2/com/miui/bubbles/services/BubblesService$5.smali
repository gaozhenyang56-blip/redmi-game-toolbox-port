.class Lcom/miui/bubbles/services/BubblesService$5;
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

    iput-object p1, p0, Lcom/miui/bubbles/services/BubblesService$5;->this$0:Lcom/miui/bubbles/services/BubblesService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/bubbles/services/BubblesService$5;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/bubbles/services/BubblesService$5;->lambda$onReceive$0()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesService$5;->this$0:Lcom/miui/bubbles/services/BubblesService;

    invoke-static {v0}, Lcom/miui/bubbles/services/BubblesService;->access$200(Lcom/miui/bubbles/services/BubblesService;)Lcom/miui/bubbles/BubblesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/bubbles/BubblesManager;->updateBubblesLocation()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "INTENT_SIDEBAR_LOCATION_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/bubbles/services/BubblesService$5;->this$0:Lcom/miui/bubbles/services/BubblesService;

    invoke-static {p1}, Lcom/miui/bubbles/services/BubblesService;->access$200(Lcom/miui/bubbles/services/BubblesService;)Lcom/miui/bubbles/BubblesManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance p2, Lcom/miui/bubbles/services/g;

    invoke-direct {p2, p0}, Lcom/miui/bubbles/services/g;-><init>(Lcom/miui/bubbles/services/BubblesService$5;)V

    invoke-virtual {p1, p2}, Lef/z;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
