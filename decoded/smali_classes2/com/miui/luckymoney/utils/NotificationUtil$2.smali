.class Lcom/miui/luckymoney/utils/NotificationUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/luckymoney/utils/NotificationUtil;->cancelNotificationDelay(Landroid/content/Context;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/utils/NotificationUtil$2;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/miui/luckymoney/utils/NotificationUtil$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/utils/NotificationUtil$2;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/miui/luckymoney/utils/NotificationUtil$2;->val$id:I

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method
