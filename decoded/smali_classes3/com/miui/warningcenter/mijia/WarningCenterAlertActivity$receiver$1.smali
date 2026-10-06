.class public final Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$receiver$1;->this$0:Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MijiaAlertActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x7ed8ea7f

    if-eq p2, v0, :cond_2

    const v0, 0x5fe8d4a6

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.miui.securitycenter.warningcenter_mijia_close_window"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$receiver$1;->this$0:Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->access$closeWindow(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;)V

    goto :goto_0

    :cond_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$receiver$1;->this$0:Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->access$getViewModel(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;)Lcom/miui/warningcenter/mijia/AlertWindowViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->releasePlayer()V

    :cond_4
    :goto_0
    return-void
.end method
