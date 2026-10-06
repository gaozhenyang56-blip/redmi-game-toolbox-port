.class Lf5/e$c;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf5/e;->o(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf5/e;


# direct methods
.method constructor <init>(Lf5/e;)V
    .locals 0

    iput-object p1, p0, Lf5/e$c;->a:Lf5/e;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScrollStateChanged newState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DockAlphabetIndexer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lf5/e$c;->a:Lf5/e;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lf5/e;->h(Lf5/e;Z)Z

    iget-object p1, p0, Lf5/e$c;->a:Lf5/e;

    invoke-static {p1}, Lf5/e;->m(Lf5/e;)Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->F(I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lf5/e$c;->a:Lf5/e;

    invoke-static {p1}, Lf5/e;->m(Lf5/e;)Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->G(II)V

    return-void
.end method
