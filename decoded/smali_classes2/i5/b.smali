.class public final synthetic Li5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Li5/c;

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView$c0;


# direct methods
.method public synthetic constructor <init>(Li5/c;Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li5/b;->a:Li5/c;

    iput-object p2, p0, Li5/b;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Li5/b;->a:Li5/c;

    iget-object v1, p0, Li5/b;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-static {v0, v1}, Li5/c;->c(Li5/c;Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method
