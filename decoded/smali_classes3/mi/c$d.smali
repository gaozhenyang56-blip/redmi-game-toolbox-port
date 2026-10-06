.class Lmi/c$d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmi/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmi/c;


# direct methods
.method constructor <init>(Lmi/c;)V
    .locals 0

    iput-object p1, p0, Lmi/c$d;->a:Lmi/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "SdkManager"

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lmi/c$d;->a:Lmi/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lmi/c;->l(Lmi/c;J)J

    iget-object p2, p0, Lmi/c$d;->a:Lmi/c;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lmi/c;->n(Lmi/c;Z)Z

    iget-object p2, p0, Lmi/c$d;->a:Lmi/c;

    invoke-static {p2}, Lmi/c;->g(Lmi/c;)Loi/a;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmi/c$d;->a:Lmi/c;

    invoke-static {p2}, Lmi/c;->o(Lmi/c;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2, v0, v1}, Lmi/c;->q(Lmi/c;J)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lmi/c$d;->a:Lmi/c;

    invoke-static {p2}, Lmi/c;->c(Lmi/c;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lmi/c$d;->a:Lmi/c;

    invoke-static {v0}, Lmi/c;->r(Lmi/c;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string p2, "pending dex is null, unregister"

    invoke-static {p1, p2}, Lni/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lmi/c$d;->a:Lmi/c;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lmi/c;->n(Lmi/c;Z)Z

    :cond_3
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "screen off : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmi/c$d;->a:Lmi/c;

    invoke-static {v0}, Lmi/c;->m(Lmi/c;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lni/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v0, "mScreenReceiver onReceive e"

    invoke-static {p1, v0, p2}, Lni/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
