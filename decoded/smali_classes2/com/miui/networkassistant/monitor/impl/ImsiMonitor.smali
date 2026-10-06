.class public Lcom/miui/networkassistant/monitor/impl/ImsiMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/monitor/IMonitor;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsiMonitor"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "invoked:%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsiMonitor"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public register()V
    .locals 1

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-static {v0, p0}, Lcom/miui/networkassistant/monitor/GolbalReceiver;->addMonitor(Ljava/lang/String;Lcom/miui/networkassistant/monitor/IMonitor;)V

    return-void
.end method
