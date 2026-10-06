.class public Lkc/f$b;
.super Lkc/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkc/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lkc/f$a;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Lpc/a;)V
    .locals 1

    invoke-super {p0, p1}, Lkc/f$a;->a(Lpc/a;)V

    instance-of v0, p1, Lpc/b;

    if-eqz v0, :cond_0

    check-cast p1, Lpc/b;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object p1, p1, Lpc/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
