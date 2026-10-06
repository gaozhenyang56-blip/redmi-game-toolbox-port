.class public final synthetic Lcom/xiaomi/continuity/netbus/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/continuity/netbus/NetBusManager;->L(Ljava/lang/Exception;)V

    return-void
.end method
