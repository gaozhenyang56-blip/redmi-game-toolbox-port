.class Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lmiuix/slidingwidget/widget/SlidingButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0d16

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;->a:Landroid/widget/TextView;

    const v0, 0x7f0b0d15

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;->b:Landroid/widget/TextView;

    const v0, 0x7f0b08a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    return-void
.end method

.method static synthetic a(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method
