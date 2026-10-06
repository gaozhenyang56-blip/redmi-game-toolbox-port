.class public final synthetic Lcom/miui/permcenter/permissions/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

.field public final synthetic b:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/permissions/h;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

    iput-object p2, p0, Lcom/miui/permcenter/permissions/h;->b:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/h;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/h;->b:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;

    invoke-static {v0, v1, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->q(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
