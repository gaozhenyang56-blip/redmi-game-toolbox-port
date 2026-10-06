.class Lcom/miui/warningcenter/policeassist/PaService$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/policeassist/PaService;->startRequestLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/policeassist/PaService;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/policeassist/PaService;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaService$1;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$1;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/PaService;->access$308(Lcom/miui/warningcenter/policeassist/PaService;)I

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$1;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/PaService;->access$300(Lcom/miui/warningcenter/policeassist/PaService;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$1;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/PaService;->access$400(Lcom/miui/warningcenter/policeassist/PaService;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$1;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/PaService;->access$400(Lcom/miui/warningcenter/policeassist/PaService;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$1;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {v0, v1}, Lcom/miui/warningcenter/policeassist/PaService;->access$402(Lcom/miui/warningcenter/policeassist/PaService;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$1;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$1;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-virtual {v0}, Lcom/miui/warningcenter/policeassist/PaService;->isTelephonyCalling()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$1;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/PaService;->access$400(Lcom/miui/warningcenter/policeassist/PaService;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$1;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/PaService;->access$400(Lcom/miui/warningcenter/policeassist/PaService;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$1;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {v0, v1}, Lcom/miui/warningcenter/policeassist/PaService;->access$402(Lcom/miui/warningcenter/policeassist/PaService;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    :cond_2
    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$1;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :cond_3
    const-string v0, "PAService"

    const-string v1, "loop for quest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$1;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/PaService;->access$000(Lcom/miui/warningcenter/policeassist/PaService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$1;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/PaService;->access$000(Lcom/miui/warningcenter/policeassist/PaService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/policeassist/PaService;->startLocation(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$1;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/PaService;->access$400(Lcom/miui/warningcenter/policeassist/PaService;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
