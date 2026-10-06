.class Lcom/miui/dock/DockMonitorService$k;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/miui/dock/DockMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/DockMonitorService$k;->a:Lcom/miui/dock/DockMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/dock/DockMonitorService$k;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic b(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "pkgName"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.miui.notes"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lm5/f;->e(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.miui.gamebooster.UNINSTALLAPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance v0, Lcom/miui/dock/b;

    invoke-direct {v0, p2}, Lcom/miui/dock/b;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Lef/z;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
