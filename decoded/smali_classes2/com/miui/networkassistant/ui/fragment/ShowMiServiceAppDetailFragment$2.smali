.class Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->updateAppTraffic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->access$500(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildMobileDataUsage(IZ)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->access$302(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->access$500(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildWifiDataUsage(IZ)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->access$602(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->access$700(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->access$500(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->access$500(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->closeSession()V

    :cond_0
    return-void
.end method
