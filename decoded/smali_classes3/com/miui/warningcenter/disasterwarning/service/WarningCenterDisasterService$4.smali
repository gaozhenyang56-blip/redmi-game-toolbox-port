.class Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->updateAllTopic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$4;->this$0:Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/disasterwarning/model/AreaModel;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$4;->this$0:Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-virtual {v2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->access$000(Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
