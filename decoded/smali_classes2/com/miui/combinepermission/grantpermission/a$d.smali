.class Lcom/miui/combinepermission/grantpermission/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/combinepermission/grantpermission/a;->k(Lmiuix/bottomsheet/BottomSheetBehavior;)V
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

    iput-object p1, p0, Lcom/miui/combinepermission/grantpermission/a$d;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a$d;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {v0}, Lcom/miui/combinepermission/grantpermission/a;->e(Lcom/miui/combinepermission/grantpermission/a;)Lcom/miui/combinepermission/FullLinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/combinepermission/FullLinearLayout;->setExactlyMode(Z)V

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a$d;->a:Lcom/miui/combinepermission/grantpermission/a;

    invoke-static {v0}, Lcom/miui/combinepermission/grantpermission/a;->e(Lcom/miui/combinepermission/grantpermission/a;)Lcom/miui/combinepermission/FullLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
