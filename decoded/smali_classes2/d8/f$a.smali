.class Ld8/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld8/f;->c(Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld8/f;


# direct methods
.method constructor <init>(Ld8/f;)V
    .locals 0

    iput-object p1, p0, Ld8/f$a;->a:Ld8/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p4

    instance-of p4, p4, Ld8/f$c;

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Ld8/f$c;

    invoke-virtual {p1, p3}, Ld8/f$c;->b(I)Lh8/h;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lh8/h;->d()Z

    move-result p5

    if-eqz p5, :cond_1

    iget-object p5, p0, Ld8/f$a;->a:Ld8/f;

    invoke-static {p5}, Ld8/f;->b(Ld8/f;)Lh8/b$a;

    move-result-object p5

    if-eqz p5, :cond_1

    iget-object p5, p0, Ld8/f$a;->a:Ld8/f;

    invoke-static {p5}, Ld8/f;->b(Ld8/f;)Lh8/b$a;

    move-result-object p5

    invoke-interface {p5, p4, p2, p3}, Lh8/b$a;->b(Lh8/b;Landroid/view/View;I)V

    :cond_1
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method
