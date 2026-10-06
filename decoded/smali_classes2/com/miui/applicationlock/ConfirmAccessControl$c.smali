.class Lcom/miui/applicationlock/ConfirmAccessControl$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/ConfirmAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$c;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onReceive : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConfirmAccessControl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "miui.intent.action.APP_LOCK_CLEAR_STATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$c;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->t0(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    const-string p1, "unregisterFingerprint 1"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$c;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-boolean p2, p1, Lcom/miui/applicationlock/ConfirmAccessControl;->Q:Z

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->G0(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$c;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->S0(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "onReceive register finger"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$c;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-boolean p2, p1, Lcom/miui/applicationlock/ConfirmAccessControl;->C:Z

    invoke-virtual {p1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->d1(Lcom/miui/applicationlock/ConfirmAccessControl;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method
