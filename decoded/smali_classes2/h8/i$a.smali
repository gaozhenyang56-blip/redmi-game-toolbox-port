.class Lh8/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh8/i;->k(ILandroid/view/View;Lh8/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld8/m$b;

.field final synthetic b:Lh8/i;


# direct methods
.method constructor <init>(Lh8/i;Ld8/m$b;)V
    .locals 0

    iput-object p1, p0, Lh8/i$a;->b:Lh8/i;

    iput-object p2, p0, Lh8/i$a;->a:Ld8/m$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    iget-object p3, p0, Lh8/i$a;->a:Ld8/m$b;

    iget-object p3, p3, Ld8/m$b;->c:Lcom/miui/gamebooster/videobox/view/VBIndicatorView;

    invoke-virtual {p3, p1, p2}, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->a(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
