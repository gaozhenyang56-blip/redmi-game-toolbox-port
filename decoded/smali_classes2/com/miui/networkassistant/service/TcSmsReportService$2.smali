.class Lcom/miui/networkassistant/service/TcSmsReportService$2;
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

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$2;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$2;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
