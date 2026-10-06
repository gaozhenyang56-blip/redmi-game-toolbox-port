.class Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private h:Lj3/c;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->a:I

    iput-object p2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->f:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)Lj3/c;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->h:Lj3/c;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;Lj3/c;)Lj3/c;
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->h:Lj3/c;

    return-object p1
.end method

.method static synthetic i(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;)I
    .locals 0

    iget p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->a:I

    return p0
.end method


# virtual methods
.method public j()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method public l()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->f:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public m(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->e:Z

    return-void
.end method

.method public n(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public o(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;->f:Landroid/view/View$OnClickListener;

    return-void
.end method
