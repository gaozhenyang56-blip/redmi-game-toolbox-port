.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;->onBindViewHolder(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;

.field final synthetic val$model:Lcom/miui/warningcenter/disasterwarning/model/AreaModel;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;

    iput-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$1;->val$model:Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;->access$000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$ClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;->access$000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$ClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$1;->val$model:Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-interface {p1, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$ClickListener;->onItemClick(Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)V

    :cond_0
    return-void
.end method
