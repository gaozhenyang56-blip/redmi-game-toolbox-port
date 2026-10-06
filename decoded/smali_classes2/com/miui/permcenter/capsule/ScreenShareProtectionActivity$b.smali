.class Lcom/miui/permcenter/capsule/ScreenShareProtectionActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/capsule/ScreenShareProtectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/permcenter/capsule/ScreenShareProtectionActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/miui/permcenter/capsule/ScreenShareProtectionActivity;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/permcenter/capsule/ScreenShareProtectionActivity$b;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/permcenter/capsule/ScreenShareProtectionActivity$b;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/permcenter/capsule/ScreenShareProtectionActivity;Ljava/lang/String;Lcom/miui/permcenter/capsule/ScreenShareProtectionActivity$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/capsule/ScreenShareProtectionActivity$b;-><init>(Lcom/miui/permcenter/capsule/ScreenShareProtectionActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const-string p1, "stopActiveProjection"

    iget-object v0, p0, Lcom/miui/permcenter/capsule/ScreenShareProtectionActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/capsule/ScreenShareProtectionActivity;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, -0x2

    if-eq p2, v1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/miui/permcenter/capsule/ScreenShareProtectionActivity;->d0(Lcom/miui/permcenter/capsule/ScreenShareProtectionActivity;)Z

    move-result p2

    const-string v7, "ScreenShareProtectionActivity"

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    const-string p1, "appops"

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/permcenter/capsule/ScreenShareProtectionActivity$b;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/permcenter/capsule/ScreenShareProtectionActivity$b;->b:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x2739

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setModeWithXSpace(Landroid/content/Context;Landroid/app/AppOpsManager;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "fail to remove screen share high risk app."

    invoke-static {v7, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.miui.action.remove_screen_share_high_risk_app"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/permcenter/capsule/ScreenShareProtectionActivity$b;->b:Ljava/lang/String;

    const-string v1, "remove_screen_share_high_risk_app"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "miui.permission.READ_AND_WIRTE_PERMISSION_MANAGER"

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p2, "media_projection"

    invoke-virtual {v0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/projection/MediaProjectionManager;

    const/4 v0, 0x0

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v0, v1}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-static {v7, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-void
.end method
