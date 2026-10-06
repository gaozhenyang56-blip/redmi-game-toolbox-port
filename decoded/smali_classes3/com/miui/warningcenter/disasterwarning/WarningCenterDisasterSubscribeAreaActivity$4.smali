.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;
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

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$4;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$4;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->access$900(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$4;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->access$1000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Lmiuix/view/l$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->startSearchMode(Lmiuix/view/l$b;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$4;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->access$1100(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
