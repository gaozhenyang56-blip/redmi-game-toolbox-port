.class public final synthetic Lcom/miui/permcenter/permissions/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/permissions/j;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;

    iput-object p2, p0, Lcom/miui/permcenter/permissions/j;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/j;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/j;->b:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;->a(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
