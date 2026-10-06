.class public Lcom/miui/superpower/statusbar/button/BlueToothButton$a;
.super Lmg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/statusbar/button/BlueToothButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic d:Lcom/miui/superpower/statusbar/button/BlueToothButton;


# direct methods
.method public constructor <init>(Lcom/miui/superpower/statusbar/button/BlueToothButton;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/button/BlueToothButton$a;->d:Lcom/miui/superpower/statusbar/button/BlueToothButton;

    invoke-direct {p0, p2}, Lmg/a;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lmg/a;->c:Landroid/content/IntentFilter;

    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/superpower/statusbar/button/BlueToothButton$a;->d:Lcom/miui/superpower/statusbar/button/BlueToothButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lng/a;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/superpower/statusbar/button/BlueToothButton$a;->d:Lcom/miui/superpower/statusbar/button/BlueToothButton;

    invoke-virtual {p1, v0}, Lng/a;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method
