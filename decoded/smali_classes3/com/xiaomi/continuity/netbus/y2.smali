.class public final synthetic Lcom/xiaomi/continuity/netbus/y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/continuity/netbus/ServiceExecutor$ExceptionHandler;


# instance fields
.field public final synthetic a:Lcom/xiaomi/continuity/netbus/ServiceExecutor;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/continuity/netbus/ServiceExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/continuity/netbus/y2;->a:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/continuity/netbus/y2;->a:Lcom/xiaomi/continuity/netbus/ServiceExecutor;

    invoke-static {v0, p1}, Lcom/xiaomi/continuity/netbus/ServiceExecutor;->a(Lcom/xiaomi/continuity/netbus/ServiceExecutor;Ljava/lang/Exception;)V

    return-void
.end method
