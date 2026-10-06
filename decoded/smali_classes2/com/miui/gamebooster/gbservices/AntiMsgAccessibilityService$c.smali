.class Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$c;->a:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miui.intent.action.gb_show_window"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "passby_intent"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$c;->a:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-static {p2, p1}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->a(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
