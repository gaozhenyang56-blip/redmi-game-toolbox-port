.class La4/e2$e;
.super La4/e2$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La4/e2;->l2(Landroid/content/Context;[ILa4/e2$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, La4/e2$e;->a:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, La4/e2$h;-><init>(La4/e2$a;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    iget-object p1, p0, La4/e2$e;->a:Landroid/widget/TextView;

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Object;

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v0, p3

    const p2, 0x7f1210dc

    invoke-static {p2, v0}, La4/e2;->y0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
