.class Lmiuix/springback/trigger/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/springback/trigger/a$d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/springback/trigger/c;


# direct methods
.method constructor <init>(Lmiuix/springback/trigger/c;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/c$d;->a:Lmiuix/springback/trigger/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object p1, p0, Lmiuix/springback/trigger/c$d;->a:Lmiuix/springback/trigger/c;

    invoke-virtual {p1}, Lmiuix/springback/trigger/b;->W()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0}, Lmiuix/springback/trigger/c;->b1(Lmiuix/springback/trigger/c;Landroid/view/View;)V

    iget-object p1, p0, Lmiuix/springback/trigger/c$d;->a:Lmiuix/springback/trigger/c;

    invoke-virtual {p1}, Lmiuix/springback/trigger/b;->b0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/c$d;->a:Lmiuix/springback/trigger/c;

    invoke-static {p1}, Lmiuix/springback/trigger/c;->V0(Lmiuix/springback/trigger/c;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/c$d;->a:Lmiuix/springback/trigger/c;

    invoke-static {p1}, Lmiuix/springback/trigger/c;->W0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d()F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method public f(I)V
    .locals 0

    return-void
.end method

.method public g(I)V
    .locals 0

    return-void
.end method

.method public h(I)V
    .locals 1

    iget-object p1, p0, Lmiuix/springback/trigger/c$d;->a:Lmiuix/springback/trigger/c;

    invoke-virtual {p1}, Lmiuix/springback/trigger/b;->W()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public i(I)V
    .locals 0

    return-void
.end method

.method public j(I)V
    .locals 0

    return-void
.end method
