.class Lcom/miui/luckymoney/utils/NotificationUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/luckymoney/utils/NotificationUtil;->playNotificationSound(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$r:Landroid/media/Ringtone;


# direct methods
.method constructor <init>(Landroid/media/Ringtone;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/utils/NotificationUtil$1;->val$r:Landroid/media/Ringtone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/utils/NotificationUtil$1;->val$r:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    return-void
.end method
