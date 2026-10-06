.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;
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

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$7;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$7;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$700(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$7;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$200(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;->clear()V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$7;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$800(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Lmiuix/view/l$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->startSearchMode(Lmiuix/view/l$b;)V

    :cond_0
    return-void
.end method
