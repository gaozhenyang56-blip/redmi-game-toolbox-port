.class Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj3/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->D(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e$a;->c:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

    iput-object p2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e$a;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;

    iput-object p3, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj3/c;I)V
    .locals 3

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e$a;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->g(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Lj3/c;

    move-result-object p1

    invoke-virtual {p1}, Lj3/c;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj3/b;

    invoke-virtual {p1}, Lj3/b;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e$a;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->d(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e$a;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;

    invoke-static {v0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->e(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e$a;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e$a;->c:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->u(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;)Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e$a;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj3/b;

    invoke-virtual {p2}, Lj3/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->v(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->c(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e$a;->c:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
