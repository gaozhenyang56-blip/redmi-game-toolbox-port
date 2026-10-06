.class Lrd/j$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrd/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lhe/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:[Lrd/j$c;

.field c:I

.field final synthetic d:Lrd/j;


# direct methods
.method constructor <init>(Lrd/j;Landroid/content/Context;[Lrd/j$c;I)V
    .locals 0

    iput-object p1, p0, Lrd/j$b;->d:Lrd/j;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lrd/j$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lrd/j$b;->b:[Lrd/j$c;

    iput p4, p0, Lrd/j$b;->c:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lhe/a;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lrd/j$b;->a:Landroid/content/Context;

    invoke-static {p1}, Lhe/b;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhe/a;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget v0, p0, Lrd/j$b;->c:I

    iget-object v1, p0, Lrd/j$b;->d:Lrd/j;

    invoke-static {v1}, Lrd/j;->f(Lrd/j;)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lrd/j$b;->d:Lrd/j;

    iget-object v1, p0, Lrd/j$b;->b:[Lrd/j$c;

    iget-object v2, p0, Lrd/j$b;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1}, Lrd/j;->g(Lrd/j;[Lrd/j$c;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lrd/j$b;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lrd/j$b;->b(Ljava/util/List;)V

    return-void
.end method
