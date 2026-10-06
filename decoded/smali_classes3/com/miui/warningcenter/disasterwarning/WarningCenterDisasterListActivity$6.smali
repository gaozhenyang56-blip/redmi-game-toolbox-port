.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->getDatas()V
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

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$6;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;->getSearchResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$6;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-static {v1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$100(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$6;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-static {v1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$100(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$6;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-static {v1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$200(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;->setList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$6;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;->getmAreaList()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$400(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$6;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;->getmLevelList()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$500(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$6;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;->getmTypeList()Ljava/util/Set;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$600(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;Ljava/util/Set;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$6;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$6;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$200(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;->clear()V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$6;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$300(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;Z)V

    return-void
.end method
