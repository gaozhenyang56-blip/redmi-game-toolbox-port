.class Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity$a;->a:Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PowerSaveDialogActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->d:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lje/c;->h:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity$a;->a:Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-static {p2, v0}, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->g0(Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;Z)Z

    iget-object p1, p0, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity$a;->a:Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;

    invoke-static {p1}, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->f0(Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->h0(Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;Z)V

    :cond_1
    return-void
.end method
