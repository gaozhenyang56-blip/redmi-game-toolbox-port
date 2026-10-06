.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$3;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILcom/miui/warningcenter/disasterwarning/model/AreaModel;Z)V
    .locals 3

    const/4 p1, 0x1

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$3;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-static {p3}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->access$300(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    const/16 v0, 0xa

    if-ge p3, v0, :cond_0

    iget-object p3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$3;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-static {p3}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->access$300(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$3;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-static {p3, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->access$400(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)V

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->isSelect()Z

    move-result p3

    xor-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setSelect(Z)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$3;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->access$500(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$3;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-static {p1, p2}, Lcom/miui/warningcenter/disasterwarning/Utils;->uploadTopicService(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$3;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f1207e9

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p1, v2

    invoke-virtual {p3, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->isSelect()Z

    move-result p3

    xor-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setSelect(Z)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$3;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->access$200(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->removeData(Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$3;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->access$300(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$3;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->access$300(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$3;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCode()I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/warningcenter/disasterwarning/Utils;->deleteTopicService(Landroid/content/Context;I)V

    :cond_2
    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$3;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->access$500(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
