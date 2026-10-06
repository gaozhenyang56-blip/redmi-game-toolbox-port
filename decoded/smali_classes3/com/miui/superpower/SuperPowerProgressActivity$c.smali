.class Lcom/miui/superpower/SuperPowerProgressActivity$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/SuperPowerProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final synthetic c:Lcom/miui/superpower/SuperPowerProgressActivity;


# direct methods
.method private constructor <init>(Lcom/miui/superpower/SuperPowerProgressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$c;->c:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string p1, "reason"

    iput-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$c;->a:Ljava/lang/String;

    const-string p1, "homekey"

    iput-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$c;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/superpower/SuperPowerProgressActivity;Lcom/miui/superpower/SuperPowerProgressActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/superpower/SuperPowerProgressActivity$c;-><init>(Lcom/miui/superpower/SuperPowerProgressActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "homekey"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/superpower/SuperPowerProgressActivity$c;->c:Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-static {p2, p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->m0(Lcom/miui/superpower/SuperPowerProgressActivity;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
