.class public Lcom/miui/permcenter/compact/MiuiNotificationCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "MiuiNotificationCompat"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCustomizedIcon(Z)V
    .locals 4

    const-string v0, "MiuiNotificationCompat"

    :try_start_0
    const-string v1, "android.app.Notification"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "extraNotification"

    const-class v3, Landroid/app/MiuiNotification;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/permcenter/compact/ReflectUtilHelper;->getObjectField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/MiuiNotification;

    invoke-virtual {v1, p0}, Landroid/app/MiuiNotification;->setCustomizedIcon(Z)Landroid/app/MiuiNotification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setEnableFloat(Z)V
    .locals 4

    const-string v0, "MiuiNotificationCompat"

    :try_start_0
    const-string v1, "android.app.Notification"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "extraNotification"

    const-class v3, Landroid/app/MiuiNotification;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/permcenter/compact/ReflectUtilHelper;->getObjectField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/MiuiNotification;

    invoke-virtual {v1, p0}, Landroid/app/MiuiNotification;->setEnableFloat(Z)Landroid/app/MiuiNotification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setEnableKeyguard(Z)V
    .locals 4

    const-string v0, "MiuiNotificationCompat"

    :try_start_0
    const-string v1, "android.app.Notification"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "extraNotification"

    const-class v3, Landroid/app/MiuiNotification;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/permcenter/compact/ReflectUtilHelper;->getObjectField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/MiuiNotification;

    invoke-virtual {v1, p0}, Landroid/app/MiuiNotification;->setEnableKeyguard(Z)Landroid/app/MiuiNotification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setFloatTime(I)V
    .locals 4

    const-string v0, "MiuiNotificationCompat"

    :try_start_0
    const-string v1, "android.app.Notification"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "extraNotification"

    const-class v3, Landroid/app/MiuiNotification;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/permcenter/compact/ReflectUtilHelper;->getObjectField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/MiuiNotification;

    invoke-virtual {v1, p0}, Landroid/app/MiuiNotification;->setFloatTime(I)Landroid/app/MiuiNotification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
