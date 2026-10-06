.class Lne/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lne/c;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lne/c;


# direct methods
.method constructor <init>(Lne/c;)V
    .locals 0

    iput-object p1, p0, Lne/c$b;->a:Lne/c;

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

    iget-object p1, p0, Lne/c$b;->a:Lne/c;

    invoke-static {p1, p3}, Lne/c;->c(Lne/c;I)I

    iget-object p1, p0, Lne/c$b;->a:Lne/c;

    invoke-static {p1}, Lne/c;->a(Lne/c;)Lne/c$d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lne/c$b;->a:Lne/c;

    invoke-static {p1}, Lne/c;->a(Lne/c;)Lne/c$d;

    move-result-object p1

    iget-object p2, p0, Lne/c$b;->a:Lne/c;

    invoke-interface {p1, p2, p3}, Lne/c$d;->a(Lne/c;I)V

    :cond_0
    iget-object p1, p0, Lne/c$b;->a:Lne/c;

    invoke-virtual {p1}, Lne/c;->g()V

    return-void
.end method
