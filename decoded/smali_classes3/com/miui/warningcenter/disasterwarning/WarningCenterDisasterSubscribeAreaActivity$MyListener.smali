.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MyListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/warningcenter/disasterwarning/service/RequestAreaCodeTask$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyListener"
.end annotation


# instance fields
.field private final activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MyListener;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onResult(Lcom/miui/earthquakewarning/model/AreaCodeResult;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MyListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->getData()Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->getCityId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->getData()Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->getData()Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->getDistrict()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/Utils;->setPreviousArea(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->access$600(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MainHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
