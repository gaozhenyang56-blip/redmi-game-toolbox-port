.class public Lcom/miui/superpower/statusbar/icon/SimSignalView$b;
.super Lmg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/statusbar/icon/SimSignalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic d:Lcom/miui/superpower/statusbar/icon/SimSignalView;


# direct methods
.method public constructor <init>(Lcom/miui/superpower/statusbar/icon/SimSignalView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView$b;->d:Lcom/miui/superpower/statusbar/icon/SimSignalView;

    invoke-direct {p0, p2}, Lmg/a;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lmg/a;->c:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lmg/a;->c:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.SERVICE_STATE"

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

    if-nez p2, :cond_1

    const-string p2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView$b;->d:Lcom/miui/superpower/statusbar/icon/SimSignalView;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/icon/SimSignalView;->c(Lcom/miui/superpower/statusbar/icon/SimSignalView;)V

    :cond_2
    return-void
.end method
