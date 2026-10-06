.class Lcom/miui/combinepermission/grantpermission/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/bottomsheet/BottomSheetBehavior$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/combinepermission/grantpermission/a;->i()Lmiuix/bottomsheet/i;
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

    iput-object p1, p0, Lcom/miui/combinepermission/grantpermission/a$b;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mode "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BottomSheetModalController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/combinepermission/grantpermission/a$b;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {p2, p1}, Lcom/miui/combinepermission/grantpermission/a;->c(Lcom/miui/combinepermission/grantpermission/a;I)I

    iget-object p2, p0, Lcom/miui/combinepermission/grantpermission/a$b;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {p2}, Lcom/miui/combinepermission/grantpermission/a;->a(Lcom/miui/combinepermission/grantpermission/a;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a$b;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-virtual {v0, p2}, Lcom/miui/combinepermission/grantpermission/a;->s(Landroid/content/res/Configuration;)V

    iget-object p2, p0, Lcom/miui/combinepermission/grantpermission/a$b;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {p2}, Lcom/miui/combinepermission/grantpermission/a;->d(Lcom/miui/combinepermission/grantpermission/a;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a$b;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {p1}, Lcom/miui/combinepermission/grantpermission/a;->a(Lcom/miui/combinepermission/grantpermission/a;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07083e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a$b;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {p1}, Lcom/miui/combinepermission/grantpermission/a;->e(Lcom/miui/combinepermission/grantpermission/a;)Lcom/miui/combinepermission/FullLinearLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a$b;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {p1}, Lcom/miui/combinepermission/grantpermission/a;->a(Lcom/miui/combinepermission/grantpermission/a;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703ab

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a$b;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {p1}, Lcom/miui/combinepermission/grantpermission/a;->e(Lcom/miui/combinepermission/grantpermission/a;)Lcom/miui/combinepermission/FullLinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/combinepermission/FullLinearLayout;->setExactlyMode(Z)V

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a$b;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {p1}, Lcom/miui/combinepermission/grantpermission/a;->e(Lcom/miui/combinepermission/grantpermission/a;)Lcom/miui/combinepermission/FullLinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a$b;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {p1}, Lcom/miui/combinepermission/grantpermission/a;->d(Lcom/miui/combinepermission/grantpermission/a;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
