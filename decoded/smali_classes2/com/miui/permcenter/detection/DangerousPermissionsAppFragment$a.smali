.class Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$a;->a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0b0293

    if-eq p1, v1, :cond_2

    const v1, 0x7f0b0296

    if-eq p1, v1, :cond_1

    const v1, 0x7f0b029c

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "android.settings.USAGE_ACCESS_SETTINGS"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$a;->a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$a;->a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;

    invoke-static {p1}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->b0(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)Z

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance p1, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.DeviceAdminSettings"

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$a;->a:Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
