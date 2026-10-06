.class Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/controller/MiuiBarrageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiuiSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bubbles/controller/MiuiBarrageController;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/controller/MiuiBarrageController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;->this$0:Lcom/miui/bubbles/controller/MiuiBarrageController;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    iget-object v0, p0, Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;->this$0:Lcom/miui/bubbles/controller/MiuiBarrageController;

    invoke-static {v0}, Lcom/miui/bubbles/controller/MiuiBarrageController;->access$000(Lcom/miui/bubbles/controller/MiuiBarrageController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gb_boosting"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "enabled_notification_listeners"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "gb_bullet_chat"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;->update()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    iget-object p1, p0, Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;->this$0:Lcom/miui/bubbles/controller/MiuiBarrageController;

    invoke-static {p1}, Lcom/miui/bubbles/controller/MiuiBarrageController;->access$000(Lcom/miui/bubbles/controller/MiuiBarrageController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "gb_boosting"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object p2, p0, Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;->this$0:Lcom/miui/bubbles/controller/MiuiBarrageController;

    invoke-static {p2}, Lcom/miui/bubbles/controller/MiuiBarrageController;->access$200(Lcom/miui/bubbles/controller/MiuiBarrageController;)I

    move-result v1

    invoke-static {p1, v0, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {p2, v2}, Lcom/miui/bubbles/controller/MiuiBarrageController;->access$102(Lcom/miui/bubbles/controller/MiuiBarrageController;Z)Z

    goto/16 :goto_3

    :cond_1
    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;->this$0:Lcom/miui/bubbles/controller/MiuiBarrageController;

    invoke-static {p1}, Lcom/miui/bubbles/controller/MiuiBarrageController;->access$000(Lcom/miui/bubbles/controller/MiuiBarrageController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;->this$0:Lcom/miui/bubbles/controller/MiuiBarrageController;

    invoke-static {p2}, Lcom/miui/bubbles/controller/MiuiBarrageController;->access$200(Lcom/miui/bubbles/controller/MiuiBarrageController;)I

    move-result p2

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move p2, v3

    :goto_1
    array-length v0, p1

    if-ge p2, v0, :cond_3

    aget-object v0, p1, p2

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.barrage"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;->this$0:Lcom/miui/bubbles/controller/MiuiBarrageController;

    invoke-static {p1, v2}, Lcom/miui/bubbles/controller/MiuiBarrageController;->access$302(Lcom/miui/bubbles/controller/MiuiBarrageController;Z)Z

    return-void

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;->this$0:Lcom/miui/bubbles/controller/MiuiBarrageController;

    invoke-static {p1, v3}, Lcom/miui/bubbles/controller/MiuiBarrageController;->access$302(Lcom/miui/bubbles/controller/MiuiBarrageController;Z)Z

    goto :goto_3

    :cond_4
    const-string v0, "gb_bullet_chat"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;->this$0:Lcom/miui/bubbles/controller/MiuiBarrageController;

    invoke-static {p2}, Lcom/miui/bubbles/controller/MiuiBarrageController;->access$200(Lcom/miui/bubbles/controller/MiuiBarrageController;)I

    move-result v1

    invoke-static {p1, v0, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    invoke-static {p2, v2}, Lcom/miui/bubbles/controller/MiuiBarrageController;->access$402(Lcom/miui/bubbles/controller/MiuiBarrageController;Z)Z

    :cond_6
    :goto_3
    return-void
.end method

.method update()V
    .locals 2

    const-string v0, "gb_boosting"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    const-string v0, "gb_bullet_chat"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method
