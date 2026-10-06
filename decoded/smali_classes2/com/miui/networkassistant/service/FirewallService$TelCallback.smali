.class Lcom/miui/networkassistant/service/FirewallService$TelCallback;
.super Landroid/telephony/TelephonyCallback;
.source "SourceFile"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1f
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/FirewallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/FirewallService;


# direct methods
.method private constructor <init>(Lcom/miui/networkassistant/service/FirewallService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$TelCallback;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/service/FirewallService;Lcom/miui/networkassistant/service/FirewallService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/FirewallService$TelCallback;-><init>(Lcom/miui/networkassistant/service/FirewallService;)V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActiveDataSubscriptionIdChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FireWallService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$TelCallback;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/FirewallService;->access$1500(Lcom/miui/networkassistant/service/FirewallService;)V

    return-void
.end method
