.class Lcom/miui/combinepermission/grantpermission/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/combinepermission/grantpermission/a;->i()Lmiuix/bottomsheet/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/bottomsheet/BottomSheetBehavior;

.field final synthetic b:Lcom/miui/combinepermission/grantpermission/a;


# direct methods
.method constructor <init>(Lcom/miui/combinepermission/grantpermission/a;Lmiuix/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/combinepermission/grantpermission/a$c;->b:Lcom/miui/combinepermission/grantpermission/a;

    iput-object p2, p0, Lcom/miui/combinepermission/grantpermission/a$c;->a:Lmiuix/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p1, "BottomSheetModalController"

    const-string p2, "onLayoutChange"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a$c;->b:Lcom/miui/combinepermission/grantpermission/a;

    iget-object p2, p0, Lcom/miui/combinepermission/grantpermission/a$c;->a:Lmiuix/bottomsheet/BottomSheetBehavior;

    invoke-static {p1, p2}, Lcom/miui/combinepermission/grantpermission/a;->f(Lcom/miui/combinepermission/grantpermission/a;Lmiuix/bottomsheet/BottomSheetBehavior;)V

    return-void
.end method
