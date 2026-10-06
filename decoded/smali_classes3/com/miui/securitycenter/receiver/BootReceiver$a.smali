.class Lcom/miui/securitycenter/receiver/BootReceiver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securitycenter/receiver/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/securitycenter/receiver/BootReceiver;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/receiver/BootReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/receiver/BootReceiver$a;->b:Lcom/miui/securitycenter/receiver/BootReceiver;

    iput-object p2, p0, Lcom/miui/securitycenter/receiver/BootReceiver$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securitycenter/receiver/BootReceiver$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lle/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securitycenter/receiver/BootReceiver$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lle/b;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
