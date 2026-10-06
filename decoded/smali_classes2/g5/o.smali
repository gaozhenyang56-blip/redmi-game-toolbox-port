.class public final synthetic Lg5/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/p;

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView$c0;

.field public final synthetic c:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lg5/p;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/o;->a:Lg5/p;

    iput-object p2, p0, Lg5/o;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    iput-object p3, p0, Lg5/o;->c:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg5/o;->a:Lg5/p;

    iget-object v1, p0, Lg5/o;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    iget-object v2, p0, Lg5/o;->c:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lg5/p;->i(Lg5/p;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/content/Intent;)V

    return-void
.end method
