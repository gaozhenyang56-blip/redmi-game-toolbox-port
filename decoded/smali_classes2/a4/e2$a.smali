.class La4/e2$a;
.super La4/e2$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La4/e2;->I2(Landroid/content/Context;ILa4/e2$f;)V
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

    iput-object p1, p0, La4/e2$a;->a:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, La4/e2$h;-><init>(La4/e2$a;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    iget-object p1, p0, La4/e2$a;->a:Landroid/widget/TextView;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const p2, 0x7f1210dc

    invoke-static {p2, p3}, La4/e2;->y0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
