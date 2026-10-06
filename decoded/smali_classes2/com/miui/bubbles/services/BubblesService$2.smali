.class Lcom/miui/bubbles/services/BubblesService$2;
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

    iput-object p1, p0, Lcom/miui/bubbles/services/BubblesService$2;->this$0:Lcom/miui/bubbles/services/BubblesService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/bubbles/services/BubblesService$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/bubbles/services/BubblesService$2;->lambda$onReceive$1()V

    return-void
.end method

.method public static synthetic b(Lcom/miui/bubbles/services/BubblesService$2;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/services/BubblesService$2;->lambda$onReceive$2(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/bubbles/services/BubblesService$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/bubbles/services/BubblesService$2;->lambda$onReceive$0()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesService$2;->this$0:Lcom/miui/bubbles/services/BubblesService;

    invoke-static {v0}, Lcom/miui/bubbles/services/BubblesService;->access$200(Lcom/miui/bubbles/services/BubblesService;)Lcom/miui/bubbles/BubblesManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/bubbles/BubblesManager;->onVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesService$2;->this$0:Lcom/miui/bubbles/services/BubblesService;

    invoke-static {v0}, Lcom/miui/bubbles/services/BubblesService;->access$200(Lcom/miui/bubbles/services/BubblesService;)Lcom/miui/bubbles/BubblesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/bubbles/BubblesManager;->updateBubblesState()V

    return-void
.end method

.method private synthetic lambda$onReceive$1()V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesService$2;->this$0:Lcom/miui/bubbles/services/BubblesService;

    invoke-static {v0}, Lcom/miui/bubbles/services/BubblesService;->access$200(Lcom/miui/bubbles/services/BubblesService;)Lcom/miui/bubbles/BubblesManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/bubbles/BubblesManager;->onVisibilityChanged(Z)V

    return-void
.end method

.method private synthetic lambda$onReceive$2(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesService$2;->this$0:Lcom/miui/bubbles/services/BubblesService;

    invoke-static {v0, p1}, Lcom/miui/bubbles/services/BubblesService;->access$100(Lcom/miui/bubbles/services/BubblesService;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBubbles.BubblesServices"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.android.systemui.fsgesture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance v0, Lcom/miui/bubbles/services/f;

    invoke-direct {v0, p0, p2}, Lcom/miui/bubbles/services/f;-><init>(Lcom/miui/bubbles/services/BubblesService$2;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Lef/z;->b(Ljava/lang/Runnable;)V

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance p2, Lcom/miui/bubbles/services/e;

    invoke-direct {p2, p0}, Lcom/miui/bubbles/services/e;-><init>(Lcom/miui/bubbles/services/BubblesService$2;)V

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance p2, Lcom/miui/bubbles/services/d;

    invoke-direct {p2, p0}, Lcom/miui/bubbles/services/d;-><init>(Lcom/miui/bubbles/services/BubblesService$2;)V

    :goto_1
    invoke-virtual {p1, p2}, Lef/z;->b(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_3
        -0x56ac2893 -> :sswitch_2
        0x311a1d6c -> :sswitch_1
        0x4386c31d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
