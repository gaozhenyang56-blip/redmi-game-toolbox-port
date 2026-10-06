.class Lcom/miui/combinepermission/grantpermission/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/combinepermission/grantpermission/a;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/combinepermission/grantpermission/a;


# direct methods
.method constructor <init>(Lcom/miui/combinepermission/grantpermission/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/combinepermission/grantpermission/a$e;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a$e;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {v0}, Lcom/miui/combinepermission/grantpermission/a;->g(Lcom/miui/combinepermission/grantpermission/a;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "BottomSheetModalController"

    const-string v1, "showConfirmButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a$e;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {v0}, Lcom/miui/combinepermission/grantpermission/a;->g(Lcom/miui/combinepermission/grantpermission/a;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f120f49

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a$e;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {v0}, Lcom/miui/combinepermission/grantpermission/a;->h(Lcom/miui/combinepermission/grantpermission/a;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a$e;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {v0}, Lcom/miui/combinepermission/grantpermission/a;->g(Lcom/miui/combinepermission/grantpermission/a;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "BottomSheetModalController"

    const-string v1, "showMoreButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a$e;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {v0}, Lcom/miui/combinepermission/grantpermission/a;->g(Lcom/miui/combinepermission/grantpermission/a;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f120e57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a$e;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {v0}, Lcom/miui/combinepermission/grantpermission/a;->h(Lcom/miui/combinepermission/grantpermission/a;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a$e;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {v0}, Lcom/miui/combinepermission/grantpermission/a;->d(Lcom/miui/combinepermission/grantpermission/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/combinepermission/grantpermission/a$e;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {v1}, Lcom/miui/combinepermission/grantpermission/a;->d(Lcom/miui/combinepermission/grantpermission/a;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/combinepermission/grantpermission/a$e;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {v2}, Lcom/miui/combinepermission/grantpermission/a;->d(Lcom/miui/combinepermission/grantpermission/a;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a$e;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-virtual {v0, p1}, Lcom/miui/combinepermission/grantpermission/a;->r(I)V

    return-void
.end method
