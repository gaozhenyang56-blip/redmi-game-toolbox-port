.class public final synthetic Lcc/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/miui/permcenter/AppPermissionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;IILcom/miui/permcenter/AppPermissionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcc/m;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

    iput p2, p0, Lcc/m;->b:I

    iput p3, p0, Lcc/m;->c:I

    iput-object p4, p0, Lcc/m;->d:Lcom/miui/permcenter/AppPermissionInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcc/m;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

    iget v1, p0, Lcc/m;->b:I

    iget v2, p0, Lcc/m;->c:I

    iget-object v3, p0, Lcc/m;->d:Lcom/miui/permcenter/AppPermissionInfo;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->n(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;IILcom/miui/permcenter/AppPermissionInfo;Landroid/view/View;)V

    return-void
.end method
