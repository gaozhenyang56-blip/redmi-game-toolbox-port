.class Lpl/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/j;->a(Landroid/view/View;Lpl/j$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/j$c;

.field final synthetic b:Lpl/j$d;


# direct methods
.method constructor <init>(Lpl/j$c;Lpl/j$d;)V
    .locals 0

    iput-object p1, p0, Lpl/j$a;->a:Lpl/j$c;

    iput-object p2, p0, Lpl/j$a;->b:Lpl/j$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    iget-object v0, p0, Lpl/j$a;->a:Lpl/j$c;

    new-instance v1, Lpl/j$d;

    iget-object v2, p0, Lpl/j$a;->b:Lpl/j$d;

    invoke-direct {v1, v2}, Lpl/j$d;-><init>(Lpl/j$d;)V

    invoke-interface {v0, p1, p2, v1}, Lpl/j$c;->a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lpl/j$d;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
