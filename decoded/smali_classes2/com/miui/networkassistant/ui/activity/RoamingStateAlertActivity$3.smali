.class Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$3;->this$0:Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$3;->this$0:Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
