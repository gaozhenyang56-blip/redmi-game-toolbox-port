.class Lcom/miui/bubbles/services/BubblesNotificationHelper$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/services/BubblesNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bubbles/services/BubblesNotificationHelper;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/services/BubblesNotificationHelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/services/BubblesNotificationHelper$1;->this$0:Lcom/miui/bubbles/services/BubblesNotificationHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/miui/bubbles/services/BubblesNotificationHelper$1;->this$0:Lcom/miui/bubbles/services/BubblesNotificationHelper;

    invoke-static {p1}, Lcom/miui/bubbles/services/BubblesNotificationHelper;->access$200(Lcom/miui/bubbles/services/BubblesNotificationHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "miui_bubbles_pinned_apps"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/bubbles/services/BubblesNotificationHelper;->access$102(Lcom/miui/bubbles/services/BubblesNotificationHelper;Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesNotificationHelper$1;->this$0:Lcom/miui/bubbles/services/BubblesNotificationHelper;

    invoke-static {v0}, Lcom/miui/bubbles/services/BubblesNotificationHelper;->access$100(Lcom/miui/bubbles/services/BubblesNotificationHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BubblesNotificationHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
