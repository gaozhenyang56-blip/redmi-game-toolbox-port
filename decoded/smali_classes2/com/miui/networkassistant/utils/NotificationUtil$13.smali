.class Lcom/miui/networkassistant/utils/NotificationUtil$13;
.super Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/utils/NotificationUtil;->sendDataUsageCorrectionTimeOutOrFailureNotify(Landroid/content/Context;Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$businessHall:Landroid/content/Intent;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$slotNum:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/utils/NotificationUtil$13;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/miui/networkassistant/utils/NotificationUtil$13;->val$slotNum:I

    iput-object p3, p0, Lcom/miui/networkassistant/utils/NotificationUtil$13;->val$businessHall:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuild(Landroid/app/Notification$Builder;)V
    .locals 4

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/miui/networkassistant/utils/NotificationUtil$13;->val$context:Landroid/content/Context;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/utils/NotificationUtil$13;->val$slotNum:I

    const-string v2, "sim_slot_num_tag"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/utils/NotificationUtil$13;->val$businessHall:Landroid/content/Intent;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "TO_BUSINESS_HALL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-class v2, Lcom/miui/networkassistant/utils/NotificationUtil;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "view_from"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fragment_arg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/utils/NotificationUtil$13;->val$context:Landroid/content/Context;

    const v2, 0x7f121987

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setIconRes(I)V

    :cond_1
    iget-object v2, p0, Lcom/miui/networkassistant/utils/NotificationUtil$13;->val$context:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, p1, v0, v1, v3}, Lcom/miui/networkassistant/utils/NotificationUtil;->access$000(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/content/Intent;Ljava/lang/CharSequence;I)V

    return-void
.end method
