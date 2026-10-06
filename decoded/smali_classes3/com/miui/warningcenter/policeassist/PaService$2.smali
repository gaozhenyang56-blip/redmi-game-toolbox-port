.class Lcom/miui/warningcenter/policeassist/PaService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;


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
.method constructor <init>(Lcom/miui/warningcenter/policeassist/PaService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaService$2;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFailed(Ljava/lang/String;)V
    .locals 1

    const-string p1, "PAService"

    const-string v0, "onLocationFailed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/earthquakewarning/utils/MsgObservable;->getInstance()Lcom/miui/earthquakewarning/utils/MsgObservable;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/miui/earthquakewarning/utils/MsgObservable;->sendEmptyMessage(I)V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->getInstance()Lcom/miui/earthquakewarning/utils/LocationRecordManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->stopLocation()V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/MsgObservable;->getInstance()Lcom/miui/earthquakewarning/utils/MsgObservable;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/miui/earthquakewarning/utils/MsgObservable;->sendEmptyMessage(I)V

    return-void
.end method

.method public onLocationSuccess(Landroid/location/Location;)V
    .locals 2

    const-string v0, "PAService"

    const-string v1, "onLocationSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$2;->this$0:Lcom/miui/warningcenter/policeassist/PaService;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/PaService;->access$500(Lcom/miui/warningcenter/policeassist/PaService;)Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/miui/warningcenter/policeassist/PaService;->access$600(Lcom/miui/warningcenter/policeassist/PaService;Landroid/location/Location;Z)V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->getInstance()Lcom/miui/earthquakewarning/utils/LocationRecordManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->stopLocation()V

    return-void
.end method
