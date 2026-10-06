.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->onBindViewHolder(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;

.field final synthetic val$model:Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;Lcom/miui/warningcenter/disasterwarning/model/AreaModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;

    iput-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$1;->val$model:Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    iput p3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->access$000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$ClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->access$000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$ClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$1;->val$model:Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    iget v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$1;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$ClickListener;->onItemClick(Lcom/miui/warningcenter/disasterwarning/model/AreaModel;I)V

    :cond_0
    return-void
.end method
