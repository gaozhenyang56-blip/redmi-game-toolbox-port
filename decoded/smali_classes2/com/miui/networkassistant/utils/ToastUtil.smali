.class public Lcom/miui/networkassistant/utils/ToastUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getToastTextBySlot(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const p1, 0x7f1206d8

    goto :goto_0

    :cond_0
    const p1, 0x7f1206d9

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public static makeMiHallToast(Landroid/content/Context;II)V
    .locals 1

    const-string v0, "com.android.contacts"

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isRunningForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.miui.virtualsim"

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isRunningForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/ToastUtil;->makeToastText(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/ToastUtil;->getToastTextBySlot(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public static makeToastText(Landroid/content/Context;II)V
    .locals 0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/ToastUtil;->makeToastText(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static makeToastText(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/ToastUtil;->getToastTextBySlot(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/miui/networkassistant/utils/PackageUtil;->isRunningForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showCorrectionSucceed(Landroid/content/Context;II)V
    .locals 4

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/ToastUtil;->getToastTextBySlot(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.android.contacts"

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isRunningForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/networkassistant/utils/PackageUtil;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->virtualSimInstalled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.miui.virtualsim"

    invoke-static {p0, v3}, Lcom/miui/networkassistant/utils/PackageUtil;->isRunningForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/miui/networkassistant/utils/PackageUtil;->isRunningForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const v0, 0x7f121ab2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0, p1, v2}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendCorrectionAlertNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {p0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method
