.class Lne/c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lne/c$c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lne/c$c;


# direct methods
.method constructor <init>(Lne/c$c;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lne/c$c$a;->b:Lne/c$c;

    iput-object p2, p0, Lne/c$c$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lne/c$c$a;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lne/c$c$a;->b:Lne/c$c;

    iget-object p1, p1, Lne/c$c;->b:Lne/c;

    invoke-static {p1}, Lne/c;->e(Lne/c;)Lne/c$e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lne/c$c$a;->b:Lne/c$c;

    iget-object p1, p1, Lne/c$c;->b:Lne/c;

    invoke-static {p1}, Lne/c;->e(Lne/c;)Lne/c$e;

    move-result-object p1

    iget-object v0, p0, Lne/c$c$a;->b:Lne/c$c;

    iget-object v0, v0, Lne/c$c;->b:Lne/c;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lne/c$e;->a(Lne/c;I)V

    :cond_0
    iget-object p1, p0, Lne/c$c$a;->b:Lne/c$c;

    iget-object p1, p1, Lne/c$c;->b:Lne/c;

    invoke-virtual {p1}, Lne/c;->g()V

    return-void
.end method
