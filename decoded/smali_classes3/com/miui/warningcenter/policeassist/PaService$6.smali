.class Lcom/miui/warningcenter/policeassist/PaService$6;
.super Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;
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

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaService$6;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-direct {p0}, Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$6;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    iget-object p1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/miui/warningcenter/policeassist/PaService;->access$1602(Lcom/miui/warningcenter/policeassist/PaService;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaService$6;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {p1}, Lcom/miui/warningcenter/policeassist/PaService;->access$1600(Lcom/miui/warningcenter/policeassist/PaService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/warningcenter/policeassist/PaService;->access$1700(Lcom/miui/warningcenter/policeassist/PaService;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$6;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    const-class v1, Lcom/miui/warningcenter/policeassist/PaService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "action_show_float_view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$6;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaService$6;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-virtual {p1}, Lcom/miui/warningcenter/policeassist/PaService;->removeView()V

    :goto_0
    return-void
.end method
