.class public final synthetic Lcom/xiaomi/continuity/netbus/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/xiaomi/continuity/netbus/IExecutor;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
