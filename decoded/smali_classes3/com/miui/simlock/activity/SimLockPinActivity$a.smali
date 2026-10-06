.class Lcom/miui/simlock/activity/SimLockPinActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/simlock/activity/SimLockPinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/simlock/activity/SimLockPinActivity;


# direct methods
.method constructor <init>(Lcom/miui/simlock/activity/SimLockPinActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$a;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lfg/e;->a(Landroid/content/Intent;)Lfg/e;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive SimData : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SimLockPinActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/simlock/activity/SimLockPinActivity$a;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p2}, Lcom/miui/simlock/activity/SimLockPinActivity;->k0(Lcom/miui/simlock/activity/SimLockPinActivity;)Ljava/util/Map;

    move-result-object p2

    iget v0, p1, Lfg/e;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p1, Lfg/e;->b:I

    iget-object p2, p0, Lcom/miui/simlock/activity/SimLockPinActivity$a;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p2}, Lcom/miui/simlock/activity/SimLockPinActivity;->l0(Lcom/miui/simlock/activity/SimLockPinActivity;)I

    move-result p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$a;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->w0(Lcom/miui/simlock/activity/SimLockPinActivity;)Lmiui/telephony/SubscriptionManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/simlock/activity/SimLockPinActivity$a;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p2}, Lcom/miui/simlock/activity/SimLockPinActivity;->v0(Lcom/miui/simlock/activity/SimLockPinActivity;)Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$a;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/simlock/activity/SimLockPinActivity;->x0(Lcom/miui/simlock/activity/SimLockPinActivity;Z)Z

    :cond_0
    return-void
.end method
