.class public final synthetic Ly5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ly5/c;

.field public final synthetic b:Lg8/a;

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Ly5/c;Lg8/a;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly5/b;->a:Ly5/c;

    iput-object p2, p0, Ly5/b;->b:Lg8/a;

    iput-object p3, p0, Ly5/b;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ly5/b;->a:Ly5/c;

    iget-object v1, p0, Ly5/b;->b:Lg8/a;

    iget-object v2, p0, Ly5/b;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1, v2}, Ly5/c;->k(Ly5/c;Lg8/a;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
