.class Lf7/d$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lf7/d;


# direct methods
.method private constructor <init>(Lf7/d;)V
    .locals 0

    iput-object p1, p0, Lf7/d$c;->a:Lf7/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lf7/d;Lf7/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lf7/d$c;-><init>(Lf7/d;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "InstalledAppMonitor"

    const-string v3, "android.intent.extra.UID"

    const-string v4, "android.intent.extra.REPLACING"

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "onReceive add pkg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lf7/d$c;->a:Lf7/d;

    invoke-static {v1}, Lf7/d;->a(Lf7/d;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lf7/d$c;->a:Lf7/d;

    invoke-static {v1}, Lf7/d;->a(Lf7/d;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lf7/d$b;

    invoke-direct {v2, p2, v0, p1}, Lf7/d$b;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lf7/d$c;->a:Lf7/d;

    invoke-static {v1}, Lf7/d;->a(Lf7/d;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lf7/d$c$a;

    invoke-direct {v2, p0, p1, v0, p2}, Lf7/d$c$a;-><init>(Lf7/d$c;Landroid/content/Context;Ljava/lang/String;I)V

    const-wide/16 p1, 0x32

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "onReceive remove pkg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lf7/d$c;->a:Lf7/d;

    invoke-static {v1}, Lf7/d;->a(Lf7/d;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lf7/d$c;->a:Lf7/d;

    invoke-static {v1}, Lf7/d;->a(Lf7/d;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lf7/d$d;

    invoke-direct {v2, p2, v0, p1}, Lf7/d$d;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    nop

    :cond_5
    :goto_1
    return-void
.end method
