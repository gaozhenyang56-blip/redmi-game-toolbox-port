.class Lkc/q$f;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkc/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lkc/q;


# direct methods
.method public constructor <init>(Lkc/q;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lkc/q$f;->a:Lkc/q;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x102

    if-eq v0, v1, :cond_7

    const/16 v1, 0x998

    if-eq v0, v1, :cond_6

    const/16 v1, 0x992

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x993

    if-eq v0, v1, :cond_3

    const/16 v1, 0x995

    if-eq v0, v1, :cond_2

    const/16 v1, 0x996

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    iget v0, p1, Landroid/os/Message;->arg2:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/permcenter/privacymanager/StatusBar;

    iget-object v1, p0, Lkc/q$f;->a:Lkc/q;

    iget v2, v0, Lcom/miui/permcenter/privacymanager/StatusBar;->userId:I

    iget-object v3, v0, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lkc/q;->f0(ILjava/lang/String;IZZZ)V

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lkc/q$f;->a:Lkc/q;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkc/q;->m(Lkc/q;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/permcenter/privacymanager/StatusBar;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/miui/permcenter/privacymanager/StatusBar;->removeHistory(I)V

    invoke-virtual {v0}, Lcom/miui/permcenter/privacymanager/StatusBar;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->s(Lkc/q;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {v1}, Lkc/q;->s(Lkc/q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit p1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "open_screen_share_protection"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->t(Lkc/q;)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->u(Lkc/q;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lkc/q$f;->a:Lkc/q;

    iget-object v0, v0, Lkc/q;->k:Ljava/util/List;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lkc/q$f;->a:Lkc/q;

    iget-object v1, v1, Lkc/q;->k:Ljava/util/List;

    const-string v2, "remove_screen_share_high_risk_app"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_3
    iget-object p1, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->v(Lkc/q;)I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->v(Lkc/q;)I

    move-result v0

    iget-object v1, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {v1}, Lkc/q;->w(Lkc/q;)Lcom/miui/permcenter/privacymanager/StatusBar;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lkc/q;->x(Lkc/q;ILcom/miui/permcenter/privacymanager/StatusBar;)V

    :cond_4
    iget-object p1, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->y(Lkc/q;)Lcom/miui/permcenter/privacymanager/StatusBar;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->y(Lkc/q;)Lcom/miui/permcenter/privacymanager/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/permcenter/privacymanager/StatusBar;->getHighestPerm()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_8

    const-string p1, "MIUISafety-Monitor"

    const-string v0, "onConfigurationChanged refresh screen share notification."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->l(Lkc/q;)Lkc/c;

    move-result-object p1

    iget-object v0, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {v0}, Lkc/q;->y(Lkc/q;)Lcom/miui/permcenter/privacymanager/StatusBar;

    move-result-object v0

    iget-object v1, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {v1}, Lkc/q;->z(Lkc/q;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {v2}, Lkc/q;->j(Lkc/q;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lkc/c;->j(Lcom/miui/permcenter/privacymanager/StatusBar;Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->v(Lkc/q;)I

    move-result p1

    if-ne p1, v2, :cond_8

    const-string p1, "MIUISafety-Monitor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user temp hide fullscreen capsule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {v1}, Lkc/q;->w(Lkc/q;)Lcom/miui/permcenter/privacymanager/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/permcenter/privacymanager/StatusBar;->getHighestPerm()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->l(Lkc/q;)Lkc/c;

    move-result-object p1

    iget-object v0, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {v0}, Lkc/q;->w(Lkc/q;)Lcom/miui/permcenter/privacymanager/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/permcenter/privacymanager/StatusBar;->getHighestPerm()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkc/c;->h(J)I

    move-result v0

    invoke-virtual {p1, v0}, Lkc/c;->a(I)V

    iget-object p1, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->v(Lkc/q;)I

    move-result v0

    iget-object v1, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {v1}, Lkc/q;->w(Lkc/q;)Lcom/miui/permcenter/privacymanager/StatusBar;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lkc/q;->x(Lkc/q;ILcom/miui/permcenter/privacymanager/StatusBar;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lkc/q$f;->a:Lkc/q;

    const-string v1, "extra_permissionId"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "extra_type"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "extra_data"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, v3, p1}, Lkc/q;->i(Lkc/q;JI[Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    :goto_0
    iget-object p1, p0, Lkc/q$f;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->h(Lkc/q;)V

    :cond_8
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x105
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
