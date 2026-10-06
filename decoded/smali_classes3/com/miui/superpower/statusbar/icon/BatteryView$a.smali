.class Lcom/miui/superpower/statusbar/icon/BatteryView$a;
.super Lmg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/statusbar/icon/BatteryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic d:Lcom/miui/superpower/statusbar/icon/BatteryView;


# direct methods
.method public constructor <init>(Lcom/miui/superpower/statusbar/icon/BatteryView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/icon/BatteryView$a;->d:Lcom/miui/superpower/statusbar/icon/BatteryView;

    invoke-direct {p0, p2}, Lmg/a;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lmg/a;->c:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "status"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "level"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x64

    const-string v3, "scale"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v2, p0, Lcom/miui/superpower/statusbar/icon/BatteryView$a;->d:Lcom/miui/superpower/statusbar/icon/BatteryView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v2, v1, p2, v0}, Lcom/miui/superpower/statusbar/icon/BatteryView;->a(Lcom/miui/superpower/statusbar/icon/BatteryView;IIZ)V

    :cond_1
    return-void
.end method
