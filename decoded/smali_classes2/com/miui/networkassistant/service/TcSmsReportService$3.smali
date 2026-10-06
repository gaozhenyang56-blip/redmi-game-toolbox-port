.class Lcom/miui/networkassistant/service/TcSmsReportService$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/TcSmsReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/TcSmsReportService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/TcSmsReportService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$3;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$3;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$100(Lcom/miui/networkassistant/service/TcSmsReportService;)V

    :cond_0
    return-void
.end method
