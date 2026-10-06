.class Lj3/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj3/c;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj3/c;


# direct methods
.method constructor <init>(Lj3/c;)V
    .locals 0

    iput-object p1, p0, Lj3/c$b;->a:Lj3/c;

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

    iget-object p1, p0, Lj3/c$b;->a:Lj3/c;

    invoke-static {p1, p3}, Lj3/c;->d(Lj3/c;I)I

    iget-object p1, p0, Lj3/c$b;->a:Lj3/c;

    invoke-static {p1}, Lj3/c;->a(Lj3/c;)Lj3/c$d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj3/c$b;->a:Lj3/c;

    invoke-static {p1}, Lj3/c;->a(Lj3/c;)Lj3/c$d;

    move-result-object p1

    iget-object p2, p0, Lj3/c$b;->a:Lj3/c;

    invoke-interface {p1, p2, p3}, Lj3/c$d;->a(Lj3/c;I)V

    :cond_0
    iget-object p1, p0, Lj3/c$b;->a:Lj3/c;

    invoke-virtual {p1}, Lj3/c;->h()V

    return-void
.end method
