.class Lmiuix/nestedheader/widget/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfl/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/nestedheader/widget/a;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/nestedheader/widget/a;


# direct methods
.method constructor <init>(Lmiuix/nestedheader/widget/a;)V
    .locals 0

    iput-object p1, p0, Lmiuix/nestedheader/widget/a$a;->a:Lmiuix/nestedheader/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIZ)V
    .locals 0

    return-void
.end method

.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    iget-object p1, p0, Lmiuix/nestedheader/widget/a$a;->a:Lmiuix/nestedheader/widget/a;

    iget-boolean p2, p1, Lmiuix/nestedheader/widget/a;->o:Z

    if-eqz p2, :cond_0

    sub-int/2addr p3, p5

    invoke-static {p1, p3}, Lmiuix/nestedheader/widget/a;->c(Lmiuix/nestedheader/widget/a;I)I

    iget-object p1, p0, Lmiuix/nestedheader/widget/a$a;->a:Lmiuix/nestedheader/widget/a;

    invoke-static {p1}, Lmiuix/nestedheader/widget/a;->d(Lmiuix/nestedheader/widget/a;)I

    move-result p1

    iget-object p2, p0, Lmiuix/nestedheader/widget/a$a;->a:Lmiuix/nestedheader/widget/a;

    invoke-static {p2}, Lmiuix/nestedheader/widget/a;->e(Lmiuix/nestedheader/widget/a;)I

    move-result p2

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lmiuix/nestedheader/widget/a$a;->a:Lmiuix/nestedheader/widget/a;

    invoke-static {p1}, Lmiuix/nestedheader/widget/a;->b(Lmiuix/nestedheader/widget/a;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lmiuix/nestedheader/widget/a$a;->a:Lmiuix/nestedheader/widget/a;

    invoke-static {p1}, Lmiuix/nestedheader/widget/a;->b(Lmiuix/nestedheader/widget/a;)I

    move-result p2

    invoke-static {p1, p2}, Lmiuix/nestedheader/widget/a;->f(Lmiuix/nestedheader/widget/a;I)I

    move-result p2

    iput p2, p1, Lmiuix/nestedheader/widget/a;->r:I

    iget-object p1, p0, Lmiuix/nestedheader/widget/a$a;->a:Lmiuix/nestedheader/widget/a;

    invoke-static {p1}, Lmiuix/nestedheader/widget/a;->g(Lmiuix/nestedheader/widget/a;)V

    :cond_0
    return-void
.end method
