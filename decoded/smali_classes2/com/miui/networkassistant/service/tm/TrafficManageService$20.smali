.class Lcom/miui/networkassistant/service/tm/TrafficManageService$20;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/tm/TrafficManageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$20;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$20;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_policy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$3702(Lcom/miui/networkassistant/service/tm/TrafficManageService;I)I

    return-void
.end method
