.class Ll8/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll8/c;->i(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[F

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(I[FLandroid/view/View;)V
    .locals 0

    iput p1, p0, Ll8/c$b;->a:I

    iput-object p2, p0, Ll8/c$b;->b:[F

    iput-object p3, p0, Ll8/c$b;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Ll8/c$b;->a:I

    int-to-float v0, v0

    iget-object v1, p0, Ll8/c$b;->b:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Ll8/c$b;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Ll8/c$b;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
