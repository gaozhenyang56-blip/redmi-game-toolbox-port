.class Lcom/miui/networkassistant/utils/NotificationUtil$21;
.super Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/utils/NotificationUtil;->sendSimLocationErrorNotify(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuild(Landroid/app/Notification$Builder;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    return-void
.end method
