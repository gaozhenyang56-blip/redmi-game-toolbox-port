.class Lkg/a$f;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lkg/a;


# direct methods
.method public constructor <init>(Lkg/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lkg/a$f;->a:Lkg/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "mNoticationListenerBinder:"

    const-string v2, "SuperPowerSaveManager"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lkg/a$f;->a:Lkg/a;

    invoke-static {p1}, Lkg/a;->h(Lkg/a;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lkg/a$f;->a:Lkg/a;

    invoke-static {p1}, Lkg/a;->h(Lkg/a;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    move-result-object p1

    iget-object v0, p0, Lkg/a$f;->a:Lkg/a;

    invoke-static {v0}, Lkg/a;->e(Lkg/a;)Lcom/miui/gamebooster/service/NotificationListenerCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;->O2(Lcom/miui/gamebooster/service/INotificationListenerCallback;)V

    iget-object p1, p0, Lkg/a$f;->a:Lkg/a;

    invoke-static {p1}, Lkg/a;->a(Lkg/a;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lkg/a$f;->a:Lkg/a;

    invoke-static {v0}, Lkg/a;->g(Lkg/a;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p1, p0, Lkg/a$f;->a:Lkg/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkg/a;->i(Lkg/a;Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    goto/16 :goto_3

    :pswitch_1
    iget-object v0, p0, Lkg/a$f;->a:Lkg/a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    invoke-static {v0, p1}, Lkg/a;->i(Lkg/a;Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    :try_start_1
    iget-object p1, p0, Lkg/a$f;->a:Lkg/a;

    invoke-static {p1}, Lkg/a;->h(Lkg/a;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    move-result-object p1

    iget-object v0, p0, Lkg/a$f;->a:Lkg/a;

    invoke-static {v0}, Lkg/a;->e(Lkg/a;)Lcom/miui/gamebooster/service/NotificationListenerCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;->Z2(Lcom/miui/gamebooster/service/INotificationListenerCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lkg/a$f;->a:Lkg/a;

    invoke-static {v0}, Lkg/a;->m(Lkg/a;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    iget-object p1, p0, Lkg/a$f;->a:Lkg/a;

    invoke-static {p1}, Lkg/a;->n(Lkg/a;)V

    goto :goto_2

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lkg/a$f;->a:Lkg/a;

    invoke-static {v0}, Lkg/a;->c(Lkg/a;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkg/a$f;->a:Lkg/a;

    invoke-static {v0}, Lkg/a;->m(Lkg/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lkg/a$f;->a:Lkg/a;

    invoke-static {v0}, Lkg/a;->m(Lkg/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lkg/a$f;->a:Lkg/a;

    invoke-static {v2}, Lkg/a;->m(Lkg/a;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_2
    iget-object p1, p0, Lkg/a$f;->a:Lkg/a;

    invoke-static {p1}, Lkg/a;->d(Lkg/a;)V

    goto :goto_3

    :pswitch_4
    iget-object p1, p0, Lkg/a$f;->a:Lkg/a;

    invoke-static {p1}, Lkg/a;->m(Lkg/a;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lkg/a$f;->a:Lkg/a;

    invoke-static {p1}, Lkg/a;->n(Lkg/a;)V

    iget-object p1, p0, Lkg/a$f;->a:Lkg/a;

    invoke-virtual {p1}, Lkg/a;->u()V

    goto :goto_3

    :pswitch_5
    iget-object p1, p0, Lkg/a$f;->a:Lkg/a;

    invoke-static {p1}, Lkg/a;->k(Lkg/a;)V

    iget-object p1, p0, Lkg/a$f;->a:Lkg/a;

    invoke-static {p1}, Lkg/a;->l(Lkg/a;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
