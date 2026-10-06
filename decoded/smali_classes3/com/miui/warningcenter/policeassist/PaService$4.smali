.class Lcom/miui/warningcenter/policeassist/PaService$4;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/policeassist/PaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/policeassist/PaService;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/policeassist/PaService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaService$4;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaService$4;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p1

    iget-object p2, p0, Lcom/miui/warningcenter/policeassist/PaService$4;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {p2}, Lcom/miui/warningcenter/policeassist/PaService;->access$1100(Lcom/miui/warningcenter/policeassist/PaService;)I

    move-result p2

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_3

    const-string p2, "PAService"

    const-string v0, "hang off phone"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/warningcenter/policeassist/PaService$4;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {p2}, Lcom/miui/warningcenter/policeassist/PaUtils;->getPoliceAssistToggle(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/miui/warningcenter/policeassist/PaService$4;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {p2}, Lcom/miui/warningcenter/policeassist/PaService;->access$1200(Lcom/miui/warningcenter/policeassist/PaService;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/miui/warningcenter/policeassist/PaService$4;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {p2}, Lcom/miui/warningcenter/policeassist/PaUtils;->showPAGuideNotification(Landroid/content/Context;)V

    :cond_1
    iget-object p2, p0, Lcom/miui/warningcenter/policeassist/PaService$4;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {p2}, Lcom/miui/warningcenter/policeassist/PaService;->access$100(Lcom/miui/warningcenter/policeassist/PaService;)Lcom/miui/warningcenter/policeassist/PaService$TransType;

    move-result-object p2

    sget-object v0, Lcom/miui/warningcenter/policeassist/PaService$TransType;->NETWORK:Lcom/miui/warningcenter/policeassist/PaService$TransType;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/miui/warningcenter/policeassist/PaService$4;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-virtual {p2}, Lcom/miui/warningcenter/policeassist/PaService;->releaseViews()V

    iget-object p2, p0, Lcom/miui/warningcenter/policeassist/PaService$4;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {p2}, Lcom/miui/warningcenter/policeassist/PaService;->access$1300(Lcom/miui/warningcenter/policeassist/PaService;)V

    iget-object p2, p0, Lcom/miui/warningcenter/policeassist/PaService$4;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {p2}, Lcom/miui/warningcenter/policeassist/PaService;->access$1400(Lcom/miui/warningcenter/policeassist/PaService;)V

    iget-object p2, p0, Lcom/miui/warningcenter/policeassist/PaService$4;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {p2}, Lcom/miui/warningcenter/policeassist/PaService;->access$1500(Lcom/miui/warningcenter/policeassist/PaService;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/warningcenter/policeassist/PaService$4;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-virtual {p2}, Landroid/app/Service;->stopSelf()V

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/miui/warningcenter/policeassist/PaService$4;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {p2, p1}, Lcom/miui/warningcenter/policeassist/PaService;->access$1102(Lcom/miui/warningcenter/policeassist/PaService;I)I

    return-void
.end method
