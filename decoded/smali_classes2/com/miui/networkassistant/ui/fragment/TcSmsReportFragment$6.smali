.class Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    check-cast p2, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1702(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$3300(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->registerSmsReportListener(Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2100(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1702(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    return-void
.end method
