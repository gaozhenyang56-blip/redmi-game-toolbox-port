.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;->onBindViewHolder(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;

.field final synthetic val$model:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;

    iput-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter$1;->val$model:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;->access$000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter$ClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;->access$000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter$ClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter$1;->val$model:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-interface {p1, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter$ClickListener;->onItemClick(Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    :cond_0
    return-void
.end method
