.class Lcom/miui/warningcenter/policeassist/PaService$3;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/policeassist/PaService;->startLocation(Ljava/lang/String;Z)V
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

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaService$3;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$3;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/warningcenter/policeassist/PaService;->access$702(Lcom/miui/warningcenter/policeassist/PaService;Z)Z

    invoke-static {}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->getInstance()Lcom/miui/earthquakewarning/utils/LocationRecordManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->stopLocation()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
