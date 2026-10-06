.class Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field public a:Lmiuix/miuixbasewidget/widget/MessageView;

.field private final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.securitycenter.action.INVISIBLE_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;->b:Landroid/content/Intent;

    const v0, 0x7f0b0594

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/miuixbasewidget/widget/MessageView;

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;->a:Lmiuix/miuixbasewidget/widget/MessageView;

    new-instance v1, Lcom/miui/permcenter/permissions/j;

    invoke-direct {v1, p0, p1}, Lcom/miui/permcenter/permissions/j;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b025b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f0807e6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v1, Lcom/miui/permcenter/permissions/k;

    invoke-direct {v1, p0, p1}, Lcom/miui/permcenter/permissions/k;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-static {p1}, Lx4/h0;->b(Landroid/view/View;)Z

    invoke-static {p1, p1}, Lx4/h0;->f(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;->c(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;->d(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;->b:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic d(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;->b:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
