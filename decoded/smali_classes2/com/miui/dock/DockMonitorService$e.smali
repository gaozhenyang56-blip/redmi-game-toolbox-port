.class Lcom/miui/dock/DockMonitorService$e;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/dock/DockMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/dock/DockMonitorService;


# direct methods
.method constructor <init>(Lcom/miui/dock/DockMonitorService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/DockMonitorService$e;->a:Lcom/miui/dock/DockMonitorService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/miui/dock/DockMonitorService$e;->a:Lcom/miui/dock/DockMonitorService;

    invoke-static {p1}, Ls5/a;->g(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/dock/DockMonitorService;->r(Lcom/miui/dock/DockMonitorService;Z)Z

    return-void
.end method
