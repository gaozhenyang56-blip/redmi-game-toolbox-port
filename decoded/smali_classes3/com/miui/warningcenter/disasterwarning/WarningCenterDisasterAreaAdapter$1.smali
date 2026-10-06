.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;

.field final synthetic val$areaModel:Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;ILcom/miui/warningcenter/disasterwarning/model/AreaModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;

    iput p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$1;->val$areaModel:Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;->access$000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;->access$000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$Listener;

    move-result-object p1

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$1;->val$areaModel:Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->isSelect()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$Listener;->onItemClick(ILcom/miui/warningcenter/disasterwarning/model/AreaModel;Z)V

    :cond_0
    return-void
.end method
