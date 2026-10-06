.class public Lcom/miui/superpower/statusbar/button/CellularButton$b;
.super Lmg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/statusbar/button/CellularButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic d:Lcom/miui/superpower/statusbar/button/CellularButton;


# direct methods
.method public constructor <init>(Lcom/miui/superpower/statusbar/button/CellularButton;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/button/CellularButton$b;->d:Lcom/miui/superpower/statusbar/button/CellularButton;

    invoke-direct {p0, p2}, Lmg/a;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lmg/a;->c:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lmg/a;->c:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/miui/superpower/statusbar/button/CellularButton$b;->d:Lcom/miui/superpower/statusbar/button/CellularButton;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/button/CellularButton;->f(Lcom/miui/superpower/statusbar/button/CellularButton;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/miui/superpower/statusbar/button/CellularButton$b;->d:Lcom/miui/superpower/statusbar/button/CellularButton;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/superpower/statusbar/button/CellularButton;->g(Lcom/miui/superpower/statusbar/button/CellularButton;Z)Z

    iget-object p1, p0, Lcom/miui/superpower/statusbar/button/CellularButton$b;->d:Lcom/miui/superpower/statusbar/button/CellularButton;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/button/CellularButton;->h(Lcom/miui/superpower/statusbar/button/CellularButton;)V

    iget-object p1, p0, Lcom/miui/superpower/statusbar/button/CellularButton$b;->d:Lcom/miui/superpower/statusbar/button/CellularButton;

    invoke-virtual {p1, p2}, Lng/a;->setChecked(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/superpower/statusbar/button/CellularButton$b;->d:Lcom/miui/superpower/statusbar/button/CellularButton;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/superpower/statusbar/button/CellularButton;->g(Lcom/miui/superpower/statusbar/button/CellularButton;Z)Z

    goto :goto_0

    :cond_2
    const-string p2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/superpower/statusbar/button/CellularButton$b;->d:Lcom/miui/superpower/statusbar/button/CellularButton;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/button/CellularButton;->e(Lcom/miui/superpower/statusbar/button/CellularButton;)Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2}, Lpg/i;->f(Landroid/content/ContentResolver;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/superpower/statusbar/button/CellularButton;->i(Lcom/miui/superpower/statusbar/button/CellularButton;Z)Z

    :goto_0
    iget-object p1, p0, Lcom/miui/superpower/statusbar/button/CellularButton$b;->d:Lcom/miui/superpower/statusbar/button/CellularButton;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/button/CellularButton;->h(Lcom/miui/superpower/statusbar/button/CellularButton;)V

    :cond_3
    :goto_1
    return-void
.end method
