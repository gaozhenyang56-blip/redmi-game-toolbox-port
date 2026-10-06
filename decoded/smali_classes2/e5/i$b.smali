.class Le5/i$b;
.super Lmiuix/animation/listener/TransitionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le5/i;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Le5/i;


# direct methods
.method constructor <init>(Le5/i;II)V
    .locals 0

    iput-object p1, p0, Le5/i$b;->c:Le5/i;

    iput p2, p0, Le5/i$b;->a:I

    iput p3, p0, Le5/i$b;->b:I

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    iget p1, p0, Le5/i$b;->a:I

    iget v0, p0, Le5/i$b;->b:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Le5/i$b;->c:Le5/i;

    invoke-static {p1}, Le5/i;->l(Le5/i;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Le5/i$b;->c:Le5/i;

    invoke-static {v0}, Le5/i;->k(Le5/i;)Le5/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Le5/i$b;->c:Le5/i;

    invoke-static {p1}, Le5/i;->l(Le5/i;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Le5/i$b;->c:Le5/i;

    invoke-static {v0}, Le5/i;->m(Le5/i;)Le5/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Le5/i$b;->c:Le5/i;

    invoke-static {p1}, Le5/i;->n(Le5/i;)V

    :cond_0
    return-void
.end method
