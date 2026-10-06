.class Ls8/x$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls8/x$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls8/x;->g(IZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Ls8/x;


# direct methods
.method constructor <init>(Ls8/x;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Ls8/x$b;->c:Ls8/x;

    iput p2, p0, Ls8/x$b;->a:I

    iput-object p3, p0, Ls8/x$b;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Ls8/x$b;->c:Ls8/x;

    invoke-static {v0}, Ls8/x;->d(Ls8/x;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Ls8/x$b;->a:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Ls8/x;->c(Ls8/x;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Ls8/x$b;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Ls8/x$b;->c:Ls8/x;

    invoke-virtual {v0, p0}, Ls8/x;->k(Ls8/x$c;)V

    return-void
.end method
