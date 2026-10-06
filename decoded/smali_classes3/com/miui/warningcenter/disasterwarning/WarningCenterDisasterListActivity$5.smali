.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->searchDatas(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$5;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;)V
    .locals 1

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;->getSearchResults()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$5;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$200(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;->setList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$5;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$5;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$200(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;->clear()V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$5;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$300(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;Z)V

    return-void
.end method
