.class public final synthetic Lg5/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/n;

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView$c0;


# direct methods
.method public synthetic constructor <init>(Lg5/n;Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/m;->a:Lg5/n;

    iput-object p2, p0, Lg5/m;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg5/m;->a:Lg5/n;

    iget-object v1, p0, Lg5/m;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-static {v0, v1}, Lg5/n;->c(Lg5/n;Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method
