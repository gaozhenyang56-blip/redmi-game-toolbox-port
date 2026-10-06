.class public final synthetic Lyc/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$c0;

.field public final synthetic b:Lyc/j;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$c0;Lyc/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc/g;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    iput-object p2, p0, Lyc/g;->b:Lyc/j;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lyc/g;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    iget-object v1, p0, Lyc/g;->b:Lyc/j;

    invoke-static {v0, v1, p1}, Lyc/j;->k(Landroidx/recyclerview/widget/RecyclerView$c0;Lyc/j;Landroid/view/View;)V

    return-void
.end method
