.class Lcom/miui/superpower/statusbar/Clock$b$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/statusbar/Clock$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/superpower/statusbar/Clock$b;


# direct methods
.method constructor <init>(Lcom/miui/superpower/statusbar/Clock$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/Clock$b$a;->a:Lcom/miui/superpower/statusbar/Clock$b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/superpower/statusbar/Clock$b$a;->a:Lcom/miui/superpower/statusbar/Clock$b;

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/miui/superpower/statusbar/Clock$b;->e(Lcom/miui/superpower/statusbar/Clock$b;Z)Z

    :cond_0
    iget-object p1, p0, Lcom/miui/superpower/statusbar/Clock$b$a;->a:Lcom/miui/superpower/statusbar/Clock$b;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/Clock$b;->f(Lcom/miui/superpower/statusbar/Clock$b;)Lcom/miui/superpower/statusbar/Clock;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/superpower/statusbar/Clock;->a()V

    return-void
.end method
