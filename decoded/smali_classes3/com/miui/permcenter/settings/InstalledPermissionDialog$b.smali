.class Lcom/miui/permcenter/settings/InstalledPermissionDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/settings/InstalledPermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/settings/InstalledPermissionDialog;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/settings/InstalledPermissionDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog$b;->a:Lcom/miui/permcenter/settings/InstalledPermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 p1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, p1, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    :cond_0
    move v3, p1

    goto :goto_1

    :cond_1
    const/4 p2, 0x6

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    :goto_0
    move v3, p2

    :goto_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v0

    const-wide/high16 v1, 0x200000000000000L

    iget-object p2, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog$b;->a:Lcom/miui/permcenter/settings/InstalledPermissionDialog;

    invoke-static {p2}, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->d0(Lcom/miui/permcenter/settings/InstalledPermissionDialog;)I

    move-result v4

    const/4 v5, 0x0

    new-array v6, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog$b;->a:Lcom/miui/permcenter/settings/InstalledPermissionDialog;

    invoke-static {p2}, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->e0(Lcom/miui/permcenter/settings/InstalledPermissionDialog;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JIII[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog$b;->a:Lcom/miui/permcenter/settings/InstalledPermissionDialog;

    invoke-static {p1}, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->f0(Lcom/miui/permcenter/settings/InstalledPermissionDialog;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog$b;->a:Lcom/miui/permcenter/settings/InstalledPermissionDialog;

    invoke-static {p1}, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->f0(Lcom/miui/permcenter/settings/InstalledPermissionDialog;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog$b;->a:Lcom/miui/permcenter/settings/InstalledPermissionDialog;

    invoke-static {p1}, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->f0(Lcom/miui/permcenter/settings/InstalledPermissionDialog;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    iget-object p1, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog$b;->a:Lcom/miui/permcenter/settings/InstalledPermissionDialog;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->g0(Lcom/miui/permcenter/settings/InstalledPermissionDialog;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    :cond_3
    return-void
.end method
