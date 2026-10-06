.class Lcom/miui/securitycenter/WidgetProvider$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securitycenter/WidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securitycenter/WidgetProvider;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/WidgetProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/WidgetProvider$a;->a:Lcom/miui/securitycenter/WidgetProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WidgetProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.miui.intent.action.CLEAN_MEMORY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/miui/securitycenter/WidgetProvider$a$a;

    invoke-direct {p1, p0}, Lcom/miui/securitycenter/WidgetProvider$a$a;-><init>(Lcom/miui/securitycenter/WidgetProvider$a;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v1, "com.miui.intent.action.CHANGE_POWER_SAVE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_CHANGE_POWER_SAVE_MODE,call_package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/securitycenter/WidgetProvider$a;->a:Lcom/miui/securitycenter/WidgetProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lce/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/miui/securitycenter/WidgetProvider$a;->a:Lcom/miui/securitycenter/WidgetProvider;

    const-string p2, "switch_power_save"

    invoke-static {p1, p2}, Lcom/miui/securitycenter/WidgetProvider;->b(Lcom/miui/securitycenter/WidgetProvider;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "com.miui.intent.action.VIBRATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    const-string v0, "linear_effect"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-wide/16 v0, -0x1

    const-string v2, "vibrate_milli"

    invoke-virtual {p2, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object p2, p0, Lcom/miui/securitycenter/WidgetProvider$a;->a:Lcom/miui/securitycenter/WidgetProvider;

    invoke-static {p2, p1, v0, v1}, Lcom/miui/securitycenter/WidgetProvider;->c(Lcom/miui/securitycenter/WidgetProvider;IJ)V

    :cond_2
    :goto_0
    return-void
.end method
