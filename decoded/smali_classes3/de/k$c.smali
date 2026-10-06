.class Lde/k$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lde/k;


# direct methods
.method constructor <init>(Lde/k;)V
    .locals 0

    iput-object p1, p0, Lde/k$c;->a:Lde/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lde/k$c;)V
    .locals 0

    invoke-direct {p0}, Lde/k$c;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    invoke-static {}, Lme/q;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/k$c;->a:Lde/k;

    invoke-static {v0}, Lde/k;->n(Lde/k;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerOffUI"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "miui.intent.action.ACTION_SHUTDOWN_DELAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const-string v0, "miui.intent.extra.shutdown_delay"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lde/k$c;->a:Lde/k;

    invoke-static {v0}, Lde/k;->b(Lde/k;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/k$c;->a:Lde/k;

    invoke-static {v0}, Lde/k;->j(Lde/k;)I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    iget-object p1, p0, Lde/k$c;->a:Lde/k;

    invoke-static {p1}, Lde/k;->k(Lde/k;)V

    goto/16 :goto_1

    :cond_0
    const-string v0, "miui.intent.action.ACTION_WIRELESS_FW_UPDATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "miui.intent.extra.EXTRA_WIRELESS_FW_UPDATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lde/k$c;->a:Lde/k;

    invoke-static {p1}, Lde/k;->j(Lde/k;)I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lde/k$c;->a:Lde/k;

    invoke-static {p1}, Lde/k;->l(Lde/k;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lde/k$c;->a:Lde/k;

    invoke-static {p1, v1}, Lde/k;->m(Lde/k;Z)Z

    goto :goto_1

    :cond_2
    const-string v0, "miui.intent.action.ACTION_TYPE_C_HIGH_TEMP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "miui.intent.extra.EXTRA_TYPE_C_HIGH_TEMP"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x28a

    if-le v0, v3, :cond_3

    iget-object v0, p0, Lde/k$c;->a:Lde/k;

    invoke-static {v0}, Lde/k;->j(Lde/k;)I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object p1

    new-instance p2, Lde/l;

    invoke-direct {p2, p0}, Lde/l;-><init>(Lde/k$c;)V

    invoke-virtual {p1, p2}, Lde/i;->g0(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    const-string v0, "miui.intent.action.ACTION_ANTI_BURN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "miui.intent.extra.EXTRA_ANTI_BURN"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lde/k$c;->a:Lde/k;

    invoke-static {p1}, Lde/k;->n(Lde/k;)V

    goto :goto_1

    :cond_4
    if-nez p1, :cond_7

    iget-object p1, p0, Lde/k$c;->a:Lde/k;

    invoke-static {p1}, Lde/k;->o(Lde/k;)V

    goto :goto_1

    :cond_5
    const-string p2, "com.miui.securitycenter.extreme.endurance.shutdown"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lde/k$c;->a:Lde/k;

    invoke-static {p2}, Lde/k;->b(Lde/k;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_0

    :cond_6
    const-string p2, "miui.intent.action.ACTION_CHECK_CHARGE_DETECT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lde/k$c;->a:Lde/k;

    invoke-static {p1}, Lde/k;->p(Lde/k;)V

    :cond_7
    :goto_1
    return-void
.end method
