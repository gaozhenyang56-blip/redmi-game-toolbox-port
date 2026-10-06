.class Landroidx/core/view/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/l;

.field private b:Landroidx/lifecycle/r;


# direct methods
.method constructor <init>(Landroidx/lifecycle/l;Landroidx/lifecycle/r;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/o$a;->a:Landroidx/lifecycle/l;

    iput-object p2, p0, Landroidx/core/view/o$a;->b:Landroidx/lifecycle/r;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/u;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/o$a;->a:Landroidx/lifecycle/l;

    iget-object v1, p0, Landroidx/core/view/o$a;->b:Landroidx/lifecycle/r;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/u;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/view/o$a;->b:Landroidx/lifecycle/r;

    return-void
.end method
