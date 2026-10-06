.class public final synthetic Lcc/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcc/j;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    iput p2, p0, Lcc/j;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcc/j;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    iget v1, p0, Lcc/j;->b:I

    invoke-static {v0, v1, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->f0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;ILandroid/content/DialogInterface;I)V

    return-void
.end method
