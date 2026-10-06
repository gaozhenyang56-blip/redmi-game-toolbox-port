.class Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->j0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$b;->a:Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$b;->a:Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->f0(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;I)I

    return-void
.end method
