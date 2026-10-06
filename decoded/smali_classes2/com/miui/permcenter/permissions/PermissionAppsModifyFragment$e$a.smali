.class public final Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e$a;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    iput p2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e$a;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    iget v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e$a;->b:I

    invoke-static {v0, v1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->x0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;I)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e$a;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->o0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Lcom/miui/permcenter/permissions/RadioButtonPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e$a;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-virtual {v1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->I0()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->z0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Lcom/miui/permcenter/permissions/RadioButtonPreference;I)V

    :cond_0
    return-void
.end method
