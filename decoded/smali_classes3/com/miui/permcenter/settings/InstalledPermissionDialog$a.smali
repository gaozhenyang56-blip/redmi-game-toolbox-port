.class Lcom/miui/permcenter/settings/InstalledPermissionDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/settings/InstalledPermissionDialog;->h0()V
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

    iput-object p1, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog$a;->a:Lcom/miui/permcenter/settings/InstalledPermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog$a;->a:Lcom/miui/permcenter/settings/InstalledPermissionDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog$a;->a:Lcom/miui/permcenter/settings/InstalledPermissionDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog$a;->a:Lcom/miui/permcenter/settings/InstalledPermissionDialog;

    invoke-virtual {p1}, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->finish()V

    :cond_0
    return-void
.end method
