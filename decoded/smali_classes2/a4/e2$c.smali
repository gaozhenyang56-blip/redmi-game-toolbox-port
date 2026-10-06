.class La4/e2$c;
.super La4/e2$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La4/e2;->M2(Landroid/content/Context;[ILa4/e2$g;)V
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

    iput-object p1, p0, La4/e2$c;->a:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, La4/e2$h;-><init>(La4/e2$a;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p1, p0, La4/e2$c;->a:Landroid/widget/TextView;

    if-nez p2, :cond_0

    const p2, 0x7f0803ba

    goto :goto_0

    :cond_0
    const p2, 0x7f0803bb

    :goto_0
    invoke-static {p1, p2}, La4/e2;->z0(Landroid/widget/TextView;I)V

    return-void
.end method
