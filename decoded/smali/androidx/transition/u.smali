.class Landroidx/transition/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lm/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/a<",
            "Landroid/view/View;",
            "Landroidx/transition/t;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/e<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lm/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/a;

    invoke-direct {v0}, Lm/a;-><init>()V

    iput-object v0, p0, Landroidx/transition/u;->a:Lm/a;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/transition/u;->b:Landroid/util/SparseArray;

    new-instance v0, Lm/e;

    invoke-direct {v0}, Lm/e;-><init>()V

    iput-object v0, p0, Landroidx/transition/u;->c:Lm/e;

    new-instance v0, Lm/a;

    invoke-direct {v0}, Lm/a;-><init>()V

    iput-object v0, p0, Landroidx/transition/u;->d:Lm/a;

    return-void
.end method
