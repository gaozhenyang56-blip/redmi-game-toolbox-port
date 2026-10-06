.class Lcom/miui/wakepath/ui/ConfirmStartActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/wakepath/ui/ConfirmStartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/miui/wakepath/ui/ConfirmStartActivity;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity$a;->a:I

    iput-object p3, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity$a;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity$a;->a:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/permission/StoragePolicyContract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity$a;->b:Landroid/os/Bundle;

    const-string v4, "grantTempPath"

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/permission/PermissionContract;->CONTENT_URI:Landroid/net/Uri;

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity$a;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity$a;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    const-string v1, "pkgName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity$a;->b:Landroid/os/Bundle;

    const-string v3, "calleePkg"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/miui/permcenter/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
