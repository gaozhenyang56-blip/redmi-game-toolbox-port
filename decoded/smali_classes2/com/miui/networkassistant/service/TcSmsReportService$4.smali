.class Lcom/miui/networkassistant/service/TcSmsReportService$4;
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

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$4;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {p2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length p2, p1

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    aget-object v0, p1, p2

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+86"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->removePhoneNumPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$4;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$200(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_3

    aget-object v1, p1, p2

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object p2, p0, Lcom/miui/networkassistant/service/TcSmsReportService$4;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/service/TcSmsReportService;->access$300(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method
