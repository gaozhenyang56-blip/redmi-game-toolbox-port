.class final Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$j;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->p1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$j;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$j;->invoke()V

    sget-object v0, Loj/t;->a:Loj/t;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$j;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->n0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Lmiuix/preference/CheckBoxPreference;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "checkBoxPreference"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
