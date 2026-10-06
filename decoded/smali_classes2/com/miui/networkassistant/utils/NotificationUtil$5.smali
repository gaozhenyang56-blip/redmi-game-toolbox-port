.class Lcom/miui/networkassistant/utils/NotificationUtil$5;
.super Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/utils/NotificationUtil;->sendDailyLimitWarning(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$slotNum:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/utils/NotificationUtil$5;->val$slotNum:I

    invoke-direct {p0}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuild(Landroid/app/Notification$Builder;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    return-void
.end method

.method public onCreateIntent(Landroid/content/Intent;)V
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/utils/NotificationUtil$5;->val$slotNum:I

    const-string v1, "sim_slot_num_tag"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method
