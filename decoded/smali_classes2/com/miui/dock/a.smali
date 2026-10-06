.class public final synthetic Lcom/miui/dock/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/dock/DockMonitorService$i;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/dock/DockMonitorService$i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/dock/a;->a:Lcom/miui/dock/DockMonitorService$i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/a;->a:Lcom/miui/dock/DockMonitorService$i;

    invoke-static {v0}, Lcom/miui/dock/DockMonitorService$i;->a(Lcom/miui/dock/DockMonitorService$i;)V

    return-void
.end method
